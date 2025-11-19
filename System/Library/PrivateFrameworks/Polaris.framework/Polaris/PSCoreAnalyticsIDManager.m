@interface PSCoreAnalyticsIDManager
+ (id)keyForSession:(id)a3 graph:(id)a4 stride:(id)a5 task:(id)a6 resource:(id)a7 optionalBoolean:(id)a8;
+ (id)sharedInstance;
+ (void)sendMissingUniqueIDEventForResource:(id)a3 graph:(id)a4 session:(id)a5;
+ (void)sendMissingUniqueIDEventForResource:(id)a3 graph:(id)a4 stride:(id)a5 session:(id)a6;
+ (void)sendMissingUniqueIDEventForSession:(id)a3 graph:(id)a4 stride:(id)a5;
+ (void)sendMissingUniqueIDEventForTask:(id)a3 graph:(id)a4 stride:(id)a5 session:(id)a6;
- ($83DE3647E9E26936032982CC3A303C9F)opaqueIDForResource:(id)a3 graph:(id)a4 session:(id)a5 bufferExpired:(BOOL)a6;
- ($83DE3647E9E26936032982CC3A303C9F)opaqueIDForResource:(id)a3 graph:(id)a4 stride:(id)a5 session:(id)a6;
- ($83DE3647E9E26936032982CC3A303C9F)opaqueIDForSession:(id)a3 graph:(id)a4 stride:(id)a5;
- ($83DE3647E9E26936032982CC3A303C9F)opaqueIDForTask:(id)a3 graph:(id)a4 stride:(id)a5 session:(id)a6;
- (PSCoreAnalyticsIDManager)initWithIDs:(id)a3;
- (const)stringForOpaqueID:(id)a3;
- (void)dealloc;
- (void)setID:(id)a3 forDimension:(id)a4 forLogType:(id)a5;
@end

@implementation PSCoreAnalyticsIDManager

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__PSCoreAnalyticsIDManager_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
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

- (PSCoreAnalyticsIDManager)initWithIDs:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
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
    obj = [v4 objectForKeyedSubscript:@"ids"];
    v25 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
    if (v25)
    {
      v23 = *v32;
      v24 = v4;
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
          v11 = [v4 objectForKeyedSubscript:@"ids"];
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
          v4 = v24;
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
        v5 = [(PSCoreAnalyticsIDManager *)self cStringForOpaqueID];
        v6 = [v5 objectForKeyedSubscript:v4];

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
              v12 = [(PSCoreAnalyticsIDManager *)self cStringForOpaqueID];
              v13 = [v12 objectForKeyedSubscript:v4];
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

+ (id)keyForSession:(id)a3 graph:(id)a4 stride:(id)a5 task:(id)a6 resource:(id)a7 optionalBoolean:(id)a8
{
  v8 = &stru_2870BCDD8;
  if (a5)
  {
    v9 = a5;
  }

  else
  {
    v9 = &stru_2870BCDD8;
  }

  if (a6)
  {
    v10 = a6;
  }

  else
  {
    v10 = &stru_2870BCDD8;
  }

  if (a7)
  {
    v11 = a7;
  }

  else
  {
    v11 = &stru_2870BCDD8;
  }

  if (a8)
  {
    v8 = a8;
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@%@%@%@%@", v9, a3, a4, v10, v11, v8];
}

+ (void)sendMissingUniqueIDEventForSession:(id)a3 graph:(id)a4 stride:(id)a5
{
  v15[3] = *MEMORY[0x277D85DE8];
  if (a3 && a4 && a5)
  {
    v14[0] = @"session";
    v14[1] = @"graph";
    v15[0] = a3;
    v15[1] = a4;
    v14[2] = @"stride";
    v15[2] = a5;
    v7 = MEMORY[0x277CBEAC0];
    v8 = a5;
    v9 = a4;
    v10 = a3;
    v13 = [v7 dictionaryWithObjects:v15 forKeys:v14 count:3];
    v11 = v13;
    AnalyticsSendEventLazy();
  }

  v12 = *MEMORY[0x277D85DE8];
}

+ (void)sendMissingUniqueIDEventForTask:(id)a3 graph:(id)a4 stride:(id)a5 session:(id)a6
{
  v18[4] = *MEMORY[0x277D85DE8];
  if (a3 && a5 && a4 && a6)
  {
    v17[0] = @"session";
    v17[1] = @"graph";
    v18[0] = a6;
    v18[1] = a4;
    v17[2] = @"stride";
    v17[3] = @"task";
    v18[2] = a5;
    v18[3] = a3;
    v9 = MEMORY[0x277CBEAC0];
    v10 = a6;
    v11 = a5;
    v12 = a4;
    v13 = a3;
    v16 = [v9 dictionaryWithObjects:v18 forKeys:v17 count:4];
    v14 = v16;
    AnalyticsSendEventLazy();
  }

  v15 = *MEMORY[0x277D85DE8];
}

+ (void)sendMissingUniqueIDEventForResource:(id)a3 graph:(id)a4 stride:(id)a5 session:(id)a6
{
  v18[4] = *MEMORY[0x277D85DE8];
  if (a3 && a5 && a4 && a6)
  {
    v17[0] = @"session";
    v17[1] = @"graph";
    v18[0] = a6;
    v18[1] = a4;
    v17[2] = @"stride";
    v17[3] = @"resource";
    v18[2] = a5;
    v18[3] = a3;
    v9 = MEMORY[0x277CBEAC0];
    v10 = a6;
    v11 = a5;
    v12 = a4;
    v13 = a3;
    v16 = [v9 dictionaryWithObjects:v18 forKeys:v17 count:4];
    v14 = v16;
    AnalyticsSendEventLazy();
  }

  v15 = *MEMORY[0x277D85DE8];
}

+ (void)sendMissingUniqueIDEventForResource:(id)a3 graph:(id)a4 session:(id)a5
{
  v15[3] = *MEMORY[0x277D85DE8];
  if (a3 && a4 && a5)
  {
    v14[0] = @"session";
    v14[1] = @"graph";
    v15[0] = a5;
    v15[1] = a4;
    v14[2] = @"resource";
    v15[2] = a3;
    v7 = MEMORY[0x277CBEAC0];
    v8 = a5;
    v9 = a4;
    v10 = a3;
    v13 = [v7 dictionaryWithObjects:v15 forKeys:v14 count:3];
    v11 = v13;
    AnalyticsSendEventLazy();
  }

  v12 = *MEMORY[0x277D85DE8];
}

- ($83DE3647E9E26936032982CC3A303C9F)opaqueIDForTask:(id)a3 graph:(id)a4 stride:(id)a5 session:(id)a6
{
  v9 = 2166136261;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v13 UTF8String];
  if (v14)
  {
    v15 = *v14;
    v16 = 2166136261;
    if (*v14)
    {
      v17 = v14 + 1;
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

  v19 = [v11 UTF8String];
  if (v19)
  {
    v20 = *v19;
    v21 = 2166136261;
    if (*v19)
    {
      v22 = v19 + 1;
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

  v24 = [v10 UTF8String];
  if (v24)
  {
    v25 = *v24;
    if (*v24)
    {
      v26 = v24 + 1;
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
  v31 = [PSCoreAnalyticsIDManager keyForSession:v28 graph:v29 stride:v12 task:v30 resource:0 optionalBoolean:0];

  v32 = [MEMORY[0x277CCABB0] numberWithInt:1];
  v33 = [(PSCoreAnalyticsIDManager *)self opaqueIDForKey];
  v34 = [v32 stringValue];
  v35 = [v33 objectForKey:v34];
  v36 = [v35 objectForKey:v31];

  if (v36)
  {
    v37 = [v36 intValue];
    v38.var0 = [v32 intValue] & 7 | (8 * v37);
  }

  else
  {
    [PSCoreAnalyticsIDManager sendMissingUniqueIDEventForTask:v10 graph:v11 stride:v12 session:v13];
    v38.var0 = -1;
  }

  return v38.var0;
}

- ($83DE3647E9E26936032982CC3A303C9F)opaqueIDForResource:(id)a3 graph:(id)a4 session:(id)a5 bufferExpired:(BOOL)a6
{
  v6 = a6;
  v9 = 2166136261;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [v12 UTF8String];
  if (v13)
  {
    v14 = *v13;
    v15 = 2166136261;
    if (*v13)
    {
      v16 = v13 + 1;
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

  v18 = [v11 UTF8String];
  if (v18)
  {
    v19 = *v18;
    v20 = 2166136261;
    if (*v18)
    {
      v21 = v18 + 1;
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

  v23 = [v10 UTF8String];
  if (v23)
  {
    v24 = *v23;
    if (*v23)
    {
      v25 = v23 + 1;
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
  if (v6)
  {
    v30 = &unk_2870CAB60;
  }

  else
  {
    v30 = &unk_2870CAB48;
  }

  v31 = [PSCoreAnalyticsIDManager keyForSession:v27 graph:v28 stride:0 task:0 resource:v29 optionalBoolean:v30];

  v32 = [MEMORY[0x277CCABB0] numberWithInt:3];
  v33 = [(PSCoreAnalyticsIDManager *)self opaqueIDForKey];
  v34 = [v32 stringValue];
  v35 = [v33 objectForKey:v34];
  v36 = [v35 objectForKey:v31];

  if (v36)
  {
    v37 = [v36 intValue];
    v38.var0 = [v32 intValue] & 7 | (8 * v37);
  }

  else
  {
    [PSCoreAnalyticsIDManager sendMissingUniqueIDEventForResource:v10 graph:v11 session:v12];
    v38.var0 = -1;
  }

  return v38.var0;
}

- ($83DE3647E9E26936032982CC3A303C9F)opaqueIDForResource:(id)a3 graph:(id)a4 stride:(id)a5 session:(id)a6
{
  v9 = 2166136261;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v13 UTF8String];
  if (v14)
  {
    v15 = *v14;
    v16 = 2166136261;
    if (*v14)
    {
      v17 = v14 + 1;
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

  v19 = [v11 UTF8String];
  if (v19)
  {
    v20 = *v19;
    v21 = 2166136261;
    if (*v19)
    {
      v22 = v19 + 1;
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

  v24 = [v10 UTF8String];
  if (v24)
  {
    v25 = *v24;
    if (*v24)
    {
      v26 = v24 + 1;
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
  v31 = [PSCoreAnalyticsIDManager keyForSession:v28 graph:v29 stride:v12 task:0 resource:v30 optionalBoolean:0];

  v32 = [MEMORY[0x277CCABB0] numberWithInt:2];
  v33 = [(PSCoreAnalyticsIDManager *)self opaqueIDForKey];
  v34 = [v32 stringValue];
  v35 = [v33 objectForKeyedSubscript:v34];
  v36 = [v35 objectForKeyedSubscript:v31];

  if (v36)
  {
    v37 = [v36 intValue];
    v38.var0 = [v32 intValue] & 7 | (8 * v37);
  }

  else
  {
    [PSCoreAnalyticsIDManager sendMissingUniqueIDEventForResource:v10 graph:v11 stride:v12 session:v13];
    v38.var0 = -1;
  }

  return v38.var0;
}

- ($83DE3647E9E26936032982CC3A303C9F)opaqueIDForSession:(id)a3 graph:(id)a4 stride:(id)a5
{
  v8 = 2166136261;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [v9 UTF8String];
  if (v12)
  {
    v13 = *v12;
    v14 = 2166136261;
    if (*v12)
    {
      v15 = v12 + 1;
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

  v17 = [v10 UTF8String];
  if (v17)
  {
    v18 = *v17;
    if (*v17)
    {
      v19 = v17 + 1;
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
  v23 = [PSCoreAnalyticsIDManager keyForSession:v21 graph:v22 stride:v11 task:0 resource:0 optionalBoolean:0];

  v24 = [MEMORY[0x277CCABB0] numberWithInt:0];
  v25 = [(PSCoreAnalyticsIDManager *)self opaqueIDForKey];
  v26 = [v24 stringValue];
  v27 = [v25 objectForKeyedSubscript:v26];
  v28 = [v27 objectForKeyedSubscript:v23];

  if (v28)
  {
    v29 = [v28 intValue];
    v30.var0 = [v24 intValue] & 7 | (8 * v29);
  }

  else
  {
    [PSCoreAnalyticsIDManager sendMissingUniqueIDEventForSession:v9 graph:v10 stride:v11];
    v30.var0 = -1;
  }

  return v30.var0;
}

- (const)stringForOpaqueID:(id)a3
{
  v4 = [(PSCoreAnalyticsIDManager *)self cStringForOpaqueID];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a3.var0 & 7];
  v6 = [v5 stringValue];
  v7 = [v4 objectForKeyedSubscript:v6];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a3.var0 >> 3];
  v9 = [v7 objectForKeyedSubscript:v8];
  v10 = [v9 pointerValue];

  return v10;
}

- (void)setID:(id)a3 forDimension:(id)a4 forLogType:(id)a5
{
  v41 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v32 = 0;
  v11 = asprintf(&v32, "%s", [v8 UTF8String]);
  if (v11 < 0)
  {
    v12 = v11;
    v13 = [(PSCoreAnalyticsIDManager *)self log_handle];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v31 = strerror(v12);
      *buf = 67109890;
      v34 = v12;
      v35 = 2080;
      v36 = v31;
      v37 = 2112;
      v38 = v8;
      v39 = 2112;
      v40 = v9;
      _os_log_error_impl(&dword_25EA3A000, v13, OS_LOG_TYPE_ERROR, "asprintf returned error %d (%s) for %@ [dimension: %@]", buf, 0x26u);
    }
  }

  v14 = [(PSCoreAnalyticsIDManager *)self opaqueIDForKey];
  v15 = [v14 objectForKey:v10];

  if (!v15)
  {
    v16 = [(PSCoreAnalyticsIDManager *)self opaqueIDForKey];
    v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v16 setObject:v17 forKey:v10];

    v18 = [(PSCoreAnalyticsIDManager *)self cStringForOpaqueID];
    v19 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v18 setObject:v19 forKey:v10];
  }

  v20 = [(PSCoreAnalyticsIDManager *)self nextIndex];
  v21 = [(PSCoreAnalyticsIDManager *)self opaqueIDForKey];
  v22 = [v21 objectForKeyedSubscript:v10];
  [v22 setObject:v20 forKeyedSubscript:v9];

  v23 = [MEMORY[0x277CCAE60] valueWithPointer:v32];
  v24 = [(PSCoreAnalyticsIDManager *)self cStringForOpaqueID];
  v25 = [v24 objectForKeyedSubscript:v10];
  v26 = [(PSCoreAnalyticsIDManager *)self nextIndex];
  [v25 setObject:v23 forKeyedSubscript:v26];

  v27 = MEMORY[0x277CCABB0];
  v28 = [(PSCoreAnalyticsIDManager *)self nextIndex];
  v29 = [v27 numberWithInt:{objc_msgSend(v28, "intValue") + 1}];
  [(PSCoreAnalyticsIDManager *)self setNextIndex:v29];

  v30 = *MEMORY[0x277D85DE8];
}

@end