@interface PSOrchestrator_v2
- (PSOrchestrator_v2)initWithQueue:(id)a3 withBuilder:(id)a4 withGSTManager:(id)a5;
- (id)applyPolicyConstraints:(id)a3 withDesiredStride:(id)a4;
- (id)getDefaultResourceFrequency:(id)a3;
- (unint64_t)offsetForGraph:(id)a3 withFrequency:(unint64_t)a4;
- (void)addedGraphs:(id)a3 removedGraphs:(id)a4;
- (void)convertGraphStrideToFrequency:(id)a3;
- (void)dealloc;
- (void)dumpStateToXPCDictionary:(id)a3;
- (void)evaluateAllPolicies;
- (void)execSessionRemoved:(id)a3;
- (void)frameIdUpdate:(id)a3 frameId:(id)a4;
- (void)frameIdUpdateWithVirtualStride:(id)a3 frameId:(id)a4;
- (void)producibleStridesHaveChanged:(id)a3;
- (void)pulseRateWillChangeForSyncID:(unint64_t)a3 atFrameID:(unint64_t)a4 frequency:(unint64_t)a5 increment:(unint64_t)a6 msgFrameNumber:(unint64_t)a7;
- (void)refreshState;
- (void)resolvedDomainForGraphs:(id)a3;
- (void)resourceStateUpdate:(id)a3;
- (void)scheduleLivenessResetForFrameID:(unint64_t)a3 forTargetStride:(unint64_t)a4 forGraphID:(id)a5;
- (void)setMSGState:(id)a3 withMode:(id)a4 startingframeID:(id)a5;
- (void)setPolicies:(unsigned __int8)a3 accessoryTrackingActive:(BOOL)a4;
- (void)setResourceStridesForGraph:(id)a3;
- (void)setupSupportedCadences:(id)a3;
- (void)setupSupportedStridesForLocalReplay:(id)a3;
- (void)updateGraphDesiredState;
- (void)updateGraphTargetState:(id)a3 fromPolicy:(id)a4;
- (void)updateResourceDesiredState;
@end

@implementation PSOrchestrator_v2

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
        v11 = [(PSOrchestrator_v2 *)self graphState];
        v12 = [v11 objectForKeyedSubscript:v9];
        [v12 setDomain:v10];
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  [(PSOrchestrator_v2 *)self updateGraphDesiredState];
}

- (void)frameIdUpdateWithVirtualStride:(id)a3 frameId:(id)a4
{
  obj = a3;
  v25 = a4;
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
        v11 = [(PSOrchestrator_v2 *)self resourceState];
        v12 = [v10 resourceKey];
        v13 = [v11 objectForKeyedSubscript:v12];

        v14 = [(PSOrchestrator_v2 *)self systemPulseRate];
        v15 = [v14 unsignedLongLongValue];
        v16 = [v10 stride];
        v17 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", v15 / [v16 unsignedLongLongValue]);
        [v13 setProviderFrequency:v17];

        v18 = [v13 providerFrequency];
        [v13 setRequestedFrequencyToProvider:v18];

        v19 = [v13 strideChangeFrameID];
        v20 = [v19 unsignedLongLongValue];

        v21 = [v25 unsignedLongLongValue];
        if (v20 <= v21)
        {
          v22 = v21;
        }

        else
        {
          v22 = v20;
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

- (void)frameIdUpdate:(id)a3 frameId:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(PSOrchestrator_v2 *)self isSessionForLocalReplay])
  {
    [(PSOrchestrator_v2 *)self frameIdUpdateWithVirtualStride:v6 frameId:v7];
  }

  else
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v24 = v6;
    obj = v6;
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
          v10 = [(PSOrchestrator_v2 *)self resourceState];
          v11 = [v9 resourceKey];
          v12 = [v10 objectForKeyedSubscript:v11];

          v13 = [(PSOrchestrator_v2 *)self MSGMode];
          v14 = [v12 baseMSGSyncID];
          v15 = [v13 objectForKeyedSubscript:v14];
          v16 = [v15 unsignedLongLongValue];
          v17 = [v9 stride];
          v18 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", v16 / [v17 unsignedLongLongValue]);
          [v12 setProviderFrequency:v18];

          v19 = [v12 strideChangeFrameID];
          v20 = [v19 unsignedLongLongValue];

          v21 = [v7 unsignedLongLongValue];
          if (v20 <= v21)
          {
            v22 = v21;
          }

          else
          {
            v22 = v20;
          }

          v23 = [NSNumber numberWithUnsignedLongLong:v22];
          [v12 setStrideChangeFrameID:v23];
        }

        v27 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v27);
    }

    [(PSOrchestrator_v2 *)self refreshState];
    v6 = v24;
  }
}

- (void)producibleStridesHaveChanged:(id)a3
{
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = a3;
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
        v5 = [(PSOrchestrator_v2 *)self resourceState];
        v6 = [v4 resourceKey];
        v7 = [v5 objectForKeyedSubscript:v6];

        v8 = [v4 strides];
        v9 = [v7 setupProducibleFrequencies:v8];
        [v7 setProducibleFrequencies:v9];

        v10 = [v7 producibleFrequencies];
        v11 = [(PSOrchestrator_v2 *)self MSGMode];
        v12 = [v7 baseMSGSyncID];
        v13 = [v11 objectForKeyedSubscript:v12];
        v14 = [v10 objectForKeyedSubscript:v13];

        v15 = [v7 providerFrequency];
        if ([v14 containsObject:v15])
        {
          v16 = [v7 requestedFrequencyToProvider];
          v17 = [v14 containsObject:v16];

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
              v24 = [v7 providerFrequency];
              v25 = [v24 unsignedLongLongValue];
              v26 = [v23 unsignedLongLongValue];

              if (v25 >= v26)
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
              v33 = [v7 requestedFrequencyToProvider];
              v34 = [v33 unsignedLongLongValue];
              v35 = [v32 unsignedLongLongValue];

              if (v34 >= v35)
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

- (void)setupSupportedStridesForLocalReplay:(id)a3
{
  v4 = xpc_dictionary_get_value(a3, "resource_info_array");
  applier[0] = _NSConcreteStackBlock;
  applier[1] = 3221225472;
  applier[2] = sub_10000A23C;
  applier[3] = &unk_100028BF0;
  applier[4] = self;
  xpc_array_apply(v4, applier);
}

- (void)dumpStateToXPCDictionary:(id)a3
{
  v4 = a3;
  v6 = [(PSOrchestrator_v2 *)self statisticsDelegate];
  v5 = [v6 statistics];
  xpc_dictionary_set_value(v4, "orchestrator_statistics", v5);
}

- (void)pulseRateWillChangeForSyncID:(unint64_t)a3 atFrameID:(unint64_t)a4 frequency:(unint64_t)a5 increment:(unint64_t)a6 msgFrameNumber:(unint64_t)a7
{
  v13 = sub_100013BF4();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 134219008;
    v20 = a3;
    v21 = 2048;
    v22 = a4;
    v23 = 2048;
    v24 = a5;
    v25 = 2048;
    v26 = a6;
    v27 = 2048;
    v28 = a7;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "PSMSG: PSOrchestrator_v2 received calibration update for syncID:%llu, atFrameID:%llu, frequency:%llu, increment:%llu msgFrameNumber:%llu", &v19, 0x34u);
  }

  v14 = [(PSOrchestrator_v2 *)self systemPulseRate];
  v15 = [v14 unsignedLongLongValue] / a6;

  v16 = [NSNumber numberWithUnsignedLongLong:a3];
  v17 = [NSNumber numberWithUnsignedLongLong:v15];
  v18 = [NSNumber numberWithUnsignedLongLong:a4];
  [(PSOrchestrator_v2 *)self setMSGState:v16 withMode:v17 startingframeID:v18];
}

- (void)setupSupportedCadences:(id)a3
{
  v4 = a3;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v47 = [v4 countByEnumeratingWithState:&v49 objects:v53 count:16];
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
          objc_enumerationMutation(v4);
        }

        v6 = *(*(&v49 + 1) + 8 * v5);
        v7 = [(PSOrchestrator_v2 *)self resourceState];
        v8 = [v7 objectForKeyedSubscript:v6];

        if (v8)
        {
          v9 = [(PSOrchestrator_v2 *)self resourceState];
          v10 = [v9 objectForKeyedSubscript:v6];
          v11 = [v4 objectForKeyedSubscript:v6];
          v12 = [v10 setupSupportedFrequencies:v11];
          v13 = [(PSOrchestrator_v2 *)self resourceState];
          v14 = [v13 objectForKeyedSubscript:v6];
          [v14 setSupportedFrequencies:v12];

          v15 = [(PSOrchestrator_v2 *)self resourceState];
          v16 = [v15 objectForKeyedSubscript:v6];
          v17 = [v4 objectForKeyedSubscript:v6];
          v18 = [v16 setupDefaultFrequencies:v17];
          v19 = [(PSOrchestrator_v2 *)self resourceState];
          v20 = [v19 objectForKeyedSubscript:v6];
          [v20 setDefaultFrequencies:v18];
        }

        else
        {
          v21 = [PSResourceState_v2 alloc];
          v15 = [v4 objectForKeyedSubscript:v6];
          v16 = [(PSResourceState_v2 *)v21 init:v6 withConfig:v15];
          v17 = [(PSOrchestrator_v2 *)self resourceState];
          [v17 setObject:v16 forKeyedSubscript:v6];
        }

        v48 = v5;

        v22 = [v4 objectForKeyedSubscript:v6];
        v23 = [v22 baseMSGSyncID];

        if (v23)
        {
          v24 = [(PSOrchestrator_v2 *)self MSGResources];
          v25 = [v4 objectForKeyedSubscript:v6];
          v26 = [v25 baseMSGSyncID];
          v27 = [v24 objectForKeyedSubscript:v26];

          if (!v27)
          {
            v28 = objc_alloc_init(NSMutableArray);
            v29 = [(PSOrchestrator_v2 *)self MSGResources];
            v30 = [v4 objectForKeyedSubscript:v6];
            v31 = [v30 baseMSGSyncID];
            [v29 setObject:v28 forKeyedSubscript:v31];
          }

          v32 = [(PSOrchestrator_v2 *)self MSGResources];
          v33 = [v4 objectForKeyedSubscript:v6];
          v34 = [v33 baseMSGSyncID];
          v35 = [v32 objectForKey:v34];
          [v35 addObject:v6];
        }

        v36 = [(PSOrchestrator_v2 *)self resourceState];
        v37 = [v36 objectForKeyedSubscript:v6];
        v38 = [v4 objectForKeyedSubscript:v6];
        v39 = [v38 supportedCadences];
        v40 = [v39 allKeys];
        v41 = [v37 setupProducibleFrequencies:v40];
        [(PSOrchestrator_v2 *)self resourceState];
        v42 = self;
        v44 = v43 = v4;
        v45 = [v44 objectForKeyedSubscript:v6];
        [v45 setProducibleFrequencies:v41];

        v4 = v43;
        self = v42;

        v5 = v48 + 1;
      }

      while (v47 != (v48 + 1));
      v47 = [v4 countByEnumeratingWithState:&v49 objects:v53 count:16];
    }

    while (v47);
  }
}

- (void)resourceStateUpdate:(id)a3
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
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        v10 = [(PSOrchestrator_v2 *)self resourceState];
        v11 = [v9 resourceName];
        v12 = [v10 objectForKeyedSubscript:v11];

        [v12 setState:{objc_msgSend(v9, "state")}];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  [(PSOrchestrator_v2 *)self updateGraphDesiredState];
}

- (void)execSessionRemoved:(id)a3
{
  v4 = a3;
  v5 = [(PSOrchestrator_v2 *)self builder];
  v6 = [v5 graphsForExecSession:v4];

  [(PSOrchestrator_v2 *)self addedGraphs:0 removedGraphs:v6];
  v7 = [(PSOrchestrator_v2 *)self builder];
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
      v15 = "[PSOrchestrator_v2(PSSG) execSessionRemoved:]";
      v16 = 2112;
      v17 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s: builder removeGraphsWithIDs call failed with: %@", buf, 0x16u);
    }
  }

  v12 = [(PSOrchestrator_v2 *)self gstManager];
  [v12 removeGraphs:v6];

  [(PSOrchestrator_v2 *)self flushAddedRemovedGraphs];
}

- (void)setPolicies:(unsigned __int8)a3 accessoryTrackingActive:(BOOL)a4
{
  v7 = [(PSOrchestrator_v2 *)self queue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000B530;
  v8[3] = &unk_100028C18;
  v9 = a3;
  v8[4] = self;
  v10 = a4;
  dispatch_sync(v7, v8);
}

- (id)getDefaultResourceFrequency:(id)a3
{
  v4 = a3;
  v5 = [(PSOrchestrator_v2 *)self resourceState];
  v6 = [v5 objectForKeyedSubscript:v4];

  v7 = [v6 baseMSGSyncID];

  v8 = [v6 defaultFrequencies];
  v9 = v8;
  if (v7)
  {
    v10 = [(PSOrchestrator_v2 *)self MSGMode];
    v11 = [v6 baseMSGSyncID];
    v12 = [v10 objectForKeyedSubscript:v11];
    v13 = [v9 objectForKeyedSubscript:v12];
  }

  else
  {
    v13 = [v8 objectForKeyedSubscript:&off_1000299D0];
  }

  return v13;
}

- (void)setResourceStridesForGraph:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableSet);
  v6 = [(PSOrchestrator_v2 *)self isSessionForLocalReplay];
  v7 = [(PSOrchestrator_v2 *)self builder];
  v8 = v7;
  if (v6)
  {
    v9 = [v7 inputResourcesForGraph:v4];

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

          v15 = [*(*(&v36 + 1) + 8 * i) name];
          [v5 addObject:v15];
        }

        v12 = [v10 countByEnumeratingWithState:&v36 objects:v41 count:16];
      }

      while (v12);
    }
  }

  else
  {
    v16 = [v7 resourcesForGraph:v4];
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
        v24 = [(PSOrchestrator_v2 *)self builder];
        v25 = [v24 isWaitInput:v23 forGraph:v4];

        if (v25)
        {
          v26 = [(PSOrchestrator_v2 *)self graphState];
          v27 = [v26 objectForKeyedSubscript:v4];
          v28 = [v27 targetFrequency];
        }

        else
        {
          v28 = [(PSOrchestrator_v2 *)self getDefaultResourceFrequency:v23];
        }

        v29 = [(PSOrchestrator_v2 *)self resourceState];
        v30 = [v29 objectForKeyedSubscript:v23];
        v31 = [v30 consumersForFrequency];
        [v31 setObject:v28 forKeyedSubscript:v4];
      }

      v20 = [v18 countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v20);
  }
}

- (void)updateGraphTargetState:(id)a3 fromPolicy:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PSOrchestrator_v2 *)self graphState];
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
              sub_1000178A4(&v48);
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

- (void)convertGraphStrideToFrequency:(id)a3
{
  v4 = a3;
  v5 = [(PSOrchestrator_v2 *)self graphState];
  v6 = [v5 objectForKeyedSubscript:v4];
  v7 = [v6 targetStride];
  v8 = [v7 unsignedLongLongValue];

  if (0xAAAAAAAAAAAAAAABLL * v8 < 0x5555555555555556)
  {
    v10 = [(PSOrchestrator_v2 *)self graphState];
    v28 = [v10 objectForKeyedSubscript:v4];
    v29 = [v28 targetStride];
    v30 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", 0x5A / [v29 unsignedLongLongValue]);
    v31 = [(PSOrchestrator_v2 *)self graphState];
    v32 = [v31 objectForKeyedSubscript:v4];
    [v32 setTargetFrequency:v30];
  }

  else
  {
    v9 = [(PSOrchestrator_v2 *)self builder];
    v10 = [v9 rootResourcesForGraph:v4];

    if ([v10 count])
    {
      v11 = objc_alloc_init(NSMutableSet);
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v40 = v10;
      v12 = v10;
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
            v18 = [(PSOrchestrator_v2 *)self resourceState];
            v19 = [v17 name];
            v20 = [v18 objectForKeyedSubscript:v19];

            v21 = [v20 baseMSGSyncID];

            if (v21)
            {
              v22 = [v20 baseMSGSyncID];
              [v11 addObject:v22];
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
          v24 = [v4 name];
          v45 = 138412546;
          v46 = v24;
          v47 = 2112;
          v48 = v11;
          _os_log_unreliable_impl();
        }
      }

      if ([v11 count] == 1)
      {
        v25 = [(PSOrchestrator_v2 *)self MSGMode];
        v26 = [v11 anyObject];
        v27 = [v25 objectForKeyedSubscript:v26];
      }

      else
      {
        v27 = &off_1000299D0;
      }

      v10 = v40;
    }

    else
    {
      v27 = &off_1000299D0;
    }

    v33 = [v27 unsignedLongLongValue];
    v34 = [(PSOrchestrator_v2 *)self graphState];
    v35 = [v34 objectForKeyedSubscript:v4];
    v36 = [v35 targetStride];
    v37 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", v33 / [v36 unsignedLongLongValue]);
    v38 = [(PSOrchestrator_v2 *)self graphState];
    v39 = [v38 objectForKeyedSubscript:v4];
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
  v3 = [(PSOrchestrator_v2 *)self policyRequests];
  v4 = [v3 countByEnumeratingWithState:&v74 objects:v81 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v74 + 1) + 8 * i);
        v9 = [(PSOrchestrator_v2 *)self policyRequests];
        v10 = [v9 objectForKeyedSubscript:v8];

        [(PSOrchestrator_v2 *)self updateGraphTargetState:v60 fromPolicy:v10];
      }

      v5 = [v3 countByEnumeratingWithState:&v74 objects:v81 count:16];
    }

    while (v5);
  }

  v11 = [(PSOrchestrator_v2 *)self graphState];
  v12 = [v11 allKeys];

  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v13 = v12;
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
        v19 = [(PSOrchestrator_v2 *)self graphState];
        v20 = [v19 objectForKeyedSubscript:v18];
        [v20 setTargetStride:0];
      }

      v15 = [v13 countByEnumeratingWithState:&v70 objects:v80 count:16];
    }

    while (v15);
  }

  v51 = v13;

  v21 = [(PSOrchestrator_v2 *)self builder];
  v22 = [v21 allStrideDependentGraphs];

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  obj = v22;
  v53 = [obj countByEnumeratingWithState:&v66 objects:v79 count:16];
  if (v53)
  {
    v52 = *v67;
    v57 = self;
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
        v26 = [(PSOrchestrator_v2 *)self graphState];
        v27 = [v26 objectForKeyedSubscript:v24];
        v28 = [v27 requestedStride];
        v29 = [(PSOrchestrator_v2 *)self applyPolicyConstraints:v25 withDesiredStride:v28];
        v30 = [(PSOrchestrator_v2 *)v57 graphState];
        v31 = [v30 objectForKeyedSubscript:v24];
        [v31 setTargetStride:v29];

        self = v57;
        [(PSOrchestrator_v2 *)v57 convertGraphStrideToFrequency:v24];
        [(PSOrchestrator_v2 *)v57 setResourceStridesForGraph:v24];
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
              v35 = [(PSOrchestrator_v2 *)self graphState];
              v36 = [v35 objectForKeyedSubscript:v59];
              v37 = [v36 targetStride];
              v38 = [v37 unsignedIntegerValue];

              v39 = [(PSOrchestrator_v2 *)self graphState];
              v40 = [v39 objectForKeyedSubscript:v34];
              v41 = [v40 targetStride];
              if (v41)
              {
                v42 = [(PSOrchestrator_v2 *)self graphState];
                v43 = [v42 objectForKeyedSubscript:v34];
                v44 = [v43 targetStride];
                v45 = [v44 unsignedIntegerValue];

                self = v57;
              }

              else
              {
                v45 = -1;
              }

              if (v38 < v45)
              {
                v45 = v38;
              }

              v46 = [v60 objectForKeyedSubscript:v34];
              v47 = [NSNumber numberWithUnsignedInteger:v45];
              v48 = [(PSOrchestrator_v2 *)self applyPolicyConstraints:v46 withDesiredStride:v47];
              v49 = [(PSOrchestrator_v2 *)self graphState];
              v50 = [v49 objectForKeyedSubscript:v34];
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

- (PSOrchestrator_v2)initWithQueue:(id)a3 withBuilder:(id)a4 withGSTManager:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = +[PLSSettings currentSettings];
  v12 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v11 systemPulseRate]);
  v13 = [(PSOrchestrator_v2 *)self initWithQueue:v10 withBuilder:v9 withGSTManager:v8 isSessionForLocalReplay:0 withSystemPulseRate:v12];

  return v13;
}

- (void)setMSGState:(id)a3 withMode:(id)a4 startingframeID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v30 = a5;
  v10 = [(PSOrchestrator_v2 *)self MSGMode];
  v27 = v9;
  [v10 setObject:v9 forKeyedSubscript:v8];

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v11 = [(PSOrchestrator_v2 *)self MSGResources];
  v28 = v8;
  v12 = [v11 objectForKeyedSubscript:v8];

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
        v18 = [(PSOrchestrator_v2 *)self resourceState];
        v19 = [v18 objectForKeyedSubscript:v17];
        v20 = [v19 strideChangeFrameID];
        v21 = [v20 unsignedLongLongValue];

        v22 = [v30 unsignedLongLongValue];
        if (v21 <= v22 - 1)
        {
          v23 = v22 - 1;
        }

        else
        {
          v23 = v21;
        }

        v24 = [NSNumber numberWithUnsignedLongLong:v23];
        v25 = [(PSOrchestrator_v2 *)self resourceState];
        v26 = [v25 objectForKeyedSubscript:v17];
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

- (void)addedGraphs:(id)a3 removedGraphs:(id)a4
{
  v32 = a3;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = a4;
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
        v8 = [(PSOrchestrator_v2 *)self builder];
        v9 = [v8 resourcesForGraph:v7];

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
              v16 = [(PSOrchestrator_v2 *)self resourceState];
              v17 = [v16 objectForKeyedSubscript:v15];
              v18 = [v17 consumersForFrequency];
              [v18 removeObjectForKey:v7];

              v14 = v14 + 1;
            }

            while (v12 != v14);
            v12 = [v10 countByEnumeratingWithState:&v40 objects:v49 count:16];
          }

          while (v12);
        }

        v19 = [(PSOrchestrator_v2 *)self graphState];
        [v19 removeObjectForKey:v7];

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
  v20 = v32;
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
        v27 = [v25 name];
        [(PSGraphState_v2 *)v26 setGraphName:v27];

        v28 = [v25 session];
        [(PSGraphState_v2 *)v26 setSessionName:v28];

        v29 = [v20 objectForKey:v25];
        [(PSGraphState_v2 *)v26 setRequestedStride:v29];

        v30 = [v25 name];
        -[PSGraphState_v2 setIsPessimistic:](v26, "setIsPessimistic:", [v30 isEqualToString:@"hands"]);

        v31 = [(PSOrchestrator_v2 *)self graphState];
        [v31 setObject:v26 forKeyedSubscript:v25];

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
        v7 = [(PSOrchestrator_v2 *)self resourceState];
        v8 = [v7 objectForKeyedSubscript:v6];

        v9 = [v8 baseMSGSyncID];

        if (v9)
        {
          v10 = [(PSOrchestrator_v2 *)self MSGMode];
          v11 = [v8 baseMSGSyncID];
          v12 = [v10 objectForKeyedSubscript:v11];
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

        v14 = [v8 producibleFrequencies];

        if (v14)
        {
          v15 = [v8 producibleFrequencies];
          v16 = [v15 objectForKeyedSubscript:v12];
          v17 = [v16 containsObject:v13];

          if (!v17)
          {
            goto LABEL_19;
          }

          [v8 setRequestedFrequencyToProvider:v13];
          v18 = [v8 guaranteedStrideChangeNotification];
          v19 = [v18 objectForKeyedSubscript:v13];
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

        v23 = [v8 requestedStrideToProvider];
        v24 = [v21 isEqual:v23];

        if ((v24 & 1) == 0)
        {
          v47 = v6;
          [v8 setRequestedStrideToProvider:v21];
          v25 = [v8 strideChangeFrameID];
          v26 = [v25 unsignedLongLongValue];

          v27 = [(PSOrchestrator_v2 *)self getNextMSGFrameID];
          if (v26 <= v27)
          {
            v28 = v27;
          }

          else
          {
            v28 = v26;
          }

          v29 = [NSNumber numberWithUnsignedLongLong:v28];
          [v8 setStrideChangeFrameID:v29];

          v30 = [(PSOrchestrator_v2 *)self log];
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            v31 = [v8 strideChangeFrameID];
            v53 = v44;
            v54 = v31;
            _os_log_unreliable_impl();
          }

          v32 = objc_alloc_init(PSResourceDesiredState);
          v33 = [v8 resourceName];
          [(PSResourceDesiredState *)v32 setResourceName:v33];

          [(PSResourceDesiredState *)v32 setDesiredStride:v21];
          [(PSResourceDesiredState *)v32 setWantedByConsumers:v21 != 0];
          if (v21)
          {
            v34 = self;
            v35 = v4;
            v36 = [(PSResourceDesiredState *)v32 desiredStride];
            v37 = [v36 isEqualToNumber:&off_100029A00];

            v38 = v34;
            v39 = [(PSOrchestrator_v2 *)v34 log];
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
                v41 = [(PSResourceDesiredState *)v32 desiredStride];
                v53 = 138412546;
                v54 = v41;
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
    v42 = [(PSOrchestrator_v2 *)self notifier];

    if (v42)
    {
      if ([v45 count])
      {
        v43 = [(PSOrchestrator_v2 *)self notifier];
        (v43)[2](v43, v45);
      }
    }
  }
}

- (void)refreshState
{
  v3 = [(PSOrchestrator_v2 *)self statisticsDelegate];
  [v3 willStartOrchestration];

  [(PSOrchestrator_v2 *)self evaluateAllPolicies];
  [(PSOrchestrator_v2 *)self updateResourceDesiredState];
  [(PSOrchestrator_v2 *)self updateGraphDesiredState];
  v4 = [(PSOrchestrator_v2 *)self statisticsDelegate];
  [v4 didEndOrchestration];
}

- (unint64_t)offsetForGraph:(id)a3 withFrequency:(unint64_t)a4
{
  v6 = a3;
  v7 = [(PSOrchestrator_v2 *)self graphState];
  v8 = [v7 objectForKeyedSubscript:v6];

  v9 = [v8 domain];

  v10 = [v9 isEqualToString:@"custom-dsjcam"];
  v11 = 0;
  if (a4 <= 0x1E && v10)
  {
    v12 = [(PSOrchestrator_v2 *)self systemPulseRate];
    v11 = ([v12 unsignedLongLongValue] / 0x2D) & 0x7FFFFFFFFFFFFFELL;
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
        v6 = [(PSOrchestrator_v2 *)self graphState];
        v7 = [v6 objectForKeyedSubscript:v5];

        v8 = [v7 domain];

        if (v8)
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
                v16 = [(PSOrchestrator_v2 *)self resourceState];
                v17 = [v16 objectForKeyedSubscript:v15];

                if ([v17 state])
                {
                  if (![v7 isPessimistic])
                  {
                    goto LABEL_16;
                  }

                  v18 = [v17 guaranteedStrideChangeNotification];
                  v19 = [v17 requestedFrequencyToProvider];
                  v20 = [v18 objectForKeyedSubscript:v19];

                  if (v20)
                  {
                    v21 = [v17 providerFrequency];
                  }

                  else
                  {
LABEL_16:
                    v21 = [v17 requestedFrequencyToProvider];
                  }

                  v22 = v21;
                }

                else
                {
                  v22 = &off_100029A00;
                }

                v23 = [v22 unsignedLongLongValue];
                if (v13 >= v23)
                {
                  v13 = v23;
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

          v24 = [v7 targetFrequency];
          v25 = [v24 unsignedLongLongValue];

          if (v25 >= v13)
          {
            v26 = v13;
          }

          else
          {
            v26 = v25;
          }

          v27 = [(PSOrchestrator_v2 *)self log];
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
          {
            v52 = [v63 name];
            v53 = [v7 targetFrequency];
            v54 = [v7 currentFrequency];
            *buf = 138413314;
            v80 = v52;
            v81 = 2048;
            v82 = v26;
            v83 = 2112;
            v84 = v53;
            v85 = 2048;
            v86 = v13;
            v87 = 2112;
            v88 = v54;
            _os_log_debug_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "updateGraphDesiredState Graph %@ : target freq = %llu, graph target = %@, currentInput = %llu, currentFreq = %@", buf, 0x34u);
          }

          v28 = [v7 currentFrequency];
          v29 = [v28 unsignedLongLongValue];

          i = v64;
          if (v29 != v26)
          {
            v30 = [(PSOrchestrator_v2 *)self systemPulseRate];
            v31 = +[NSNumber numberWithUnsignedLong:](NSNumber, "numberWithUnsignedLong:", [v30 unsignedLongLongValue] / v26);

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
                    v39 = [(PSOrchestrator_v2 *)self resourceState];
                    v40 = [v39 objectForKeyedSubscript:v38];

                    v41 = [v40 strideChangeFrameID];
                    v42 = [v41 unsignedLongLongValue];

                    if (v35 <= v42)
                    {
                      v35 = v42;
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

              v43 = [v7 frequencyChangeFrameID];
              v44 = [v43 unsignedLongLongValue];

              if (v35 <= v44)
              {
                v45 = v44;
              }

              else
              {
                v45 = v35;
              }

              v46 = [(PSOrchestrator_v2 *)self log];
              if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
              {
                v55 = [v7 frequencyChangeFrameID];
                *buf = 138412546;
                v80 = v55;
                v81 = 2048;
                v82 = v35;
                _os_log_debug_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEBUG, "graph frameid is %@ and max of resource frameid is %llu", buf, 0x16u);
              }

              v47 = [(PSOrchestrator_v2 *)self offsetForGraph:v63 withFrequency:v59];
              v48 = [(PSOrchestrator_v2 *)self log];
              v31 = v58;
              if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
              {
                v56 = [v63 name];
                *buf = v57;
                v80 = v56;
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
      v12 = [(PSOrchestrator_v2 *)self systemPulseRate];
      v13 = [v12 unsignedLongLongValue] / a4;

      if (v13 > 0.0)
      {

        _ps_liveness_schedule_reset_deadline_at_frameid(session_node_by_name, a3, v13, (1000000000.0 / v13));
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