@interface SpotlightReceiverConnectionManager
+ (id)sharedInstantManager;
+ (id)sharedScheduledManager;
- (SpotlightReceiverConnectionManager)initWithConnectionInfo:(id)a3 configurationInfo:(id)a4;
- (id)clientConnection:(int64_t)a3;
@end

@implementation SpotlightReceiverConnectionManager

+ (id)sharedInstantManager
{
  if (sharedInstantManager_onceToken != -1)
  {
    +[SpotlightReceiverConnectionManager sharedInstantManager];
  }

  v3 = sharedInstantManager_sInstantConnectionManager;

  return v3;
}

void __58__SpotlightReceiverConnectionManager_sharedInstantManager__block_invoke()
{
  v6[6] = *MEMORY[0x277D85DE8];
  v5[0] = &unk_2846C94D0;
  v5[1] = &unk_2846C94E8;
  v6[0] = @"com.apple.corespotlight.receiver.coreduet";
  v6[1] = @"com.apple.corespotlight.receiver.suggestions";
  v5[2] = &unk_2846C9500;
  v5[3] = &unk_2846C9518;
  v6[2] = @"com.apple.corespotlight.receiver.textunderstandingd";
  v6[3] = @"com.apple.corespotlight.receiver.photos";
  v5[4] = &unk_2846C9530;
  v5[5] = &unk_2846C9548;
  v6[4] = @"com.apple.corespotlight.receiver.images";
  v6[5] = @"com.apple.corespotlight.receiver.corespotlight";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:6];
  v1 = [SpotlightReceiverConnectionManager alloc];
  v2 = [(SpotlightReceiverConnectionManager *)v1 initWithConnectionInfo:v0 configurationInfo:MEMORY[0x277CBEC10]];
  v3 = sharedInstantManager_sInstantConnectionManager;
  sharedInstantManager_sInstantConnectionManager = v2;

  v4 = *MEMORY[0x277D85DE8];
}

+ (id)sharedScheduledManager
{
  if (sharedScheduledManager_onceToken != -1)
  {
    +[SpotlightReceiverConnectionManager sharedScheduledManager];
  }

  v3 = sharedScheduledManager_sScheduledConnectionManager;

  return v3;
}

void __60__SpotlightReceiverConnectionManager_sharedScheduledManager__block_invoke()
{
  v11[1] = *MEMORY[0x277D85DE8];
  v10 = &unk_2846C9500;
  v11[0] = @"com.apple.corespotlight.scheduled.receiver.textunderstandingd";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v1 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@.plist", @"/System/Library/PrivateFrameworks/TextUnderstandingRuntime.framework", @"com.apple.corespotlight.scheduled.receiver.textunderstandingd"];
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = [v2 fileExistsAtPath:v1];

  if (v3)
  {
    v8 = &unk_2846C9500;
    v9 = v1;
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  }

  else
  {
    v4 = MEMORY[0x277CBEC10];
  }

  v5 = [[SpotlightReceiverConnectionManager alloc] initWithConnectionInfo:v0 configurationInfo:v4];
  v6 = sharedScheduledManager_sScheduledConnectionManager;
  sharedScheduledManager_sScheduledConnectionManager = v5;

  v7 = *MEMORY[0x277D85DE8];
}

- (SpotlightReceiverConnectionManager)initWithConnectionInfo:(id)a3 configurationInfo:(id)a4
{
  v47 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v45.receiver = self;
  v45.super_class = SpotlightReceiverConnectionManager;
  v8 = [(SpotlightReceiverConnectionManager *)&v45 init];
  if (v8)
  {
    v9 = objc_alloc_init(SpotlightSenderState);
    state = v8->_state;
    v8->_state = v9;

    v11 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    if ([v11 BOOLForKey:@"CSDisableReceiverLimit"])
    {
      v12 = logForCSLogCategoryDefault();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_231A35000, v12, OS_LOG_TYPE_DEFAULT, "### RECEIVER LIMITS DISABLED with CSDisableReceiverLimit preference ### ", buf, 2u);
      }

      sReceiverRequestMax = 1;
      sReceiverSetupTimeout = 1;
    }

    v36 = v8;
    v38 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v39 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v37 = v6;
    v13 = v6;
    v14 = [v13 countByEnumeratingWithState:&v40 objects:v46 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v41;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v41 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v40 + 1) + 8 * i);
          v19 = [v13 objectForKeyedSubscript:{v18, v36}];
          v20 = [v7 objectForKeyedSubscript:v18];
          v21 = [v18 intValue];
          if (v21 > 2)
          {
            if (v21 == 3)
            {
              if ([v11 BOOLForKey:@"CSDisableBackgroundHarvestingForImages"])
              {
                goto LABEL_34;
              }

              v28 = [SpotlightReceiverConnection alloc];
              v29 = v19;
              v30 = 3;
              goto LABEL_31;
            }

            if (v21 == 4)
            {
              if ([v11 BOOLForKey:@"CSDisableBackgroundHarvestingForAssets"])
              {
                goto LABEL_34;
              }

              v28 = [SpotlightReceiverConnection alloc];
              v29 = v19;
              v30 = 4;
LABEL_31:
              v25 = [(SpotlightReceiverConnection *)v28 initWithServiceName:v29 client:v30 configPath:v20];
              [(SpotlightReceiverConnection *)v25 setWantsText:0];
              v26 = v25;
              v27 = 0;
LABEL_32:
              [(SpotlightReceiverConnection *)v26 setWantsHTML:v27];
LABEL_33:
              [(NSDictionary *)v38 setObject:v25 forKey:v18];
              [(NSArray *)v39 addObject:v19];

              goto LABEL_34;
            }

            if (v21 == 5 && ([v11 BOOLForKey:@"CSDisableBackgroundHarvestingForTextUnderstanding"] & 1) == 0)
            {
              v22 = [SpotlightReceiverConnection alloc];
              v23 = v19;
              v24 = 5;
              goto LABEL_24;
            }
          }

          else
          {
            if (!v21)
            {
              if ([v11 BOOLForKey:@"CSDisableBackgroundHarvestingForTest"])
              {
                goto LABEL_34;
              }

              v22 = [SpotlightReceiverConnection alloc];
              v23 = v19;
              v24 = 0;
LABEL_24:
              v25 = [(SpotlightReceiverConnection *)v22 initWithServiceName:v23 client:v24 configPath:v20];
              [(SpotlightReceiverConnection *)v25 setWantsText:1];
              v26 = v25;
              v27 = 1;
              goto LABEL_32;
            }

            if (v21 == 1)
            {
              if ([v11 BOOLForKey:@"CSDisableBackgroundHarvestingForCoreDuet"])
              {
                goto LABEL_34;
              }

              v25 = [[SpotlightReceiverConnection alloc] initWithServiceName:v19 client:1 configPath:v20];
              [(SpotlightReceiverConnection *)v25 setWantsText:0];
              [(SpotlightReceiverConnection *)v25 setWantsHTML:0];
              [(SpotlightReceiverConnection *)v25 setSkipFileProviderItems:1];
              [(SpotlightReceiverConnection *)v25 setMinDate:CFAbsoluteTimeGetCurrent() + -4838400.0];
              goto LABEL_33;
            }

            if (v21 == 2 && ([v11 BOOLForKey:@"CSDisableBackgroundHarvestingForIntelligentSuggestions"] & 1) == 0)
            {
              v22 = [SpotlightReceiverConnection alloc];
              v23 = v19;
              v24 = 2;
              goto LABEL_24;
            }
          }

LABEL_34:
        }

        v15 = [v13 countByEnumeratingWithState:&v40 objects:v46 count:16];
      }

      while (v15);
    }

    v8 = v36;
    connections = v36->_connections;
    v36->_connections = v38;
    v32 = v38;

    connectionIdentifiers = v36->_connectionIdentifiers;
    v36->_connectionIdentifiers = v39;

    v6 = v37;
  }

  v34 = *MEMORY[0x277D85DE8];
  return v8;
}

- (id)clientConnection:(int64_t)a3
{
  connections = self->_connections;
  if (connections)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
    connections = [connections objectForKeyedSubscript:v6];
  }

  if ([(SpotlightSenderState *)self->_state clientDisabled:a3])
  {
    v7 = 0;
  }

  else
  {
    v7 = connections;
  }

  return v7;
}

@end