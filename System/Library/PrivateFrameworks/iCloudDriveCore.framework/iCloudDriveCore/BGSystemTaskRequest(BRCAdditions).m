@interface BGSystemTaskRequest(BRCAdditions)
+ (id)br_taskRequestWithIdentifier:()BRCAdditions configuration:;
- (void)br_applyConfiguration:()BRCAdditions;
@end

@implementation BGSystemTaskRequest(BRCAdditions)

+ (id)br_taskRequestWithIdentifier:()BRCAdditions configuration:
{
  v5 = a4;
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:@"repeat"];
  v8 = [v7 BOOLValue];

  v9 = 0x277CF07D8;
  if (!v8)
  {
    v9 = 0x277CF07C8;
  }

  v10 = [objc_alloc(*v9) initWithIdentifier:v6];

  [v10 br_applyConfiguration:v5];

  return v10;
}

- (void)br_applyConfiguration:()BRCAdditions
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"priority"];
  v6 = v5;
  if (v5)
  {
    [a1 setPriority:{objc_msgSend(v5, "longValue")}];
  }

  v7 = [v4 objectForKeyedSubscript:@"user-inactivity"];
  v8 = v7;
  if (v7)
  {
    [a1 setRequiresUserInactivity:{objc_msgSend(v7, "BOOLValue")}];
  }

  v9 = [v4 objectForKeyedSubscript:@"requires-network"];
  v10 = v9;
  if (v9)
  {
    [a1 setRequiresNetworkConnectivity:{objc_msgSend(v9, "BOOLValue")}];
  }

  v11 = [v4 objectForKeyedSubscript:@"battery"];
  v12 = v11;
  if (v11)
  {
    [a1 setRequiresExternalPower:{objc_msgSend(v11, "BOOLValue") ^ 1}];
  }

  v13 = [v4 objectForKeyedSubscript:@"powernap"];
  v14 = v13;
  if (v13)
  {
    [a1 setPowerNap:{objc_msgSend(v13, "BOOLValue")}];
  }

  v29 = v6;
  v15 = [v4 objectForKeyedSubscript:@"disk-intensive"];
  if (v15)
  {
    [a1 setResourceIntensive:1];
    [a1 setResources:4];
  }

  v16 = [v4 objectForKeyedSubscript:@"repeat"];
  v17 = [v16 BOOLValue];

  if (v17)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [BGSystemTaskRequest(BRCAdditions) br_applyConfiguration:];
    }

    v18 = a1;
    [v18 setInterval:300.0];
    v19 = [v4 objectForKeyedSubscript:@"interval"];
    if (v19)
    {
      [v18 interval];
      v21 = v20;
      v22 = [v19 longValue];
      if (v21 >= v22)
      {
        v22 = v21;
      }

      [v18 setInterval:v22];
    }

    [v18 interval];
    [v18 setMinDurationBetweenInstances:v23 * 0.8];
    v24 = [v4 objectForKeyedSubscript:@"delay"];
    v25 = v24;
    if (v24)
    {
      [v18 setMinDurationBetweenInstances:{objc_msgSend(v24, "longLongValue")}];
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [BGSystemTaskRequest(BRCAdditions) br_applyConfiguration:];
    }

    v26 = a1;
    v27 = [v4 objectForKeyedSubscript:@"grace"];
    v19 = v27;
    if (v27)
    {
      [v26 setTrySchedulingBefore:{objc_msgSend(v27, "longLongValue")}];
    }

    v28 = [v4 objectForKeyedSubscript:@"delay"];
    v25 = v28;
    if (v28)
    {
      [v26 setScheduleAfter:{objc_msgSend(v28, "longLongValue")}];
    }
  }
}

@end