@interface LiveLinkHandler
+ (id)configureClass:(id)a3;
+ (id)sharedInstance;
- (BOOL)excludeLocalFlowsTrackingOnInterface:(id)a3;
- (BOOL)includeLocalFlowsTrackingOnInterface:(id)a3;
- (BOOL)noteSymptom:(id)a3;
- (BOOL)startTrackingLiveLinkOnInterface:(id)a3;
- (BOOL)stopTrackingLiveLinkOnInterface:(id)a3;
@end

@implementation LiveLinkHandler

- (BOOL)startTrackingLiveLinkOnInterface:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 length])
  {
    v4 = liveLinkObservers;
    if (!liveLinkObservers)
    {
      v5 = [MEMORY[0x277CBEB38] dictionary];
      v6 = liveLinkObservers;
      liveLinkObservers = v5;

      v4 = liveLinkObservers;
    }

    v7 = [v4 objectForKeyedSubscript:v3];
    if (v7)
    {
      v8 = v7;
      v9 = liveLinkLogHandle;
      if (os_log_type_enabled(liveLinkLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138412290;
        v14 = v3;
        _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEFAULT, "Already observing health of interface %@", &v13, 0xCu);
      }

      v10 = 0;
    }

    else
    {
      v8 = [[LiveLinkObserver alloc] initWithInterfaceName:v3];
      v10 = [(LiveLinkObserver *)v8 startTracking];
      [liveLinkObservers setObject:v8 forKeyedSubscript:v3];
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)stopTrackingLiveLinkOnInterface:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = 0;
  if ([v3 length] && liveLinkObservers)
  {
    v5 = [liveLinkObservers objectForKeyedSubscript:v3];
    v6 = v5;
    if (v5)
    {
      v4 = [v5 stopTracking];
      [liveLinkObservers setObject:0 forKeyedSubscript:v3];
    }

    else
    {
      v7 = liveLinkLogHandle;
      v4 = 0;
      if (os_log_type_enabled(liveLinkLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138412290;
        v12 = v3;
        _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEFAULT, "Not currently observing health of interface %@", &v11, 0xCu);
        v4 = 0;
      }
    }

    if (![liveLinkObservers count])
    {
      v8 = liveLinkObservers;
      liveLinkObservers = 0;
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return v4;
}

- (BOOL)includeLocalFlowsTrackingOnInterface:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 length])
  {
    v4 = [liveLinkObservers objectForKeyedSubscript:v3];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 enableLocalFlowsTracking];
    }

    else
    {
      v7 = liveLinkLogHandle;
      if (os_log_type_enabled(liveLinkLogHandle, OS_LOG_TYPE_ERROR))
      {
        v10 = 138412290;
        v11 = v3;
        _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_ERROR, "Not currently observing health of interface %@", &v10, 0xCu);
      }

      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)excludeLocalFlowsTrackingOnInterface:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 length])
  {
    v4 = [liveLinkObservers objectForKeyedSubscript:v3];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 disableLocalFlowsTracking];
    }

    else
    {
      v7 = liveLinkLogHandle;
      if (os_log_type_enabled(liveLinkLogHandle, OS_LOG_TYPE_ERROR))
      {
        v10 = 138412290;
        v11 = v3;
        _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_ERROR, "Not currently observing health of interface %@", &v10, 0xCu);
      }

      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)noteSymptom:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 eventKey];
  v6 = [SymptomStore keyFromSymptomName:@"SYMPTOM_START_TRACKING_LIVE_LINK"];
  v7 = [v5 isEqualToString:v6];

  if (v7)
  {
    v8 = [v4 eventQualifierStringForKey:@"0"];
    v9 = [(LiveLinkHandler *)self startTrackingLiveLinkOnInterface:v8];
    v10 = liveLinkLogHandle;
    if (os_log_type_enabled(liveLinkLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412546;
      v18 = v8;
      v19 = 1024;
      v20 = v9;
      v11 = "Request to start flows tracking on %@: started = %d";
LABEL_7:
      _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEFAULT, v11, &v17, 0x12u);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v12 = [SymptomStore keyFromSymptomName:@"SYMPTOM_STOP_TRACKING_LIVE_LINK"];
  v13 = [v5 isEqualToString:v12];

  if (v13)
  {
    v8 = [v4 eventQualifierStringForKey:@"0"];
    v14 = [(LiveLinkHandler *)self stopTrackingLiveLinkOnInterface:v8];
    v10 = liveLinkLogHandle;
    if (os_log_type_enabled(liveLinkLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412546;
      v18 = v8;
      v19 = 1024;
      v20 = v14;
      v11 = "Request to stop flows tracking on %@: stopped = %d";
      goto LABEL_7;
    }

LABEL_8:
  }

  v15 = *MEMORY[0x277D85DE8];
  return 0;
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__LiveLinkHandler_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_pred_19 != -1)
  {
    dispatch_once(&sharedInstance_pred_19, block);
  }

  v2 = sharedInstance_sharedInstance_19;

  return v2;
}

void __33__LiveLinkHandler_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance_sharedInstance_19;
  sharedInstance_sharedInstance_19 = v1;

  v3 = sharedInstance_sharedInstance_19;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [ConfigurationHandler setConfigurationObject:v3 forName:v5];
}

+ (id)configureClass:(id)a3
{
  v3 = a3;
  v4 = +[LiveLinkHandler sharedInstance];
  [v4 configureInstance:v3];

  return v4;
}

@end