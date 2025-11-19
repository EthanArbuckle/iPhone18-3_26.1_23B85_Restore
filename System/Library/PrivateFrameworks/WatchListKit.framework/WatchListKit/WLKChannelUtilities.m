@interface WLKChannelUtilities
+ (BOOL)isItunesBundleID:(id)a3;
+ (id)_validiTunesBundles;
+ (id)sharedInstance;
+ (id)sharedInstanceFiltered;
- (BOOL)isItunesOrFirstPartyBundleID:(id)a3;
- (BOOL)loaded;
- (NSArray)orderedChannels;
- (NSDictionary)channelsByID;
- (WLKChannelUtilities)init;
- (id)_configuration;
- (id)channelForBundleID:(id)a3;
- (id)channelForID:(id)a3;
- (id)channelIDForBundleID:(id)a3;
- (id)initFiltered:(BOOL)a3;
- (void)_loadConfigIfNeededWithCompletion:(id)a3;
- (void)dealloc;
- (void)invalidateCache;
- (void)loadIfNeededWithCompletion:(id)a3;
@end

@implementation WLKChannelUtilities

+ (id)sharedInstanceFiltered
{
  if (sharedInstanceFiltered_onceToken != -1)
  {
    +[WLKChannelUtilities sharedInstanceFiltered];
  }

  v3 = sharedInstanceFiltered_sharedInstanceFiltered;

  return v3;
}

uint64_t __45__WLKChannelUtilities_sharedInstanceFiltered__block_invoke()
{
  sharedInstanceFiltered_sharedInstanceFiltered = [[WLKChannelUtilities alloc] initFiltered:1];

  return MEMORY[0x2821F96F8]();
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_3 != -1)
  {
    +[WLKChannelUtilities sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_2;

  return v3;
}

uint64_t __37__WLKChannelUtilities_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance_2 = [[WLKChannelUtilities alloc] initFiltered:0];

  return MEMORY[0x2821F96F8]();
}

- (id)initFiltered:(BOOL)a3
{
  v11.receiver = self;
  v11.super_class = WLKChannelUtilities;
  v4 = [(WLKChannelUtilities *)&v11 init];
  v5 = v4;
  if (v4)
  {
    v4->_filtered = a3;
    *&v4->_shouldRefresh = 0;
    inFlightcompletionList = v4->_inFlightcompletionList;
    v4->_inFlightcompletionList = 0;

    v5->_lock._os_unfair_lock_opaque = 0;
    error = v5->_error;
    v5->_error = 0;

    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __36__WLKChannelUtilities_initFiltered___block_invoke;
    handler[3] = &unk_279E5F5B8;
    v10 = v5;
    notify_register_dispatch("com.apple.WatchListKit._WLKChannelUtilitesDataShouldRefreshInternal", &v5->_shouldRefreshNotificationToken, MEMORY[0x277D85CD0], handler);
  }

  return v5;
}

void __36__WLKChannelUtilities_initFiltered___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  state64 = 0;
  v2 = getpid();
  notify_get_state(*(*(a1 + 32) + 32), &state64);
  if (state64 != v2)
  {
    v3 = WLKSystemLogObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v7 = v2;
      v8 = 2048;
      v9 = state64;
      _os_log_impl(&dword_272A0F000, v3, OS_LOG_TYPE_DEFAULT, "WLKChannelUtilities - Set refresh=YES for next request in process=%llu., Triggered from process=%llu", buf, 0x16u);
    }

    os_unfair_lock_lock((*(a1 + 32) + 40));
    *(*(a1 + 32) + 36) = 1;
    os_unfair_lock_unlock((*(a1 + 32) + 40));
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (WLKChannelUtilities)init
{
  [MEMORY[0x277CBEAD8] raise:@"WLKChannelUtilitiesException" format:@"-init not supported"];

  return 0;
}

- (void)loadIfNeededWithCompletion:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [WLKChannelUtilities loadIfNeededWithCompletion:];
  }

  v5 = v4;
  [(WLKChannelUtilities *)self _loadConfigIfNeededWithCompletion:v4];
}

- (void)dealloc
{
  shouldRefreshNotificationToken = self->_shouldRefreshNotificationToken;
  if (shouldRefreshNotificationToken)
  {
    notify_cancel(shouldRefreshNotificationToken);
  }

  v4.receiver = self;
  v4.super_class = WLKChannelUtilities;
  [(WLKChannelUtilities *)&v4 dealloc];
}

- (BOOL)loaded
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(WLKChannelsResponse *)self->_cachedResponse isValidForFiltered:self->_filtered];
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (NSDictionary)channelsByID
{
  v2 = [(WLKChannelUtilities *)self _configuration];
  v3 = [v2 channels];

  return v3;
}

- (id)channelForID:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(WLKChannelUtilities *)self _configuration];
    v6 = [v5 channels];
    v7 = [v6 objectForKeyedSubscript:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)channelForBundleID:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 length])
  {
    v5 = [objc_opt_class() _validiTunesBundles];
    v6 = [v5 containsObject:v4];

    if (v6)
    {
      v7 = [(WLKChannelUtilities *)self channelForID:@"tvs.sbd.9001"];
    }

    else
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v8 = [(WLKChannelUtilities *)self _configuration];
      v9 = [v8 orderedChannels];

      v7 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v7)
      {
        v10 = *v18;
        while (2)
        {
          for (i = 0; i != v7; i = i + 1)
          {
            if (*v18 != v10)
            {
              objc_enumerationMutation(v9);
            }

            v12 = *(*(&v17 + 1) + 8 * i);
            v13 = [v12 appBundleIDs];
            v14 = [v13 containsObject:v4];

            if (v14)
            {
              v7 = v12;
              goto LABEL_15;
            }
          }

          v7 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
          if (v7)
          {
            continue;
          }

          break;
        }
      }

LABEL_15:
    }
  }

  else
  {
    v7 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)channelIDForBundleID:(id)a3
{
  v3 = [(WLKChannelUtilities *)self channelForBundleID:a3];
  v4 = [v3 channelID];

  return v4;
}

- (NSArray)orderedChannels
{
  v2 = [(WLKChannelUtilities *)self _configuration];
  v3 = [v2 orderedChannels];

  return v3;
}

+ (BOOL)isItunesBundleID:(id)a3
{
  v4 = a3;
  v5 = [a1 _validiTunesBundles];
  v6 = [v5 containsObject:v4];

  return v6;
}

+ (id)_validiTunesBundles
{
  if (_validiTunesBundles_onceToken != -1)
  {
    +[WLKChannelUtilities _validiTunesBundles];
  }

  v3 = _validiTunesBundles___validItunesIDs;

  return v3;
}

void __42__WLKChannelUtilities__validiTunesBundles__block_invoke()
{
  v0 = _validiTunesBundles___validItunesIDs;
  _validiTunesBundles___validItunesIDs = &unk_288222F48;
}

- (BOOL)isItunesOrFirstPartyBundleID:(id)a3
{
  v4 = a3;
  if ([objc_opt_class() isItunesBundleID:v4])
  {
    v5 = 1;
  }

  else
  {
    v6 = [(WLKChannelUtilities *)self channelForBundleID:v4];
    v5 = [v6 isFirstParty];
  }

  return v5;
}

- (id)_configuration
{
  v3 = dispatch_semaphore_create(0);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __37__WLKChannelUtilities__configuration__block_invoke;
  v8[3] = &unk_279E60058;
  v9 = v3;
  v4 = v3;
  [(WLKChannelUtilities *)self _loadConfigIfNeededWithCompletion:v8];
  v5 = dispatch_time(0, 10000000000);
  dispatch_semaphore_wait(v4, v5);
  os_unfair_lock_lock(&self->_lock);
  v6 = self->_cachedResponse;
  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

- (void)_loadConfigIfNeededWithCompletion:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [WLKChannelUtilities _loadConfigIfNeededWithCompletion:];
  }

  v5 = v4;
  os_unfair_lock_lock(&self->_lock);
  if (self->_shouldRefresh || ![(WLKChannelsResponse *)self->_cachedResponse isValidForFiltered:self->_filtered])
  {
    isChannelsInProgress = self->_isChannelsInProgress;
    v7 = WLKSystemLogObject();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (isChannelsInProgress)
    {
      if (v8)
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_272A0F000, v7, OS_LOG_TYPE_DEFAULT, "WLKChannelUtilities - WLKChannelsRequestOperation in progress. Adding completion to pending list.", buf, 2u);
      }

      inFlightcompletionList = self->_inFlightcompletionList;
      v10 = MEMORY[0x2743D2DF0](v5);
      [(NSMutableArray *)inFlightcompletionList addObject:v10];

      os_unfair_lock_unlock(&self->_lock);
    }

    else
    {
      if (v8)
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_272A0F000, v7, OS_LOG_TYPE_DEFAULT, "WLKChannelUtilities - WLKChannelsRequestOperation starting.", buf, 2u);
      }

      *&self->_shouldRefresh = 256;
      v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v12 = self->_inFlightcompletionList;
      self->_inFlightcompletionList = v11;

      v13 = self->_inFlightcompletionList;
      v14 = MEMORY[0x2743D2DF0](v5);
      [(NSMutableArray *)v13 addObject:v14];

      v15 = [[WLKChannelsRequestOperation alloc] initWithCaller:0 isFilteredByUserChannels:self->_filtered];
      os_unfair_lock_unlock(&self->_lock);
      v16 = objc_alloc_init(MEMORY[0x277CCABD8]);
      objc_initWeak(buf, self);
      objc_initWeak(&location, v15);
      v17 = MEMORY[0x277D85DD0];
      v18 = 3221225472;
      v19 = __57__WLKChannelUtilities__loadConfigIfNeededWithCompletion___block_invoke;
      v20 = &unk_279E60238;
      objc_copyWeak(&v22, buf);
      objc_copyWeak(&v23, &location);
      v21 = self;
      [(WLKChannelsRequestOperation *)v15 setCompletionBlock:&v17];
      [v16 addOperation:{v15, v17, v18, v19, v20}];
      objc_destroyWeak(&v23);
      objc_destroyWeak(&v22);
      objc_destroyWeak(&location);
      objc_destroyWeak(buf);
    }
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
    v5[2](v5, 1, 0);
  }
}

void __57__WLKChannelUtilities__loadConfigIfNeededWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = objc_loadWeakRetained((a1 + 48));
  v4 = v3;
  if (WeakRetained && v3)
  {
    v5 = WLKSystemLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_272A0F000, v5, OS_LOG_TYPE_DEFAULT, "WLKChannelUtilities - WLKChannelsRequestOperation completed. Processing response.", buf, 2u);
    }

    os_unfair_lock_lock((*(a1 + 32) + 40));
    v6 = [v4 channelsResponse];
    v7 = *(WeakRetained + 3);
    *(WeakRetained + 3) = v6;

    v8 = [v4 error];
    v9 = *(WeakRetained + 7);
    *(WeakRetained + 7) = v8;

    *(WeakRetained + 37) = 0;
    v10 = [*(WeakRetained + 6) copy];
    v11 = *(WeakRetained + 6);
    *(WeakRetained + 6) = 0;

    os_unfair_lock_unlock((*(a1 + 32) + 40));
    v12 = WLKSystemLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&dword_272A0F000, v12, OS_LOG_TYPE_DEFAULT, "WLKChannelUtilities - Calling pending completion list with result.", v17, 2u);
    }

    if ([v10 count])
    {
      v13 = 0;
      do
      {
        v14 = [v10 objectAtIndexedSubscript:v13];
        v15 = [v4 channelsResponse];
        v16 = [v4 error];
        (v14)[2](v14, v15 != 0, v16);

        ++v13;
      }

      while (v13 < [v10 count]);
    }
  }
}

- (void)invalidateCache
{
  v3 = WLKSystemLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_272A0F000, v3, OS_LOG_TYPE_DEFAULT, "WLKChannelUtilities - Posting channel data should refresh for cross processes note", v6, 2u);
  }

  shouldRefreshNotificationToken = self->_shouldRefreshNotificationToken;
  v5 = getpid();
  notify_set_state(shouldRefreshNotificationToken, v5);
  notify_post("com.apple.WatchListKit._WLKChannelUtilitesDataShouldRefreshInternal");
}

@end