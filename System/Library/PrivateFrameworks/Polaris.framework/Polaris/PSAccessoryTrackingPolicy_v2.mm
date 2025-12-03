@interface PSAccessoryTrackingPolicy_v2
- (PSAccessoryTrackingPolicy_v2)initWithBuider:(id)buider;
- (id)evaluatePolicy:(id)policy;
- (void)updatePolicyState;
@end

@implementation PSAccessoryTrackingPolicy_v2

- (PSAccessoryTrackingPolicy_v2)initWithBuider:(id)buider
{
  buiderCopy = buider;
  v9.receiver = self;
  v9.super_class = PSAccessoryTrackingPolicy_v2;
  v5 = [(PSAccessoryTrackingPolicy_v2 *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(PSAccessoryTrackingPolicy_v2 *)v5 setBuilder:buiderCopy];
    v7 = objc_alloc_init(NSMutableDictionary);
    [(PSAccessoryTrackingPolicy_v2 *)v6 setGraphToDesiredLowerBoundStride:v7];

    [(PSAccessoryTrackingPolicy_v2 *)v6 setPolicyTargetLowerBoundStride:&off_1000299B8];
  }

  return v6;
}

- (void)updatePolicyState
{
  v3 = [[PSSGResourceID alloc] initGlobalWithName:@"dcamr_s2bu"];
  v4 = [[PSSGResourceID alloc] initGlobalWithName:@"dcaml_s2bu"];
  v5 = [[PSSGResourceID alloc] initGlobalWithName:@"scamr_s2bu"];
  v6 = [[PSSGResourceID alloc] initGlobalWithName:@"scaml_s2bu"];
  v20 = v5;
  v21 = v4;
  v22 = v3;
  v7 = [NSSet setWithObjects:v3, v4, v5, v6, 0];
  builder = [(PSAccessoryTrackingPolicy_v2 *)self builder];
  v9 = [builder allDependentGraphsForResourceSet:v7];

  graphToDesiredLowerBoundStride = [(PSAccessoryTrackingPolicy_v2 *)self graphToDesiredLowerBoundStride];
  [graphToDesiredLowerBoundStride removeAllObjects];

  graphToSessionName = [(PSAccessoryTrackingPolicy_v2 *)self graphToSessionName];
  [graphToSessionName removeAllObjects];

  policyTargetLowerBoundStride = [(PSAccessoryTrackingPolicy_v2 *)self policyTargetLowerBoundStride];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v13 = v9;
  v14 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v24;
    do
    {
      v17 = 0;
      do
      {
        if (*v24 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v23 + 1) + 8 * v17);
        graphToDesiredLowerBoundStride2 = [(PSAccessoryTrackingPolicy_v2 *)self graphToDesiredLowerBoundStride];
        [graphToDesiredLowerBoundStride2 setObject:policyTargetLowerBoundStride forKey:v18];

        v17 = v17 + 1;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v15);
  }
}

- (id)evaluatePolicy:(id)policy
{
  [(PSAccessoryTrackingPolicy_v2 *)self updatePolicyState];
  v4 = objc_alloc_init(NSMutableDictionary);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = self->_graphToDesiredLowerBoundStride;
  v5 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = [(NSMutableDictionary *)self->_graphToDesiredLowerBoundStride objectForKeyedSubscript:v9];
        v11 = objc_alloc_init(PSGraphState_v2);
        session = [v9 session];
        [(PSGraphState_v2 *)v11 setSessionName:session];

        name = [v9 name];
        [(PSGraphState_v2 *)v11 setGraphName:name];

        [(PSGraphState_v2 *)v11 setLowerBoundStride:v10];
        [(PSGraphState_v2 *)v11 setTargetStride:0];
        [(PSGraphState_v2 *)v11 setUpperBoundStride:0];
        [v4 setObject:v11 forKey:v9];
      }

      v6 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  return v4;
}

@end