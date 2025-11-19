@interface SDNetworkQualityInquiry
+ (SDNetworkQualityInquiry)sharedInstance;
- (BOOL)areKnownNetworksReady;
- (SDNetworkQualityInquiry)init;
- (unint64_t)getNetworkQuality;
- (void)dealloc;
- (void)didStartTrackingNOI:(id)a3;
- (void)didStopTrackingAllNOIs:(id)a3;
- (void)didStopTrackingNOI:(id)a3;
@end

@implementation SDNetworkQualityInquiry

+ (SDNetworkQualityInquiry)sharedInstance
{
  if (sharedInstance_onceToken_1 != -1)
  {
    +[SDNetworkQualityInquiry sharedInstance];
  }

  v3 = sharedInstance_sharedSelf;

  return v3;
}

void __41__SDNetworkQualityInquiry_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(SDNetworkQualityInquiry);
  v1 = sharedInstance_sharedSelf;
  sharedInstance_sharedSelf = v0;

  if (!sharedInstance_sharedSelf)
  {
    v2 = SPLogForSPLogCategoryDefault();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __41__SDNetworkQualityInquiry_sharedInstance__block_invoke_cold_1(v2);
    }
  }
}

- (SDNetworkQualityInquiry)init
{
  v11.receiver = self;
  v11.super_class = SDNetworkQualityInquiry;
  v2 = [(SDNetworkQualityInquiry *)&v11 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69D53E0]);
    manager = v2->_manager;
    v2->_manager = v3;

    if (!v2->_manager)
    {
      v9 = 0;
      goto LABEL_6;
    }

    v5 = dispatch_queue_create("com.apple.searchd.networkqualityinquiry", 0);
    queue = v2->_queue;
    v2->_queue = v5;

    [(NWNetworkOfInterestManager *)v2->_manager setQueue:v2->_queue];
    [(NWNetworkOfInterestManager *)v2->_manager setDelegate:v2];
    v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    knownNetworks = v2->_knownNetworks;
    v2->_knownNetworks = v7;

    [(NWNetworkOfInterestManager *)v2->_manager trackNOIAnyForInterfaceType:2 options:0];
    [(NWNetworkOfInterestManager *)v2->_manager trackNOIAnyForInterfaceType:1 options:0];
    [(NWNetworkOfInterestManager *)v2->_manager trackNOIAnyForInterfaceType:3 options:0];
  }

  v9 = v2;
LABEL_6:

  return v9;
}

- (void)dealloc
{
  [(NWNetworkOfInterestManager *)self->_manager setDelegate:0];
  [(NWNetworkOfInterestManager *)self->_manager destroy];
  v3.receiver = self;
  v3.super_class = SDNetworkQualityInquiry;
  [(SDNetworkQualityInquiry *)&v3 dealloc];
}

- (BOOL)areKnownNetworksReady
{
  v3 = [(SDNetworkQualityInquiry *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(SDNetworkQualityInquiry *)self knownNetworks];
  LOBYTE(v3) = [v4 count] == 3;

  return v3;
}

- (void)didStartTrackingNOI:(id)a3
{
  v4 = a3;
  v5 = [(SDNetworkQualityInquiry *)self knownNetworks];
  [v5 addObject:v4];
}

- (void)didStopTrackingNOI:(id)a3
{
  v4 = a3;
  v5 = [(SDNetworkQualityInquiry *)self knownNetworks];
  [v5 removeObject:v4];

  v7 = [(SDNetworkQualityInquiry *)self manager];
  v6 = [v4 interface];

  [v7 trackNOIAnyForInterfaceType:v6 options:0];
}

- (void)didStopTrackingAllNOIs:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(SDNetworkQualityInquiry *)self didStopTrackingNOI:*(*(&v10 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (unint64_t)getNetworkQuality
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 3;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __44__SDNetworkQualityInquiry_getNetworkQuality__block_invoke;
  v5[3] = &unk_1E82F9460;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __44__SDNetworkQualityInquiry_getNetworkQuality__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) areKnownNetworksReady])
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v2 = [*(a1 + 32) knownNetworks];
    v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v11;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v11 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v10 + 1) + 8 * i);
          if ([v7 linkQuality] == 100)
          {
            *(*(*(a1 + 40) + 8) + 24) = 0;
          }

          else
          {
            [v7 linkQuality];
            if ([v7 linkQuality] == 20)
            {
              v8 = *(*(a1 + 40) + 8);
              if (!*(v8 + 24))
              {
                *(v8 + 24) = 2;
              }
            }
          }
        }

        v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v4);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

@end