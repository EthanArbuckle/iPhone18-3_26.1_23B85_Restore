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
  bOOLValue = [v7 BOOLValue];

  v9 = 0x277CF07D8;
  if (!bOOLValue)
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
    [self setPriority:{objc_msgSend(v5, "longValue")}];
  }

  v7 = [v4 objectForKeyedSubscript:@"user-inactivity"];
  v8 = v7;
  if (v7)
  {
    [self setRequiresUserInactivity:{objc_msgSend(v7, "BOOLValue")}];
  }

  v9 = [v4 objectForKeyedSubscript:@"requires-network"];
  v10 = v9;
  if (v9)
  {
    [self setRequiresNetworkConnectivity:{objc_msgSend(v9, "BOOLValue")}];
  }

  v11 = [v4 objectForKeyedSubscript:@"battery"];
  v12 = v11;
  if (v11)
  {
    [self setRequiresExternalPower:{objc_msgSend(v11, "BOOLValue") ^ 1}];
  }

  v13 = [v4 objectForKeyedSubscript:@"powernap"];
  v14 = v13;
  if (v13)
  {
    [self setPowerNap:{objc_msgSend(v13, "BOOLValue")}];
  }

  v29 = v6;
  v15 = [v4 objectForKeyedSubscript:@"disk-intensive"];
  if (v15)
  {
    [self setResourceIntensive:1];
    [self setResources:4];
  }

  v16 = [v4 objectForKeyedSubscript:@"repeat"];
  bOOLValue = [v16 BOOLValue];

  if (bOOLValue)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [BGSystemTaskRequest(BRCAdditions) br_applyConfiguration:];
    }

    selfCopy = self;
    [selfCopy setInterval:300.0];
    v19 = [v4 objectForKeyedSubscript:@"interval"];
    if (v19)
    {
      [selfCopy interval];
      v21 = v20;
      longValue = [v19 longValue];
      if (v21 >= longValue)
      {
        longValue = v21;
      }

      [selfCopy setInterval:longValue];
    }

    [selfCopy interval];
    [selfCopy setMinDurationBetweenInstances:v23 * 0.8];
    v24 = [v4 objectForKeyedSubscript:@"delay"];
    v25 = v24;
    if (v24)
    {
      [selfCopy setMinDurationBetweenInstances:{objc_msgSend(v24, "longLongValue")}];
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [BGSystemTaskRequest(BRCAdditions) br_applyConfiguration:];
    }

    selfCopy2 = self;
    v27 = [v4 objectForKeyedSubscript:@"grace"];
    v19 = v27;
    if (v27)
    {
      [selfCopy2 setTrySchedulingBefore:{objc_msgSend(v27, "longLongValue")}];
    }

    v28 = [v4 objectForKeyedSubscript:@"delay"];
    v25 = v28;
    if (v28)
    {
      [selfCopy2 setScheduleAfter:{objc_msgSend(v28, "longLongValue")}];
    }
  }
}

@end