@interface PSCoreAnalyticsIDManager
+ (id)keyForSession:(id)session graph:(id)graph stride:(id)stride task:(id)task resource:(id)resource optionalBoolean:(id)boolean;
+ (id)sharedInstance;
+ (void)sendMissingUniqueIDEventForResource:(id)resource graph:(id)graph session:(id)session;
+ (void)sendMissingUniqueIDEventForResource:(id)resource graph:(id)graph stride:(id)stride session:(id)session;
+ (void)sendMissingUniqueIDEventForSession:(id)session graph:(id)graph stride:(id)stride;
+ (void)sendMissingUniqueIDEventForTask:(id)task graph:(id)graph stride:(id)stride session:(id)session;
- ($83DE3647E9E26936032982CC3A303C9F)opaqueIDForResource:(id)resource graph:(id)graph session:(id)session bufferExpired:(BOOL)expired;
- ($83DE3647E9E26936032982CC3A303C9F)opaqueIDForResource:(id)resource graph:(id)graph stride:(id)stride session:(id)session;
- ($83DE3647E9E26936032982CC3A303C9F)opaqueIDForSession:(id)session graph:(id)graph stride:(id)stride;
- ($83DE3647E9E26936032982CC3A303C9F)opaqueIDForTask:(id)task graph:(id)graph stride:(id)stride session:(id)session;
- (PSCoreAnalyticsIDManager)initWithIDs:(id)ds;
- (const)stringForOpaqueID:(id)d;
- (void)dealloc;
- (void)setID:(id)d forDimension:(id)dimension forLogType:(id)type;
@end

@implementation PSCoreAnalyticsIDManager

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__PSCoreAnalyticsIDManager_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, block);
  }

  v2 = sharedInstance_inst;

  return v2;
}

void __42__PSCoreAnalyticsIDManager_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v2 = MEMORY[0x277CBEAC0];
  v3 = [v7 pathForResource:@"PSCoreAnalyticsGraphs" ofType:@"plist"];
  v4 = [v2 dictionaryWithContentsOfFile:v3];

  v5 = [[PSCoreAnalyticsIDManager alloc] initWithIDs:v4];
  v6 = sharedInstance_inst;
  sharedInstance_inst = v5;
}

- (PSCoreAnalyticsIDManager)initWithIDs:(id)ds
{
  v38 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  v35.receiver = self;
  v35.super_class = PSCoreAnalyticsIDManager;
  v5 = [(PSCoreAnalyticsIDManager *)&v35 init];
  if (v5)
  {
    v6 = os_log_create("com.apple.polaris", "coreanalytics");
    [(PSCoreAnalyticsIDManager *)v5 setLog_handle:v6];

    [(PSCoreAnalyticsIDManager *)v5 setNextIndex:&unk_2870CAB48];
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(PSCoreAnalyticsIDManager *)v5 setOpaqueIDForKey:v7];

    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(PSCoreAnalyticsIDManager *)v5 setCStringForOpaqueID:v8];

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    obj = [dsCopy objectForKeyedSubscript:@"ids"];
    v25 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
    if (v25)
    {
      v23 = *v32;
      v24 = dsCopy;
      do
      {
        v9 = 0;
        do
        {
          if (*v32 != v23)
          {
            objc_enumerationMutation(obj);
          }

          v26 = v9;
          v10 = *(*(&v31 + 1) + 8 * v9);
          v27 = 0u;
          v28 = 0u;
          v29 = 0u;
          v30 = 0u;
          v11 = [dsCopy objectForKeyedSubscript:@"ids"];
          v12 = [v11 objectForKeyedSubscript:v10];

          v13 = [v12 countByEnumeratingWithState:&v27 objects:v36 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v28;
            do
            {
              for (i = 0; i != v14; ++i)
              {
                if (*v28 != v15)
                {
                  objc_enumerationMutation(v12);
                }

                v17 = *(*(&v27 + 1) + 8 * i);
                v18 = [v17 objectForKeyedSubscript:@"uniqueID"];
                v19 = [v17 objectForKeyedSubscript:@"dimensions"];
                [(PSCoreAnalyticsIDManager *)v5 setID:v18 forDimension:v19 forLogType:v10];
              }

              v14 = [v12 countByEnumeratingWithState:&v27 objects:v36 count:16];
            }

            while (v14);
          }

          v9 = v26 + 1;
          dsCopy = v24;
        }

        while (v26 + 1 != v25);
        v25 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
      }

      while (v25);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)dealloc
{
  v30 = *MEMORY[0x277D85DE8];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = [(PSCoreAnalyticsIDManager *)self cStringForOpaqueID];
  v18 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v18)
  {
    v17 = *v25;
    do
    {
      v3 = 0;
      do
      {
        if (*v25 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v24 + 1) + 8 * v3);
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        cStringForOpaqueID = [(PSCoreAnalyticsIDManager *)self cStringForOpaqueID];
        v6 = [cStringForOpaqueID objectForKeyedSubscript:v4];

        v7 = [v6 countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v21;
          do
          {
            v10 = 0;
            do
            {
              if (*v21 != v9)
              {
                objc_enumerationMutation(v6);
              }

              v11 = *(*(&v20 + 1) + 8 * v10);
              cStringForOpaqueID2 = [(PSCoreAnalyticsIDManager *)self cStringForOpaqueID];
              v13 = [cStringForOpaqueID2 objectForKeyedSubscript:v4];
              v14 = [v13 objectForKeyedSubscript:v11];
              free([v14 pointerValue]);

              ++v10;
            }

            while (v8 != v10);
            v8 = [v6 countByEnumeratingWithState:&v20 objects:v28 count:16];
          }

          while (v8);
        }

        ++v3;
      }

      while (v3 != v18);
      v18 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v18);
  }

  v19.receiver = self;
  v19.super_class = PSCoreAnalyticsIDManager;
  [(PSCoreAnalyticsIDManager *)&v19 dealloc];
  v15 = *MEMORY[0x277D85DE8];
}

+ (id)keyForSession:(id)session graph:(id)graph stride:(id)stride task:(id)task resource:(id)resource optionalBoolean:(id)boolean
{
  booleanCopy = &stru_2870BCDD8;
  if (stride)
  {
    strideCopy = stride;
  }

  else
  {
    strideCopy = &stru_2870BCDD8;
  }

  if (task)
  {
    taskCopy = task;
  }

  else
  {
    taskCopy = &stru_2870BCDD8;
  }

  if (resource)
  {
    resourceCopy = resource;
  }

  else
  {
    resourceCopy = &stru_2870BCDD8;
  }

  if (boolean)
  {
    booleanCopy = boolean;
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@%@%@%@%@", strideCopy, session, graph, taskCopy, resourceCopy, booleanCopy];
}

+ (void)sendMissingUniqueIDEventForSession:(id)session graph:(id)graph stride:(id)stride
{
  v15[3] = *MEMORY[0x277D85DE8];
  if (session && graph && stride)
  {
    v14[0] = @"session";
    v14[1] = @"graph";
    v15[0] = session;
    v15[1] = graph;
    v14[2] = @"stride";
    v15[2] = stride;
    v7 = MEMORY[0x277CBEAC0];
    strideCopy = stride;
    graphCopy = graph;
    sessionCopy = session;
    v13 = [v7 dictionaryWithObjects:v15 forKeys:v14 count:3];
    v11 = v13;
    AnalyticsSendEventLazy();
  }

  v12 = *MEMORY[0x277D85DE8];
}

+ (void)sendMissingUniqueIDEventForTask:(id)task graph:(id)graph stride:(id)stride session:(id)session
{
  v18[4] = *MEMORY[0x277D85DE8];
  if (task && stride && graph && session)
  {
    v17[0] = @"session";
    v17[1] = @"graph";
    v18[0] = session;
    v18[1] = graph;
    v17[2] = @"stride";
    v17[3] = @"task";
    v18[2] = stride;
    v18[3] = task;
    v9 = MEMORY[0x277CBEAC0];
    sessionCopy = session;
    strideCopy = stride;
    graphCopy = graph;
    taskCopy = task;
    v16 = [v9 dictionaryWithObjects:v18 forKeys:v17 count:4];
    v14 = v16;
    AnalyticsSendEventLazy();
  }

  v15 = *MEMORY[0x277D85DE8];
}

+ (void)sendMissingUniqueIDEventForResource:(id)resource graph:(id)graph stride:(id)stride session:(id)session
{
  v18[4] = *MEMORY[0x277D85DE8];
  if (resource && stride && graph && session)
  {
    v17[0] = @"session";
    v17[1] = @"graph";
    v18[0] = session;
    v18[1] = graph;
    v17[2] = @"stride";
    v17[3] = @"resource";
    v18[2] = stride;
    v18[3] = resource;
    v9 = MEMORY[0x277CBEAC0];
    sessionCopy = session;
    strideCopy = stride;
    graphCopy = graph;
    resourceCopy = resource;
    v16 = [v9 dictionaryWithObjects:v18 forKeys:v17 count:4];
    v14 = v16;
    AnalyticsSendEventLazy();
  }

  v15 = *MEMORY[0x277D85DE8];
}

+ (void)sendMissingUniqueIDEventForResource:(id)resource graph:(id)graph session:(id)session
{
  v15[3] = *MEMORY[0x277D85DE8];
  if (resource && graph && session)
  {
    v14[0] = @"session";
    v14[1] = @"graph";
    v15[0] = session;
    v15[1] = graph;
    v14[2] = @"resource";
    v15[2] = resource;
    v7 = MEMORY[0x277CBEAC0];
    sessionCopy = session;
    graphCopy = graph;
    resourceCopy = resource;
    v13 = [v7 dictionaryWithObjects:v15 forKeys:v14 count:3];
    v11 = v13;
    AnalyticsSendEventLazy();
  }

  v12 = *MEMORY[0x277D85DE8];
}

- ($83DE3647E9E26936032982CC3A303C9F)opaqueIDForTask:(id)task graph:(id)graph stride:(id)stride session:(id)session
{
  v9 = 2166136261;
  taskCopy = task;
  graphCopy = graph;
  strideCopy = stride;
  sessionCopy = session;
  uTF8String = [sessionCopy UTF8String];
  if (uTF8String)
  {
    v15 = *uTF8String;
    v16 = 2166136261;
    if (*uTF8String)
    {
      v17 = uTF8String + 1;
      do
      {
        v16 = 16777619 * (v16 ^ v15);
        v18 = *v17++;
        v15 = v18;
      }

      while (v18);
    }
  }

  else
  {
    v16 = 0;
  }

  uTF8String2 = [graphCopy UTF8String];
  if (uTF8String2)
  {
    v20 = *uTF8String2;
    v21 = 2166136261;
    if (*uTF8String2)
    {
      v22 = uTF8String2 + 1;
      do
      {
        v21 = 16777619 * (v21 ^ v20);
        v23 = *v22++;
        v20 = v23;
      }

      while (v23);
    }
  }

  else
  {
    v21 = 0;
  }

  uTF8String3 = [taskCopy UTF8String];
  if (uTF8String3)
  {
    v25 = *uTF8String3;
    if (*uTF8String3)
    {
      v26 = uTF8String3 + 1;
      do
      {
        v9 = 16777619 * (v9 ^ v25);
        v27 = *v26++;
        v25 = v27;
      }

      while (v27);
    }
  }

  else
  {
    v9 = 0;
  }

  v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v16];
  v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v21];
  v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v9];
  v31 = [PSCoreAnalyticsIDManager keyForSession:v28 graph:v29 stride:strideCopy task:v30 resource:0 optionalBoolean:0];

  v32 = [MEMORY[0x277CCABB0] numberWithInt:1];
  opaqueIDForKey = [(PSCoreAnalyticsIDManager *)self opaqueIDForKey];
  stringValue = [v32 stringValue];
  v35 = [opaqueIDForKey objectForKey:stringValue];
  v36 = [v35 objectForKey:v31];

  if (v36)
  {
    intValue = [v36 intValue];
    v38.var0 = [v32 intValue] & 7 | (8 * intValue);
  }

  else
  {
    [PSCoreAnalyticsIDManager sendMissingUniqueIDEventForTask:taskCopy graph:graphCopy stride:strideCopy session:sessionCopy];
    v38.var0 = -1;
  }

  return v38.var0;
}

- ($83DE3647E9E26936032982CC3A303C9F)opaqueIDForResource:(id)resource graph:(id)graph session:(id)session bufferExpired:(BOOL)expired
{
  expiredCopy = expired;
  v9 = 2166136261;
  resourceCopy = resource;
  graphCopy = graph;
  sessionCopy = session;
  uTF8String = [sessionCopy UTF8String];
  if (uTF8String)
  {
    v14 = *uTF8String;
    v15 = 2166136261;
    if (*uTF8String)
    {
      v16 = uTF8String + 1;
      do
      {
        v15 = 16777619 * (v15 ^ v14);
        v17 = *v16++;
        v14 = v17;
      }

      while (v17);
    }
  }

  else
  {
    v15 = 0;
  }

  uTF8String2 = [graphCopy UTF8String];
  if (uTF8String2)
  {
    v19 = *uTF8String2;
    v20 = 2166136261;
    if (*uTF8String2)
    {
      v21 = uTF8String2 + 1;
      do
      {
        v20 = 16777619 * (v20 ^ v19);
        v22 = *v21++;
        v19 = v22;
      }

      while (v22);
    }
  }

  else
  {
    v20 = 0;
  }

  uTF8String3 = [resourceCopy UTF8String];
  if (uTF8String3)
  {
    v24 = *uTF8String3;
    if (*uTF8String3)
    {
      v25 = uTF8String3 + 1;
      do
      {
        v9 = 16777619 * (v9 ^ v24);
        v26 = *v25++;
        v24 = v26;
      }

      while (v26);
    }
  }

  else
  {
    v9 = 0;
  }

  v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v15];
  v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v20];
  v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v9];
  if (expiredCopy)
  {
    v30 = &unk_2870CAB60;
  }

  else
  {
    v30 = &unk_2870CAB48;
  }

  v31 = [PSCoreAnalyticsIDManager keyForSession:v27 graph:v28 stride:0 task:0 resource:v29 optionalBoolean:v30];

  v32 = [MEMORY[0x277CCABB0] numberWithInt:3];
  opaqueIDForKey = [(PSCoreAnalyticsIDManager *)self opaqueIDForKey];
  stringValue = [v32 stringValue];
  v35 = [opaqueIDForKey objectForKey:stringValue];
  v36 = [v35 objectForKey:v31];

  if (v36)
  {
    intValue = [v36 intValue];
    v38.var0 = [v32 intValue] & 7 | (8 * intValue);
  }

  else
  {
    [PSCoreAnalyticsIDManager sendMissingUniqueIDEventForResource:resourceCopy graph:graphCopy session:sessionCopy];
    v38.var0 = -1;
  }

  return v38.var0;
}

- ($83DE3647E9E26936032982CC3A303C9F)opaqueIDForResource:(id)resource graph:(id)graph stride:(id)stride session:(id)session
{
  v9 = 2166136261;
  resourceCopy = resource;
  graphCopy = graph;
  strideCopy = stride;
  sessionCopy = session;
  uTF8String = [sessionCopy UTF8String];
  if (uTF8String)
  {
    v15 = *uTF8String;
    v16 = 2166136261;
    if (*uTF8String)
    {
      v17 = uTF8String + 1;
      do
      {
        v16 = 16777619 * (v16 ^ v15);
        v18 = *v17++;
        v15 = v18;
      }

      while (v18);
    }
  }

  else
  {
    v16 = 0;
  }

  uTF8String2 = [graphCopy UTF8String];
  if (uTF8String2)
  {
    v20 = *uTF8String2;
    v21 = 2166136261;
    if (*uTF8String2)
    {
      v22 = uTF8String2 + 1;
      do
      {
        v21 = 16777619 * (v21 ^ v20);
        v23 = *v22++;
        v20 = v23;
      }

      while (v23);
    }
  }

  else
  {
    v21 = 0;
  }

  uTF8String3 = [resourceCopy UTF8String];
  if (uTF8String3)
  {
    v25 = *uTF8String3;
    if (*uTF8String3)
    {
      v26 = uTF8String3 + 1;
      do
      {
        v9 = 16777619 * (v9 ^ v25);
        v27 = *v26++;
        v25 = v27;
      }

      while (v27);
    }
  }

  else
  {
    v9 = 0;
  }

  v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v16];
  v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v21];
  v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v9];
  v31 = [PSCoreAnalyticsIDManager keyForSession:v28 graph:v29 stride:strideCopy task:0 resource:v30 optionalBoolean:0];

  v32 = [MEMORY[0x277CCABB0] numberWithInt:2];
  opaqueIDForKey = [(PSCoreAnalyticsIDManager *)self opaqueIDForKey];
  stringValue = [v32 stringValue];
  v35 = [opaqueIDForKey objectForKeyedSubscript:stringValue];
  v36 = [v35 objectForKeyedSubscript:v31];

  if (v36)
  {
    intValue = [v36 intValue];
    v38.var0 = [v32 intValue] & 7 | (8 * intValue);
  }

  else
  {
    [PSCoreAnalyticsIDManager sendMissingUniqueIDEventForResource:resourceCopy graph:graphCopy stride:strideCopy session:sessionCopy];
    v38.var0 = -1;
  }

  return v38.var0;
}

- ($83DE3647E9E26936032982CC3A303C9F)opaqueIDForSession:(id)session graph:(id)graph stride:(id)stride
{
  v8 = 2166136261;
  sessionCopy = session;
  graphCopy = graph;
  strideCopy = stride;
  uTF8String = [sessionCopy UTF8String];
  if (uTF8String)
  {
    v13 = *uTF8String;
    v14 = 2166136261;
    if (*uTF8String)
    {
      v15 = uTF8String + 1;
      do
      {
        v14 = 16777619 * (v14 ^ v13);
        v16 = *v15++;
        v13 = v16;
      }

      while (v16);
    }
  }

  else
  {
    v14 = 0;
  }

  uTF8String2 = [graphCopy UTF8String];
  if (uTF8String2)
  {
    v18 = *uTF8String2;
    if (*uTF8String2)
    {
      v19 = uTF8String2 + 1;
      do
      {
        v8 = 16777619 * (v8 ^ v18);
        v20 = *v19++;
        v18 = v20;
      }

      while (v20);
    }
  }

  else
  {
    v8 = 0;
  }

  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v14];
  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v8];
  v23 = [PSCoreAnalyticsIDManager keyForSession:v21 graph:v22 stride:strideCopy task:0 resource:0 optionalBoolean:0];

  v24 = [MEMORY[0x277CCABB0] numberWithInt:0];
  opaqueIDForKey = [(PSCoreAnalyticsIDManager *)self opaqueIDForKey];
  stringValue = [v24 stringValue];
  v27 = [opaqueIDForKey objectForKeyedSubscript:stringValue];
  v28 = [v27 objectForKeyedSubscript:v23];

  if (v28)
  {
    intValue = [v28 intValue];
    v30.var0 = [v24 intValue] & 7 | (8 * intValue);
  }

  else
  {
    [PSCoreAnalyticsIDManager sendMissingUniqueIDEventForSession:sessionCopy graph:graphCopy stride:strideCopy];
    v30.var0 = -1;
  }

  return v30.var0;
}

- (const)stringForOpaqueID:(id)d
{
  cStringForOpaqueID = [(PSCoreAnalyticsIDManager *)self cStringForOpaqueID];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:d.var0 & 7];
  stringValue = [v5 stringValue];
  v7 = [cStringForOpaqueID objectForKeyedSubscript:stringValue];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:d.var0 >> 3];
  v9 = [v7 objectForKeyedSubscript:v8];
  pointerValue = [v9 pointerValue];

  return pointerValue;
}

- (void)setID:(id)d forDimension:(id)dimension forLogType:(id)type
{
  v41 = *MEMORY[0x277D85DE8];
  dCopy = d;
  dimensionCopy = dimension;
  typeCopy = type;
  v32 = 0;
  v11 = asprintf(&v32, "%s", [dCopy UTF8String]);
  if (v11 < 0)
  {
    v12 = v11;
    log_handle = [(PSCoreAnalyticsIDManager *)self log_handle];
    if (os_log_type_enabled(log_handle, OS_LOG_TYPE_ERROR))
    {
      v31 = strerror(v12);
      *buf = 67109890;
      v34 = v12;
      v35 = 2080;
      v36 = v31;
      v37 = 2112;
      v38 = dCopy;
      v39 = 2112;
      v40 = dimensionCopy;
      _os_log_error_impl(&dword_25EA3A000, log_handle, OS_LOG_TYPE_ERROR, "asprintf returned error %d (%s) for %@ [dimension: %@]", buf, 0x26u);
    }
  }

  opaqueIDForKey = [(PSCoreAnalyticsIDManager *)self opaqueIDForKey];
  v15 = [opaqueIDForKey objectForKey:typeCopy];

  if (!v15)
  {
    opaqueIDForKey2 = [(PSCoreAnalyticsIDManager *)self opaqueIDForKey];
    v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [opaqueIDForKey2 setObject:v17 forKey:typeCopy];

    cStringForOpaqueID = [(PSCoreAnalyticsIDManager *)self cStringForOpaqueID];
    v19 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [cStringForOpaqueID setObject:v19 forKey:typeCopy];
  }

  nextIndex = [(PSCoreAnalyticsIDManager *)self nextIndex];
  opaqueIDForKey3 = [(PSCoreAnalyticsIDManager *)self opaqueIDForKey];
  v22 = [opaqueIDForKey3 objectForKeyedSubscript:typeCopy];
  [v22 setObject:nextIndex forKeyedSubscript:dimensionCopy];

  v23 = [MEMORY[0x277CCAE60] valueWithPointer:v32];
  cStringForOpaqueID2 = [(PSCoreAnalyticsIDManager *)self cStringForOpaqueID];
  v25 = [cStringForOpaqueID2 objectForKeyedSubscript:typeCopy];
  nextIndex2 = [(PSCoreAnalyticsIDManager *)self nextIndex];
  [v25 setObject:v23 forKeyedSubscript:nextIndex2];

  v27 = MEMORY[0x277CCABB0];
  nextIndex3 = [(PSCoreAnalyticsIDManager *)self nextIndex];
  v29 = [v27 numberWithInt:{objc_msgSend(nextIndex3, "intValue") + 1}];
  [(PSCoreAnalyticsIDManager *)self setNextIndex:v29];

  v30 = *MEMORY[0x277D85DE8];
}

@end