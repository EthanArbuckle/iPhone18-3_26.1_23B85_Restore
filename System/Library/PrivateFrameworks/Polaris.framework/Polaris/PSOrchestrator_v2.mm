@interface PSOrchestrator_v2
- (PSOrchestrator_v2)initWithQueue:(id)queue withBuilder:(id)builder withGSTManager:(id)manager;
- (id)applyPolicyConstraints:(id)constraints withDesiredStride:(id)stride;
- (id)getDefaultResourceFrequency:(id)frequency;
- (unint64_t)offsetForGraph:(id)graph withFrequency:(unint64_t)frequency;
- (void)addedGraphs:(id)graphs removedGraphs:(id)removedGraphs;
- (void)convertGraphStrideToFrequency:(id)frequency;
- (void)dealloc;
- (void)dumpStateToXPCDictionary:(id)dictionary;
- (void)evaluateAllPolicies;
- (void)execSessionRemoved:(id)removed;
- (void)frameIdUpdate:(id)update frameId:(id)id;
- (void)frameIdUpdateWithVirtualStride:(id)stride frameId:(id)id;
- (void)producibleStridesHaveChanged:(id)changed;
- (void)pulseRateWillChangeForSyncID:(unint64_t)d atFrameID:(unint64_t)iD frequency:(unint64_t)frequency increment:(unint64_t)increment msgFrameNumber:(unint64_t)number;
- (void)refreshState;
- (void)resolvedDomainForGraphs:(id)graphs;
- (void)resourceStateUpdate:(id)update;
- (void)scheduleLivenessResetForFrameID:(unint64_t)d forTargetStride:(unint64_t)stride forGraphID:(id)iD;
- (void)setMSGState:(id)state withMode:(id)mode startingframeID:(id)d;
- (void)setPolicies:(unsigned __int8)policies accessoryTrackingActive:(BOOL)active;
- (void)setResourceStridesForGraph:(id)graph;
- (void)setupSupportedCadences:(id)cadences;
- (void)setupSupportedStridesForLocalReplay:(id)replay;
- (void)updateGraphDesiredState;
- (void)updateGraphTargetState:(id)state fromPolicy:(id)policy;
- (void)updateResourceDesiredState;
@end

@implementation PSOrchestrator_v2

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
        graphState = [(PSOrchestrator_v2 *)self graphState];
        v12 = [graphState objectForKeyedSubscript:v9];
        [v12 setDomain:v10];
      }

      v6 = [graphsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  [(PSOrchestrator_v2 *)self updateGraphDesiredState];
}

- (void)frameIdUpdateWithVirtualStride:(id)stride frameId:(id)id
{
  obj = stride;
  idCopy = id;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v6 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v27;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v26 + 1) + 8 * i);
        resourceState = [(PSOrchestrator_v2 *)self resourceState];
        resourceKey = [v10 resourceKey];
        v13 = [resourceState objectForKeyedSubscript:resourceKey];

        systemPulseRate = [(PSOrchestrator_v2 *)self systemPulseRate];
        unsignedLongLongValue = [systemPulseRate unsignedLongLongValue];
        stride = [v10 stride];
        v17 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", unsignedLongLongValue / [stride unsignedLongLongValue]);
        [v13 setProviderFrequency:v17];

        providerFrequency = [v13 providerFrequency];
        [v13 setRequestedFrequencyToProvider:providerFrequency];

        strideChangeFrameID = [v13 strideChangeFrameID];
        unsignedLongLongValue2 = [strideChangeFrameID unsignedLongLongValue];

        unsignedLongLongValue3 = [idCopy unsignedLongLongValue];
        if (unsignedLongLongValue2 <= unsignedLongLongValue3)
        {
          v22 = unsignedLongLongValue3;
        }

        else
        {
          v22 = unsignedLongLongValue2;
        }

        v23 = [NSNumber numberWithUnsignedLongLong:v22];
        [v13 setStrideChangeFrameID:v23];
      }

      v7 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v7);
  }

  [(PSOrchestrator_v2 *)self updateGraphDesiredState];
}

- (void)frameIdUpdate:(id)update frameId:(id)id
{
  updateCopy = update;
  idCopy = id;
  if ([(PSOrchestrator_v2 *)self isSessionForLocalReplay])
  {
    [(PSOrchestrator_v2 *)self frameIdUpdateWithVirtualStride:updateCopy frameId:idCopy];
  }

  else
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v24 = updateCopy;
    obj = updateCopy;
    v27 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v27)
    {
      v26 = *v29;
      do
      {
        for (i = 0; i != v27; i = i + 1)
        {
          if (*v29 != v26)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v28 + 1) + 8 * i);
          resourceState = [(PSOrchestrator_v2 *)self resourceState];
          resourceKey = [v9 resourceKey];
          v12 = [resourceState objectForKeyedSubscript:resourceKey];

          mSGMode = [(PSOrchestrator_v2 *)self MSGMode];
          baseMSGSyncID = [v12 baseMSGSyncID];
          v15 = [mSGMode objectForKeyedSubscript:baseMSGSyncID];
          unsignedLongLongValue = [v15 unsignedLongLongValue];
          stride = [v9 stride];
          v18 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", unsignedLongLongValue / [stride unsignedLongLongValue]);
          [v12 setProviderFrequency:v18];

          strideChangeFrameID = [v12 strideChangeFrameID];
          unsignedLongLongValue2 = [strideChangeFrameID unsignedLongLongValue];

          unsignedLongLongValue3 = [idCopy unsignedLongLongValue];
          if (unsignedLongLongValue2 <= unsignedLongLongValue3)
          {
            v22 = unsignedLongLongValue3;
          }

          else
          {
            v22 = unsignedLongLongValue2;
          }

          v23 = [NSNumber numberWithUnsignedLongLong:v22];
          [v12 setStrideChangeFrameID:v23];
        }

        v27 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v27);
    }

    [(PSOrchestrator_v2 *)self refreshState];
    updateCopy = v24;
  }
}

- (void)producibleStridesHaveChanged:(id)changed
{
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = changed;
  v39 = [obj countByEnumeratingWithState:&v49 objects:v55 count:16];
  if (v39)
  {
    v37 = *v50;
    do
    {
      for (i = 0; i != v39; i = i + 1)
      {
        if (*v50 != v37)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v49 + 1) + 8 * i);
        resourceState = [(PSOrchestrator_v2 *)self resourceState];
        resourceKey = [v4 resourceKey];
        v7 = [resourceState objectForKeyedSubscript:resourceKey];

        strides = [v4 strides];
        v9 = [v7 setupProducibleFrequencies:strides];
        [v7 setProducibleFrequencies:v9];

        producibleFrequencies = [v7 producibleFrequencies];
        mSGMode = [(PSOrchestrator_v2 *)self MSGMode];
        baseMSGSyncID = [v7 baseMSGSyncID];
        v13 = [mSGMode objectForKeyedSubscript:baseMSGSyncID];
        v14 = [producibleFrequencies objectForKeyedSubscript:v13];

        providerFrequency = [v7 providerFrequency];
        if ([v14 containsObject:providerFrequency])
        {
          requestedFrequencyToProvider = [v7 requestedFrequencyToProvider];
          v17 = [v14 containsObject:requestedFrequencyToProvider];

          if (v17)
          {
            goto LABEL_31;
          }
        }

        else
        {
        }

        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v40 = v14;
        v18 = v14;
        v19 = [v18 countByEnumeratingWithState:&v45 objects:v54 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v46;
          while (2)
          {
            for (j = 0; j != v20; j = j + 1)
            {
              if (*v46 != v21)
              {
                objc_enumerationMutation(v18);
              }

              v23 = *(*(&v45 + 1) + 8 * j);
              providerFrequency2 = [v7 providerFrequency];
              unsignedLongLongValue = [providerFrequency2 unsignedLongLongValue];
              unsignedLongLongValue2 = [v23 unsignedLongLongValue];

              if (unsignedLongLongValue >= unsignedLongLongValue2)
              {
                [v7 setProviderFrequency:v23];
                goto LABEL_20;
              }
            }

            v20 = [v18 countByEnumeratingWithState:&v45 objects:v54 count:16];
            if (v20)
            {
              continue;
            }

            break;
          }
        }

LABEL_20:

        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v27 = v18;
        v28 = [v27 countByEnumeratingWithState:&v41 objects:v53 count:16];
        if (v28)
        {
          v29 = v28;
          v30 = *v42;
          while (2)
          {
            for (k = 0; k != v29; k = k + 1)
            {
              if (*v42 != v30)
              {
                objc_enumerationMutation(v27);
              }

              v32 = *(*(&v41 + 1) + 8 * k);
              requestedFrequencyToProvider2 = [v7 requestedFrequencyToProvider];
              unsignedLongLongValue3 = [requestedFrequencyToProvider2 unsignedLongLongValue];
              unsignedLongLongValue4 = [v32 unsignedLongLongValue];

              if (unsignedLongLongValue3 >= unsignedLongLongValue4)
              {
                [v7 setRequestedFrequencyToProvider:v32];
                goto LABEL_30;
              }
            }

            v29 = [v27 countByEnumeratingWithState:&v41 objects:v53 count:16];
            if (v29)
            {
              continue;
            }

            break;
          }
        }

LABEL_30:

        v14 = v40;
LABEL_31:
      }

      v39 = [obj countByEnumeratingWithState:&v49 objects:v55 count:16];
    }

    while (v39);
  }

  [(PSOrchestrator_v2 *)self refreshState];
}

- (void)setupSupportedStridesForLocalReplay:(id)replay
{
  v4 = xpc_dictionary_get_value(replay, "resource_info_array");
  applier[0] = _NSConcreteStackBlock;
  applier[1] = 3221225472;
  applier[2] = sub_10000A23C;
  applier[3] = &unk_100028BF0;
  applier[4] = self;
  xpc_array_apply(v4, applier);
}

- (void)dumpStateToXPCDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  statisticsDelegate = [(PSOrchestrator_v2 *)self statisticsDelegate];
  statistics = [statisticsDelegate statistics];
  xpc_dictionary_set_value(dictionaryCopy, "orchestrator_statistics", statistics);
}

- (void)pulseRateWillChangeForSyncID:(unint64_t)d atFrameID:(unint64_t)iD frequency:(unint64_t)frequency increment:(unint64_t)increment msgFrameNumber:(unint64_t)number
{
  v13 = sub_100013BF4();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 134219008;
    dCopy = d;
    v21 = 2048;
    iDCopy = iD;
    v23 = 2048;
    frequencyCopy = frequency;
    v25 = 2048;
    incrementCopy = increment;
    v27 = 2048;
    numberCopy = number;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "PSMSG: PSOrchestrator_v2 received calibration update for syncID:%llu, atFrameID:%llu, frequency:%llu, increment:%llu msgFrameNumber:%llu", &v19, 0x34u);
  }

  systemPulseRate = [(PSOrchestrator_v2 *)self systemPulseRate];
  v15 = [systemPulseRate unsignedLongLongValue] / increment;

  v16 = [NSNumber numberWithUnsignedLongLong:d];
  v17 = [NSNumber numberWithUnsignedLongLong:v15];
  v18 = [NSNumber numberWithUnsignedLongLong:iD];
  [(PSOrchestrator_v2 *)self setMSGState:v16 withMode:v17 startingframeID:v18];
}

- (void)setupSupportedCadences:(id)cadences
{
  cadencesCopy = cadences;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v47 = [cadencesCopy countByEnumeratingWithState:&v49 objects:v53 count:16];
  if (v47)
  {
    v46 = *v50;
    do
    {
      v5 = 0;
      do
      {
        if (*v50 != v46)
        {
          objc_enumerationMutation(cadencesCopy);
        }

        v6 = *(*(&v49 + 1) + 8 * v5);
        resourceState = [(PSOrchestrator_v2 *)self resourceState];
        v8 = [resourceState objectForKeyedSubscript:v6];

        if (v8)
        {
          resourceState2 = [(PSOrchestrator_v2 *)self resourceState];
          v10 = [resourceState2 objectForKeyedSubscript:v6];
          v11 = [cadencesCopy objectForKeyedSubscript:v6];
          v12 = [v10 setupSupportedFrequencies:v11];
          resourceState3 = [(PSOrchestrator_v2 *)self resourceState];
          v14 = [resourceState3 objectForKeyedSubscript:v6];
          [v14 setSupportedFrequencies:v12];

          resourceState4 = [(PSOrchestrator_v2 *)self resourceState];
          v16 = [resourceState4 objectForKeyedSubscript:v6];
          resourceState6 = [cadencesCopy objectForKeyedSubscript:v6];
          v18 = [v16 setupDefaultFrequencies:resourceState6];
          resourceState5 = [(PSOrchestrator_v2 *)self resourceState];
          v20 = [resourceState5 objectForKeyedSubscript:v6];
          [v20 setDefaultFrequencies:v18];
        }

        else
        {
          v21 = [PSResourceState_v2 alloc];
          resourceState4 = [cadencesCopy objectForKeyedSubscript:v6];
          v16 = [(PSResourceState_v2 *)v21 init:v6 withConfig:resourceState4];
          resourceState6 = [(PSOrchestrator_v2 *)self resourceState];
          [resourceState6 setObject:v16 forKeyedSubscript:v6];
        }

        v48 = v5;

        v22 = [cadencesCopy objectForKeyedSubscript:v6];
        baseMSGSyncID = [v22 baseMSGSyncID];

        if (baseMSGSyncID)
        {
          mSGResources = [(PSOrchestrator_v2 *)self MSGResources];
          v25 = [cadencesCopy objectForKeyedSubscript:v6];
          baseMSGSyncID2 = [v25 baseMSGSyncID];
          v27 = [mSGResources objectForKeyedSubscript:baseMSGSyncID2];

          if (!v27)
          {
            v28 = objc_alloc_init(NSMutableArray);
            mSGResources2 = [(PSOrchestrator_v2 *)self MSGResources];
            v30 = [cadencesCopy objectForKeyedSubscript:v6];
            baseMSGSyncID3 = [v30 baseMSGSyncID];
            [mSGResources2 setObject:v28 forKeyedSubscript:baseMSGSyncID3];
          }

          mSGResources3 = [(PSOrchestrator_v2 *)self MSGResources];
          v33 = [cadencesCopy objectForKeyedSubscript:v6];
          baseMSGSyncID4 = [v33 baseMSGSyncID];
          v35 = [mSGResources3 objectForKey:baseMSGSyncID4];
          [v35 addObject:v6];
        }

        resourceState7 = [(PSOrchestrator_v2 *)self resourceState];
        v37 = [resourceState7 objectForKeyedSubscript:v6];
        v38 = [cadencesCopy objectForKeyedSubscript:v6];
        supportedCadences = [v38 supportedCadences];
        allKeys = [supportedCadences allKeys];
        v41 = [v37 setupProducibleFrequencies:allKeys];
        [(PSOrchestrator_v2 *)self resourceState];
        selfCopy = self;
        v44 = v43 = cadencesCopy;
        v45 = [v44 objectForKeyedSubscript:v6];
        [v45 setProducibleFrequencies:v41];

        cadencesCopy = v43;
        self = selfCopy;

        v5 = v48 + 1;
      }

      while (v47 != (v48 + 1));
      v47 = [cadencesCopy countByEnumeratingWithState:&v49 objects:v53 count:16];
    }

    while (v47);
  }
}

- (void)resourceStateUpdate:(id)update
{
  updateCopy = update;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [updateCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(updateCopy);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        resourceState = [(PSOrchestrator_v2 *)self resourceState];
        resourceName = [v9 resourceName];
        v12 = [resourceState objectForKeyedSubscript:resourceName];

        [v12 setState:{objc_msgSend(v9, "state")}];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [updateCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  [(PSOrchestrator_v2 *)self updateGraphDesiredState];
}

- (void)execSessionRemoved:(id)removed
{
  removedCopy = removed;
  builder = [(PSOrchestrator_v2 *)self builder];
  v6 = [builder graphsForExecSession:removedCopy];

  [(PSOrchestrator_v2 *)self addedGraphs:0 removedGraphs:v6];
  builder2 = [(PSOrchestrator_v2 *)self builder];
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
      v15 = "[PSOrchestrator_v2(PSSG) execSessionRemoved:]";
      v16 = 2112;
      v17 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s: builder removeGraphsWithIDs call failed with: %@", buf, 0x16u);
    }
  }

  gstManager = [(PSOrchestrator_v2 *)self gstManager];
  [gstManager removeGraphs:v6];

  [(PSOrchestrator_v2 *)self flushAddedRemovedGraphs];
}

- (void)setPolicies:(unsigned __int8)policies accessoryTrackingActive:(BOOL)active
{
  queue = [(PSOrchestrator_v2 *)self queue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000B530;
  v8[3] = &unk_100028C18;
  policiesCopy = policies;
  v8[4] = self;
  activeCopy = active;
  dispatch_sync(queue, v8);
}

- (id)getDefaultResourceFrequency:(id)frequency
{
  frequencyCopy = frequency;
  resourceState = [(PSOrchestrator_v2 *)self resourceState];
  v6 = [resourceState objectForKeyedSubscript:frequencyCopy];

  baseMSGSyncID = [v6 baseMSGSyncID];

  defaultFrequencies = [v6 defaultFrequencies];
  v9 = defaultFrequencies;
  if (baseMSGSyncID)
  {
    mSGMode = [(PSOrchestrator_v2 *)self MSGMode];
    baseMSGSyncID2 = [v6 baseMSGSyncID];
    v12 = [mSGMode objectForKeyedSubscript:baseMSGSyncID2];
    v13 = [v9 objectForKeyedSubscript:v12];
  }

  else
  {
    v13 = [defaultFrequencies objectForKeyedSubscript:&off_1000299D0];
  }

  return v13;
}

- (void)setResourceStridesForGraph:(id)graph
{
  graphCopy = graph;
  v5 = objc_alloc_init(NSMutableSet);
  isSessionForLocalReplay = [(PSOrchestrator_v2 *)self isSessionForLocalReplay];
  builder = [(PSOrchestrator_v2 *)self builder];
  v8 = builder;
  if (isSessionForLocalReplay)
  {
    v9 = [builder inputResourcesForGraph:graphCopy];

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v36 objects:v41 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v37;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v37 != v13)
          {
            objc_enumerationMutation(v10);
          }

          name = [*(*(&v36 + 1) + 8 * i) name];
          [v5 addObject:name];
        }

        v12 = [v10 countByEnumeratingWithState:&v36 objects:v41 count:16];
      }

      while (v12);
    }
  }

  else
  {
    v16 = [builder resourcesForGraph:graphCopy];
    v17 = [v16 mutableCopy];

    v5 = v17;
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v18 = v5;
  v19 = [v18 countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v33;
    do
    {
      for (j = 0; j != v20; j = j + 1)
      {
        if (*v33 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v32 + 1) + 8 * j);
        builder2 = [(PSOrchestrator_v2 *)self builder];
        v25 = [builder2 isWaitInput:v23 forGraph:graphCopy];

        if (v25)
        {
          graphState = [(PSOrchestrator_v2 *)self graphState];
          v27 = [graphState objectForKeyedSubscript:graphCopy];
          targetFrequency = [v27 targetFrequency];
        }

        else
        {
          targetFrequency = [(PSOrchestrator_v2 *)self getDefaultResourceFrequency:v23];
        }

        resourceState = [(PSOrchestrator_v2 *)self resourceState];
        v30 = [resourceState objectForKeyedSubscript:v23];
        consumersForFrequency = [v30 consumersForFrequency];
        [consumersForFrequency setObject:targetFrequency forKeyedSubscript:graphCopy];
      }

      v20 = [v18 countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v20);
  }
}

- (void)updateGraphTargetState:(id)state fromPolicy:(id)policy
{
  stateCopy = state;
  policyCopy = policy;
  graphState = [(PSOrchestrator_v2 *)self graphState];
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
              sub_1000178A4(&v48);
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

- (void)convertGraphStrideToFrequency:(id)frequency
{
  frequencyCopy = frequency;
  graphState = [(PSOrchestrator_v2 *)self graphState];
  v6 = [graphState objectForKeyedSubscript:frequencyCopy];
  targetStride = [v6 targetStride];
  unsignedLongLongValue = [targetStride unsignedLongLongValue];

  if (0xAAAAAAAAAAAAAAABLL * unsignedLongLongValue < 0x5555555555555556)
  {
    graphState2 = [(PSOrchestrator_v2 *)self graphState];
    v28 = [graphState2 objectForKeyedSubscript:frequencyCopy];
    targetStride2 = [v28 targetStride];
    v30 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", 0x5A / [targetStride2 unsignedLongLongValue]);
    graphState3 = [(PSOrchestrator_v2 *)self graphState];
    v32 = [graphState3 objectForKeyedSubscript:frequencyCopy];
    [v32 setTargetFrequency:v30];
  }

  else
  {
    builder = [(PSOrchestrator_v2 *)self builder];
    graphState2 = [builder rootResourcesForGraph:frequencyCopy];

    if ([graphState2 count])
    {
      v11 = objc_alloc_init(NSMutableSet);
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v40 = graphState2;
      v12 = graphState2;
      v13 = [v12 countByEnumeratingWithState:&v41 objects:v49 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v42;
        do
        {
          v16 = 0;
          do
          {
            if (*v42 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v41 + 1) + 8 * v16);
            resourceState = [(PSOrchestrator_v2 *)self resourceState];
            name = [v17 name];
            v20 = [resourceState objectForKeyedSubscript:name];

            baseMSGSyncID = [v20 baseMSGSyncID];

            if (baseMSGSyncID)
            {
              baseMSGSyncID2 = [v20 baseMSGSyncID];
              [v11 addObject:baseMSGSyncID2];
            }

            v16 = v16 + 1;
          }

          while (v14 != v16);
          v14 = [v12 countByEnumeratingWithState:&v41 objects:v49 count:16];
        }

        while (v14);
      }

      if ([v11 count] >= 2)
      {
        v23 = [(PSOrchestrator_v2 *)self log];
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          name2 = [frequencyCopy name];
          v45 = 138412546;
          v46 = name2;
          v47 = 2112;
          v48 = v11;
          _os_log_unreliable_impl();
        }
      }

      if ([v11 count] == 1)
      {
        mSGMode = [(PSOrchestrator_v2 *)self MSGMode];
        anyObject = [v11 anyObject];
        v27 = [mSGMode objectForKeyedSubscript:anyObject];
      }

      else
      {
        v27 = &off_1000299D0;
      }

      graphState2 = v40;
    }

    else
    {
      v27 = &off_1000299D0;
    }

    unsignedLongLongValue2 = [v27 unsignedLongLongValue];
    graphState4 = [(PSOrchestrator_v2 *)self graphState];
    v35 = [graphState4 objectForKeyedSubscript:frequencyCopy];
    targetStride3 = [v35 targetStride];
    v37 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", unsignedLongLongValue2 / [targetStride3 unsignedLongLongValue]);
    graphState5 = [(PSOrchestrator_v2 *)self graphState];
    v39 = [graphState5 objectForKeyedSubscript:frequencyCopy];
    [v39 setTargetFrequency:v37];
  }
}

- (void)evaluateAllPolicies
{
  v60 = objc_alloc_init(NSMutableDictionary);
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  policyRequests = [(PSOrchestrator_v2 *)self policyRequests];
  v4 = [policyRequests countByEnumeratingWithState:&v74 objects:v81 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v75;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v75 != v6)
        {
          objc_enumerationMutation(policyRequests);
        }

        v8 = *(*(&v74 + 1) + 8 * i);
        policyRequests2 = [(PSOrchestrator_v2 *)self policyRequests];
        v10 = [policyRequests2 objectForKeyedSubscript:v8];

        [(PSOrchestrator_v2 *)self updateGraphTargetState:v60 fromPolicy:v10];
      }

      v5 = [policyRequests countByEnumeratingWithState:&v74 objects:v81 count:16];
    }

    while (v5);
  }

  graphState = [(PSOrchestrator_v2 *)self graphState];
  allKeys = [graphState allKeys];

  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v13 = allKeys;
  v14 = [v13 countByEnumeratingWithState:&v70 objects:v80 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v71;
    do
    {
      for (j = 0; j != v15; j = j + 1)
      {
        if (*v71 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v70 + 1) + 8 * j);
        graphState2 = [(PSOrchestrator_v2 *)self graphState];
        v20 = [graphState2 objectForKeyedSubscript:v18];
        [v20 setTargetStride:0];
      }

      v15 = [v13 countByEnumeratingWithState:&v70 objects:v80 count:16];
    }

    while (v15);
  }

  v51 = v13;

  builder = [(PSOrchestrator_v2 *)self builder];
  allStrideDependentGraphs = [builder allStrideDependentGraphs];

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  obj = allStrideDependentGraphs;
  v53 = [obj countByEnumeratingWithState:&v66 objects:v79 count:16];
  if (v53)
  {
    v52 = *v67;
    selfCopy = self;
    do
    {
      v23 = 0;
      do
      {
        if (*v67 != v52)
        {
          objc_enumerationMutation(obj);
        }

        v55 = v23;
        v24 = *(*(&v66 + 1) + 8 * v23);
        v25 = [v60 objectForKeyedSubscript:v24];
        graphState3 = [(PSOrchestrator_v2 *)self graphState];
        v27 = [graphState3 objectForKeyedSubscript:v24];
        requestedStride = [v27 requestedStride];
        v29 = [(PSOrchestrator_v2 *)self applyPolicyConstraints:v25 withDesiredStride:requestedStride];
        graphState4 = [(PSOrchestrator_v2 *)selfCopy graphState];
        v31 = [graphState4 objectForKeyedSubscript:v24];
        [v31 setTargetStride:v29];

        self = selfCopy;
        [(PSOrchestrator_v2 *)selfCopy convertGraphStrideToFrequency:v24];
        [(PSOrchestrator_v2 *)selfCopy setResourceStridesForGraph:v24];
        v59 = v24;
        v32 = [obj objectForKeyedSubscript:v24];
        v62 = 0u;
        v63 = 0u;
        v64 = 0u;
        v65 = 0u;
        v56 = v32;
        v61 = [v32 countByEnumeratingWithState:&v62 objects:v78 count:16];
        if (v61)
        {
          v58 = *v63;
          do
          {
            for (k = 0; k != v61; k = k + 1)
            {
              if (*v63 != v58)
              {
                objc_enumerationMutation(v56);
              }

              v34 = *(*(&v62 + 1) + 8 * k);
              graphState5 = [(PSOrchestrator_v2 *)self graphState];
              v36 = [graphState5 objectForKeyedSubscript:v59];
              targetStride = [v36 targetStride];
              unsignedIntegerValue = [targetStride unsignedIntegerValue];

              graphState6 = [(PSOrchestrator_v2 *)self graphState];
              v40 = [graphState6 objectForKeyedSubscript:v34];
              targetStride2 = [v40 targetStride];
              if (targetStride2)
              {
                graphState7 = [(PSOrchestrator_v2 *)self graphState];
                v43 = [graphState7 objectForKeyedSubscript:v34];
                targetStride3 = [v43 targetStride];
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

              v46 = [v60 objectForKeyedSubscript:v34];
              v47 = [NSNumber numberWithUnsignedInteger:unsignedIntegerValue2];
              v48 = [(PSOrchestrator_v2 *)self applyPolicyConstraints:v46 withDesiredStride:v47];
              graphState8 = [(PSOrchestrator_v2 *)self graphState];
              v50 = [graphState8 objectForKeyedSubscript:v34];
              [v50 setTargetStride:v48];

              [(PSOrchestrator_v2 *)self convertGraphStrideToFrequency:v34];
              [(PSOrchestrator_v2 *)self setResourceStridesForGraph:v34];
            }

            v61 = [v56 countByEnumeratingWithState:&v62 objects:v78 count:16];
          }

          while (v61);
        }

        v23 = v55 + 1;
      }

      while ((v55 + 1) != v53);
      v53 = [obj countByEnumeratingWithState:&v66 objects:v79 count:16];
    }

    while (v53);
  }
}

- (PSOrchestrator_v2)initWithQueue:(id)queue withBuilder:(id)builder withGSTManager:(id)manager
{
  managerCopy = manager;
  builderCopy = builder;
  queueCopy = queue;
  v11 = +[PLSSettings currentSettings];
  v12 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v11 systemPulseRate]);
  v13 = [(PSOrchestrator_v2 *)self initWithQueue:queueCopy withBuilder:builderCopy withGSTManager:managerCopy isSessionForLocalReplay:0 withSystemPulseRate:v12];

  return v13;
}

- (void)setMSGState:(id)state withMode:(id)mode startingframeID:(id)d
{
  stateCopy = state;
  modeCopy = mode;
  dCopy = d;
  mSGMode = [(PSOrchestrator_v2 *)self MSGMode];
  v27 = modeCopy;
  [mSGMode setObject:modeCopy forKeyedSubscript:stateCopy];

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  mSGResources = [(PSOrchestrator_v2 *)self MSGResources];
  v28 = stateCopy;
  v12 = [mSGResources objectForKeyedSubscript:stateCopy];

  obj = v12;
  v13 = [v12 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v32;
    do
    {
      v16 = 0;
      do
      {
        if (*v32 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v31 + 1) + 8 * v16);
        resourceState = [(PSOrchestrator_v2 *)self resourceState];
        v19 = [resourceState objectForKeyedSubscript:v17];
        strideChangeFrameID = [v19 strideChangeFrameID];
        unsignedLongLongValue = [strideChangeFrameID unsignedLongLongValue];

        unsignedLongLongValue2 = [dCopy unsignedLongLongValue];
        if (unsignedLongLongValue <= unsignedLongLongValue2 - 1)
        {
          v23 = unsignedLongLongValue2 - 1;
        }

        else
        {
          v23 = unsignedLongLongValue;
        }

        v24 = [NSNumber numberWithUnsignedLongLong:v23];
        resourceState2 = [(PSOrchestrator_v2 *)self resourceState];
        v26 = [resourceState2 objectForKeyedSubscript:v17];
        [v26 setStrideChangeFrameID:v24];

        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v14);
  }

  [(PSOrchestrator_v2 *)self refreshState];
}

- (void)addedGraphs:(id)graphs removedGraphs:(id)removedGraphs
{
  graphsCopy = graphs;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = removedGraphs;
  v35 = [obj countByEnumeratingWithState:&v44 objects:v50 count:16];
  if (v35)
  {
    v34 = *v45;
    do
    {
      v6 = 0;
      do
      {
        if (*v45 != v34)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v44 + 1) + 8 * v6);
        builder = [(PSOrchestrator_v2 *)self builder];
        v9 = [builder resourcesForGraph:v7];

        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v10 = v9;
        v11 = [v10 countByEnumeratingWithState:&v40 objects:v49 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v41;
          do
          {
            v14 = 0;
            do
            {
              if (*v41 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v40 + 1) + 8 * v14);
              resourceState = [(PSOrchestrator_v2 *)self resourceState];
              v17 = [resourceState objectForKeyedSubscript:v15];
              consumersForFrequency = [v17 consumersForFrequency];
              [consumersForFrequency removeObjectForKey:v7];

              v14 = v14 + 1;
            }

            while (v12 != v14);
            v12 = [v10 countByEnumeratingWithState:&v40 objects:v49 count:16];
          }

          while (v12);
        }

        graphState = [(PSOrchestrator_v2 *)self graphState];
        [graphState removeObjectForKey:v7];

        v6 = v6 + 1;
      }

      while (v6 != v35);
      v35 = [obj countByEnumeratingWithState:&v44 objects:v50 count:16];
    }

    while (v35);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v20 = graphsCopy;
  v21 = [v20 countByEnumeratingWithState:&v36 objects:v48 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v37;
    do
    {
      v24 = 0;
      do
      {
        if (*v37 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v36 + 1) + 8 * v24);
        v26 = objc_alloc_init(PSGraphState_v2);
        name = [v25 name];
        [(PSGraphState_v2 *)v26 setGraphName:name];

        session = [v25 session];
        [(PSGraphState_v2 *)v26 setSessionName:session];

        v29 = [v20 objectForKey:v25];
        [(PSGraphState_v2 *)v26 setRequestedStride:v29];

        name2 = [v25 name];
        -[PSGraphState_v2 setIsPessimistic:](v26, "setIsPessimistic:", [name2 isEqualToString:@"hands"]);

        graphState2 = [(PSOrchestrator_v2 *)self graphState];
        [graphState2 setObject:v26 forKeyedSubscript:v25];

        v24 = v24 + 1;
      }

      while (v22 != v24);
      v22 = [v20 countByEnumeratingWithState:&v36 objects:v48 count:16];
    }

    while (v22);
  }
}

- (void)updateResourceDesiredState
{
  v45 = objc_alloc_init(NSMutableArray);
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = [(PSOrchestrator_v2 *)self resourceState];
  v48 = [obj countByEnumeratingWithState:&v49 objects:v57 count:16];
  if (v48)
  {
    v4 = *v50;
    *&v3 = 138412290;
    v44 = v3;
    do
    {
      for (i = 0; i != v48; i = i + 1)
      {
        if (*v50 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v49 + 1) + 8 * i);
        resourceState = [(PSOrchestrator_v2 *)self resourceState];
        v8 = [resourceState objectForKeyedSubscript:v6];

        baseMSGSyncID = [v8 baseMSGSyncID];

        if (baseMSGSyncID)
        {
          mSGMode = [(PSOrchestrator_v2 *)self MSGMode];
          baseMSGSyncID2 = [v8 baseMSGSyncID];
          v12 = [mSGMode objectForKeyedSubscript:baseMSGSyncID2];
        }

        else
        {
          v12 = 0;
        }

        v13 = [v8 computeDesiredFrequency:v12];
        if (!v13)
        {
          [v8 setRequestedFrequencyToProvider:&off_100029A00];
          [v8 setProviderFrequency:&off_100029A00];
          v21 = 0;
          goto LABEL_20;
        }

        if (!v12)
        {
          [v8 setRequestedFrequencyToProvider:v13];
          [v8 setProviderFrequency:v13];
          v21 = &off_100029A00;
          goto LABEL_20;
        }

        producibleFrequencies = [v8 producibleFrequencies];

        if (producibleFrequencies)
        {
          producibleFrequencies2 = [v8 producibleFrequencies];
          v16 = [producibleFrequencies2 objectForKeyedSubscript:v12];
          v17 = [v16 containsObject:v13];

          if (!v17)
          {
            goto LABEL_19;
          }

          [v8 setRequestedFrequencyToProvider:v13];
          guaranteedStrideChangeNotification = [v8 guaranteedStrideChangeNotification];
          v19 = [guaranteedStrideChangeNotification objectForKeyedSubscript:v13];
          v20 = [v19 isEqualToNumber:&off_100029A00];

          if ((v20 & 1) == 0)
          {
            goto LABEL_19;
          }
        }

        else
        {
          [v8 setRequestedFrequencyToProvider:v13];
        }

        [v8 setProviderFrequency:v13];
LABEL_19:
        v21 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v12 unsignedLongLongValue] / objc_msgSend(v13, "unsignedLongLongValue"));
LABEL_20:
        v22 = [(PSOrchestrator_v2 *)self log];
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v53 = 138412546;
          v54 = v6;
          v55 = 2112;
          v56 = v21;
          _os_log_unreliable_impl();
        }

        requestedStrideToProvider = [v8 requestedStrideToProvider];
        v24 = [v21 isEqual:requestedStrideToProvider];

        if ((v24 & 1) == 0)
        {
          v47 = v6;
          [v8 setRequestedStrideToProvider:v21];
          strideChangeFrameID = [v8 strideChangeFrameID];
          unsignedLongLongValue = [strideChangeFrameID unsignedLongLongValue];

          getNextMSGFrameID = [(PSOrchestrator_v2 *)self getNextMSGFrameID];
          if (unsignedLongLongValue <= getNextMSGFrameID)
          {
            v28 = getNextMSGFrameID;
          }

          else
          {
            v28 = unsignedLongLongValue;
          }

          v29 = [NSNumber numberWithUnsignedLongLong:v28];
          [v8 setStrideChangeFrameID:v29];

          v30 = [(PSOrchestrator_v2 *)self log];
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            strideChangeFrameID2 = [v8 strideChangeFrameID];
            v53 = v44;
            v54 = strideChangeFrameID2;
            _os_log_unreliable_impl();
          }

          v32 = objc_alloc_init(PSResourceDesiredState);
          resourceName = [v8 resourceName];
          [(PSResourceDesiredState *)v32 setResourceName:resourceName];

          [(PSResourceDesiredState *)v32 setDesiredStride:v21];
          [(PSResourceDesiredState *)v32 setWantedByConsumers:v21 != 0];
          if (v21)
          {
            selfCopy = self;
            v35 = v4;
            desiredStride = [(PSResourceDesiredState *)v32 desiredStride];
            v37 = [desiredStride isEqualToNumber:&off_100029A00];

            v38 = selfCopy;
            v39 = [(PSOrchestrator_v2 *)selfCopy log];
            v40 = os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT);
            if (v37)
            {
              v4 = v35;
              if (v40)
              {
                v53 = v44;
                v54 = v47;
                _os_log_unreliable_impl();
              }
            }

            else
            {
              v4 = v35;
              if (v40)
              {
                desiredStride2 = [(PSResourceDesiredState *)v32 desiredStride];
                v53 = 138412546;
                v54 = desiredStride2;
                v55 = 2112;
                v56 = v47;
                _os_log_unreliable_impl();
              }
            }

            self = v38;
          }

          else
          {
            v39 = [(PSOrchestrator_v2 *)self log];
            if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
            {
              v53 = v44;
              v54 = v47;
              _os_log_unreliable_impl();
            }
          }

          [v45 addObject:v32];
        }
      }

      v48 = [obj countByEnumeratingWithState:&v49 objects:v57 count:16];
    }

    while (v48);
  }

  if (![(PSOrchestrator_v2 *)self isSessionForLocalReplay])
  {
    notifier = [(PSOrchestrator_v2 *)self notifier];

    if (notifier)
    {
      if ([v45 count])
      {
        notifier2 = [(PSOrchestrator_v2 *)self notifier];
        (notifier2)[2](notifier2, v45);
      }
    }
  }
}

- (void)refreshState
{
  statisticsDelegate = [(PSOrchestrator_v2 *)self statisticsDelegate];
  [statisticsDelegate willStartOrchestration];

  [(PSOrchestrator_v2 *)self evaluateAllPolicies];
  [(PSOrchestrator_v2 *)self updateResourceDesiredState];
  [(PSOrchestrator_v2 *)self updateGraphDesiredState];
  statisticsDelegate2 = [(PSOrchestrator_v2 *)self statisticsDelegate];
  [statisticsDelegate2 didEndOrchestration];
}

- (unint64_t)offsetForGraph:(id)graph withFrequency:(unint64_t)frequency
{
  graphCopy = graph;
  graphState = [(PSOrchestrator_v2 *)self graphState];
  v8 = [graphState objectForKeyedSubscript:graphCopy];

  domain = [v8 domain];

  v10 = [domain isEqualToString:@"custom-dsjcam"];
  v11 = 0;
  if (frequency <= 0x1E && v10)
  {
    systemPulseRate = [(PSOrchestrator_v2 *)self systemPulseRate];
    v11 = ([systemPulseRate unsignedLongLongValue] / 0x2D) & 0x7FFFFFFFFFFFFFELL;
  }

  return v11;
}

- (void)updateGraphDesiredState
{
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  obj = [(PSOrchestrator_v2 *)self graphState];
  v62 = [obj countByEnumeratingWithState:&v74 objects:v90 count:16];
  if (v62)
  {
    v61 = *v75;
    *&v3 = 138413058;
    v57 = v3;
    do
    {
      for (i = 0; i != v62; i = i + 1)
      {
        if (*v75 != v61)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v74 + 1) + 8 * i);
        graphState = [(PSOrchestrator_v2 *)self graphState];
        v7 = [graphState objectForKeyedSubscript:v5];

        domain = [v7 domain];

        if (domain)
        {
          v64 = i;
          v63 = v5;
          v9 = [(PSBuilderProtocol *)self->_builder waitResourcesForGraph:v5 isSessionLocal:[(PSOrchestrator_v2 *)self isSessionForLocalReplay]];
          [v9 count];
          v70 = 0u;
          v71 = 0u;
          v72 = 0u;
          v73 = 0u;
          v65 = v9;
          v10 = [v65 countByEnumeratingWithState:&v70 objects:v89 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = *v71;
            v13 = -1;
            do
            {
              for (j = 0; j != v11; j = j + 1)
              {
                if (*v71 != v12)
                {
                  objc_enumerationMutation(v65);
                }

                v15 = *(*(&v70 + 1) + 8 * j);
                resourceState = [(PSOrchestrator_v2 *)self resourceState];
                v17 = [resourceState objectForKeyedSubscript:v15];

                if ([v17 state])
                {
                  if (![v7 isPessimistic])
                  {
                    goto LABEL_16;
                  }

                  guaranteedStrideChangeNotification = [v17 guaranteedStrideChangeNotification];
                  requestedFrequencyToProvider = [v17 requestedFrequencyToProvider];
                  v20 = [guaranteedStrideChangeNotification objectForKeyedSubscript:requestedFrequencyToProvider];

                  if (v20)
                  {
                    providerFrequency = [v17 providerFrequency];
                  }

                  else
                  {
LABEL_16:
                    providerFrequency = [v17 requestedFrequencyToProvider];
                  }

                  v22 = providerFrequency;
                }

                else
                {
                  v22 = &off_100029A00;
                }

                unsignedLongLongValue = [v22 unsignedLongLongValue];
                if (v13 >= unsignedLongLongValue)
                {
                  v13 = unsignedLongLongValue;
                }
              }

              v11 = [v65 countByEnumeratingWithState:&v70 objects:v89 count:16];
            }

            while (v11);
          }

          else
          {
            v13 = -1;
          }

          targetFrequency = [v7 targetFrequency];
          unsignedLongLongValue2 = [targetFrequency unsignedLongLongValue];

          if (unsignedLongLongValue2 >= v13)
          {
            v26 = v13;
          }

          else
          {
            v26 = unsignedLongLongValue2;
          }

          v27 = [(PSOrchestrator_v2 *)self log];
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
          {
            name = [v63 name];
            targetFrequency2 = [v7 targetFrequency];
            currentFrequency = [v7 currentFrequency];
            *buf = 138413314;
            v80 = name;
            v81 = 2048;
            v82 = v26;
            v83 = 2112;
            v84 = targetFrequency2;
            v85 = 2048;
            v86 = v13;
            v87 = 2112;
            v88 = currentFrequency;
            _os_log_debug_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "updateGraphDesiredState Graph %@ : target freq = %llu, graph target = %@, currentInput = %llu, currentFreq = %@", buf, 0x34u);
          }

          currentFrequency2 = [v7 currentFrequency];
          unsignedLongLongValue3 = [currentFrequency2 unsignedLongLongValue];

          i = v64;
          if (unsignedLongLongValue3 != v26)
          {
            systemPulseRate = [(PSOrchestrator_v2 *)self systemPulseRate];
            v31 = +[NSNumber numberWithUnsignedLong:](NSNumber, "numberWithUnsignedLong:", [systemPulseRate unsignedLongLongValue] / v26);

            if (!-[PSOrchestrator_v2 shouldSkipCadenceChangeForStride:](self, "shouldSkipCadenceChangeForStride:", [v31 unsignedLongLongValue]))
            {
              v58 = v31;
              v59 = v26;
              v68 = 0u;
              v69 = 0u;
              v66 = 0u;
              v67 = 0u;
              v32 = v65;
              v33 = [v32 countByEnumeratingWithState:&v66 objects:v78 count:16];
              if (v33)
              {
                v34 = v33;
                v35 = 0;
                v36 = *v67;
                do
                {
                  for (k = 0; k != v34; k = k + 1)
                  {
                    if (*v67 != v36)
                    {
                      objc_enumerationMutation(v32);
                    }

                    v38 = *(*(&v66 + 1) + 8 * k);
                    resourceState2 = [(PSOrchestrator_v2 *)self resourceState];
                    v40 = [resourceState2 objectForKeyedSubscript:v38];

                    strideChangeFrameID = [v40 strideChangeFrameID];
                    unsignedLongLongValue4 = [strideChangeFrameID unsignedLongLongValue];

                    if (v35 <= unsignedLongLongValue4)
                    {
                      v35 = unsignedLongLongValue4;
                    }
                  }

                  v34 = [v32 countByEnumeratingWithState:&v66 objects:v78 count:16];
                }

                while (v34);
              }

              else
              {
                v35 = 0;
              }

              frequencyChangeFrameID = [v7 frequencyChangeFrameID];
              unsignedLongLongValue5 = [frequencyChangeFrameID unsignedLongLongValue];

              if (v35 <= unsignedLongLongValue5)
              {
                v45 = unsignedLongLongValue5;
              }

              else
              {
                v45 = v35;
              }

              v46 = [(PSOrchestrator_v2 *)self log];
              if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
              {
                frequencyChangeFrameID2 = [v7 frequencyChangeFrameID];
                *buf = 138412546;
                v80 = frequencyChangeFrameID2;
                v81 = 2048;
                v82 = v35;
                _os_log_debug_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEBUG, "graph frameid is %@ and max of resource frameid is %llu", buf, 0x16u);
              }

              v47 = [(PSOrchestrator_v2 *)self offsetForGraph:v63 withFrequency:v59];
              v48 = [(PSOrchestrator_v2 *)self log];
              v31 = v58;
              if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
              {
                name2 = [v63 name];
                *buf = v57;
                v80 = name2;
                v81 = 2112;
                v82 = v58;
                v83 = 2048;
                v84 = v47;
                v85 = 2048;
                v86 = v45;
                _os_log_debug_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEBUG, "Graph GST %@: stride %@, offset %llu, frameID %llu", buf, 0x2Au);
              }

              v49 = -[PSGSTManagerProtocol changeCadenceAtOrAfterFrameId:frameID:stride:offset:](self->_gstManager, "changeCadenceAtOrAfterFrameId:frameID:stride:offset:", v63, v45, [v58 unsignedLongLongValue], v47);
              if (v49 != -1)
              {
                v50 = [NSNumber numberWithUnsignedLongLong:v49];
                [v7 setFrequencyChangeFrameID:v50];
              }

              v51 = [NSNumber numberWithUnsignedLongLong:v59];
              [v7 setCurrentFrequency:v51];

              [v7 setCurrentStride:v58];
              -[PSOrchestrator_v2 scheduleLivenessResetForFrameID:forTargetStride:forGraphID:](self, "scheduleLivenessResetForFrameID:forTargetStride:forGraphID:", v49, [v58 unsignedLongLongValue], v63);
              i = v64;
            }
          }
        }
      }

      v62 = [obj countByEnumeratingWithState:&v74 objects:v90 count:16];
    }

    while (v62);
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
      systemPulseRate = [(PSOrchestrator_v2 *)self systemPulseRate];
      v13 = [systemPulseRate unsignedLongLongValue] / stride;

      if (v13 > 0.0)
      {

        _ps_liveness_schedule_reset_deadline_at_frameid(session_node_by_name, d, v13, (1000000000.0 / v13));
      }
    }
  }
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = PSOrchestrator_v2;
  [(PSOrchestrator_v2 *)&v2 dealloc];
}

@end