@interface ISURLBagCache
+ (id)URLWithBagContext:(id)context;
+ (id)sharedCache;
- (ISURLBagCache)init;
- (id)URLBagForContext:(id)context;
- (id)_newRequestWithURLBagContext:(id)context;
- (void)_storeFrontChangedNotification:(id)notification;
- (void)addURLBag:(id)bag;
- (void)dealloc;
- (void)invalidateAllURLBags;
- (void)invalidateURLBagForContext:(id)context;
@end

@implementation ISURLBagCache

- (ISURLBagCache)init
{
  v11.receiver = self;
  v11.super_class = ISURLBagCache;
  v2 = [(ISURLBagCache *)&v11 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277D69B28]) initWithMaxSize:5];
    cachedBags = v2->_cachedBags;
    v2->_cachedBags = v3;

    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.iTunesStore.ISURLBagCache.%p", v2];
    v6 = dispatch_queue_create([v5 UTF8String], 0);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v6;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__storeFrontChangedNotification_ name:*MEMORY[0x277D69E18] object:0];
    if ((SSIsDaemon() & 1) == 0)
    {
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, __InvalidateBagsNotification, *MEMORY[0x277D6A6F0], 0, CFNotificationSuspensionBehaviorCoalesce);
    }
  }

  return v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D69E18] object:0];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, *MEMORY[0x277D6A6F0], 0);

  v5.receiver = self;
  v5.super_class = ISURLBagCache;
  [(ISURLBagCache *)&v5 dealloc];
}

+ (id)sharedCache
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __28__ISURLBagCache_sharedCache__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedCache_sOnce != -1)
  {
    dispatch_once(&sharedCache_sOnce, block);
  }

  v2 = sharedCache_sCache;

  return v2;
}

uint64_t __28__ISURLBagCache_sharedCache__block_invoke(uint64_t a1)
{
  sharedCache_sCache = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

+ (id)URLWithBagContext:(id)context
{
  v37 = *MEMORY[0x277D85DE8];
  bagType = [context bagType];
  v4 = *MEMORY[0x277D6A708];
  if (bagType == 1)
  {
    v5 = CFPreferencesCopyAppValue(@"SandboxSessionURL", v4);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = @"https://sandbox.itunes.apple.com/bag.xml?ix=6";
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  v5 = CFPreferencesCopyAppValue(@"InitiateSessionURL", v4);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
LABEL_5:
    v6 = v5;
    goto LABEL_7;
  }

  v6 = @"https://init.itunes.apple.com/bag.xml?ix=6";
LABEL_7:
  v7 = [(__CFString *)v6 mutableCopy];

  currentDevice = [MEMORY[0x277D69A80] currentDevice];
  productVersion = [currentDevice productVersion];
  v10 = [productVersion componentsSeparatedByString:@"."];

  if ([v10 count])
  {
    v11 = [v10 objectAtIndex:0];
    [v7 appendFormat:@"&%@=%@", @"os", v11];
  }

  deviceIsAudioAccessory = [MEMORY[0x277D69A80] deviceIsAudioAccessory];
  v13 = *MEMORY[0x277CBF008];
  v14 = *MEMORY[0x277CBF040];
  v15 = *MEMORY[0x277CBF010];
  if (!deviceIsAudioAccessory)
  {
    goto LABEL_35;
  }

  v16 = CFPreferencesCopyValue(@"AppleLocaleSetup", *MEMORY[0x277CBF008], *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
  mEMORY[0x277D69B38]2 = mEMORY[0x277D69B38];
  if (v16)
  {
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog = [mEMORY[0x277D69B38]2 shouldLog];
    if ([mEMORY[0x277D69B38]2 shouldLogToDisk])
    {
      v20 = shouldLog | 2;
    }

    else
    {
      v20 = shouldLog;
    }

    oSLogObject = [mEMORY[0x277D69B38]2 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v20 &= 2u;
    }

    if (v20)
    {
      v22 = objc_opt_class();
      v23 = v22;
      v24 = SSHashIfNeeded();
      *v36 = 138543618;
      *&v36[4] = v22;
      *&v36[12] = 2114;
      *&v36[14] = v24;
      LODWORD(v35) = 22;
      v34 = v36;
      v25 = _os_log_send_and_compose_impl();

      if (!v25)
      {
LABEL_22:

        goto LABEL_36;
      }

      oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v25 encoding:{4, v36, v35}];
      free(v25);
      v34 = oSLogObject;
      SSFileLog();
    }

    goto LABEL_22;
  }

  if (!mEMORY[0x277D69B38])
  {
    mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog2 = [mEMORY[0x277D69B38]2 shouldLog];
  if ([mEMORY[0x277D69B38]2 shouldLogToDisk])
  {
    v27 = shouldLog2 | 2;
  }

  else
  {
    v27 = shouldLog2;
  }

  oSLogObject2 = [mEMORY[0x277D69B38]2 OSLogObject];
  if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
  {
    v27 &= 2u;
  }

  if (!v27)
  {
    goto LABEL_33;
  }

  *v36 = 138543362;
  *&v36[4] = objc_opt_class();
  v29 = *&v36[4];
  LODWORD(v35) = 12;
  v34 = v36;
  v30 = _os_log_send_and_compose_impl();

  if (v30)
  {
    oSLogObject2 = [MEMORY[0x277CCACA8] stringWithCString:v30 encoding:{4, v36, v35, *v36}];
    free(v30);
    v34 = oSLogObject2;
    SSFileLog();
LABEL_33:
  }

LABEL_35:
  v16 = CFPreferencesCopyValue(@"AppleLocale", v13, v14, v15);
LABEL_36:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v7 appendFormat:@"&%@=%@", @"locale", v16];
  }

  v31 = [MEMORY[0x277CBEBC0] URLWithString:{v7, v34}];

  v32 = *MEMORY[0x277D85DE8];

  return v31;
}

- (void)addURLBag:(id)bag
{
  bagCopy = bag;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __27__ISURLBagCache_addURLBag___block_invoke;
  v7[3] = &unk_27A670868;
  v8 = bagCopy;
  selfCopy = self;
  v6 = bagCopy;
  dispatch_async(dispatchQueue, v7);
}

void __27__ISURLBagCache_addURLBag___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) URLBagContext];
  v3 = [v2 cacheKey];
  if (v3)
  {
    [*(*(a1 + 40) + 8) setObject:*(a1 + 32) forKey:v3];
    v4 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!v4)
    {
      v4 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v5 = [v4 shouldLog];
    if ([v4 shouldLogToDisk])
    {
      v6 = v5 | 2;
    }

    else
    {
      v6 = v5;
    }

    v7 = [v4 OSLogObject];
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v6 &= 2u;
    }

    if (v6)
    {
      v8 = *(a1 + 40);
      *v13 = 138412546;
      *&v13[4] = objc_opt_class();
      *&v13[12] = 2112;
      *&v13[14] = v3;
      v9 = *&v13[4];
      LODWORD(v12) = 22;
      v10 = _os_log_send_and_compose_impl();

      if (!v10)
      {
LABEL_13:

        goto LABEL_14;
      }

      v7 = [MEMORY[0x277CCACA8] stringWithCString:v10 encoding:{4, v13, v12, *v13, *&v13[16]}];
      free(v10);
      SSFileLog();
    }

    goto LABEL_13;
  }

LABEL_14:

  v11 = *MEMORY[0x277D85DE8];
}

- (void)invalidateAllURLBags
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__ISURLBagCache_invalidateAllURLBags__block_invoke;
  block[3] = &unk_27A670818;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void __37__ISURLBagCache_invalidateAllURLBags__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) allObjectsAndKeys];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __37__ISURLBagCache_invalidateAllURLBags__block_invoke_2;
  v3[3] = &unk_27A6715A8;
  v3[4] = *(a1 + 32);
  [v2 enumerateKeysAndObjectsUsingBlock:v3];
}

void __37__ISURLBagCache_invalidateAllURLBags__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 setInvalidationTime:-1.79769313e308];
  }

  else
  {
    [*(*(a1 + 32) + 8) setObject:0 forKey:v6];
  }
}

- (void)invalidateURLBagForContext:(id)context
{
  contextCopy = context;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__ISURLBagCache_invalidateURLBagForContext___block_invoke;
  block[3] = &unk_27A670868;
  v6 = contextCopy;
  v12 = v6;
  selfCopy = self;
  dispatch_async(dispatchQueue, block);
  v7 = dispatch_get_global_queue(0, 0);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __44__ISURLBagCache_invalidateURLBagForContext___block_invoke_2;
  v9[3] = &unk_27A670868;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(v7, v9);
}

void __44__ISURLBagCache_invalidateURLBagForContext___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) cacheKey];
  [*(*(a1 + 40) + 8) setObject:0 forKey:v2];
}

void __44__ISURLBagCache_invalidateURLBagForContext___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) _newRequestWithURLBagContext:*(a1 + 40)];
  if (+[ISURLOperation sharedCFURLCache])
  {
    [v1 _CFURLRequest];
    CFURLCacheRemoveCachedResponseForRequest();
  }
}

- (id)URLBagForContext:(id)context
{
  contextCopy = context;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__14;
  v17 = __Block_byref_object_dispose__14;
  v18 = 0;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__ISURLBagCache_URLBagForContext___block_invoke;
  block[3] = &unk_27A6715D0;
  selfCopy = self;
  v12 = &v13;
  v10 = contextCopy;
  v6 = contextCopy;
  dispatch_sync(dispatchQueue, block);
  v7 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v7;
}

void __34__ISURLBagCache_URLBagForContext___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  if (([*(a1 + 32) ignoresCaches] & 1) == 0)
  {
    v2 = [*(a1 + 32) cacheKey];
    v3 = [*(*(a1 + 40) + 8) objectForKey:v2];
    v4 = *(*(a1 + 48) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v6 = *(*(*(a1 + 48) + 8) + 40);
    if (!v6 || ([v6 isValid] & 1) != 0 || (objc_msgSend(*(a1 + 32), "allowsExpiredBags") & 1) != 0)
    {
      goto LABEL_17;
    }

    v7 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!v7)
    {
      v7 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v8 = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      v9 = v8 | 2;
    }

    else
    {
      v9 = v8;
    }

    v10 = [v7 OSLogObject];
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v9 &= 2u;
    }

    if (v9)
    {
      v11 = *(a1 + 40);
      LODWORD(v18) = 138412290;
      *(&v18 + 4) = objc_opt_class();
      v12 = *(&v18 + 4);
      LODWORD(v17) = 12;
      v13 = _os_log_send_and_compose_impl();

      if (!v13)
      {
LABEL_16:

        v14 = *(*(a1 + 48) + 8);
        v15 = *(v14 + 40);
        *(v14 + 40) = 0;

LABEL_17:
        goto LABEL_18;
      }

      v10 = [MEMORY[0x277CCACA8] stringWithCString:v13 encoding:{4, &v18, v17, v18}];
      free(v13);
      SSFileLog();
    }

    goto LABEL_16;
  }

LABEL_18:
  v16 = *MEMORY[0x277D85DE8];
}

- (void)_storeFrontChangedNotification:(id)notification
{
  v13 = *MEMORY[0x277D85DE8];
  mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!mEMORY[0x277D69B38])
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog = [mEMORY[0x277D69B38] shouldLog];
  if ([mEMORY[0x277D69B38] shouldLogToDisk])
  {
    v6 = shouldLog | 2;
  }

  else
  {
    v6 = shouldLog;
  }

  oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
  {
    v6 &= 2u;
  }

  if (!v6)
  {
    goto LABEL_11;
  }

  LODWORD(v12) = 138412290;
  *(&v12 + 4) = objc_opt_class();
  v8 = *(&v12 + 4);
  LODWORD(v11) = 12;
  v9 = _os_log_send_and_compose_impl();

  if (v9)
  {
    oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v9 encoding:{4, &v12, v11, v12}];
    free(v9);
    SSFileLog();
LABEL_11:
  }

  [(ISURLBagCache *)self invalidateAllURLBags];
  v10 = *MEMORY[0x277D85DE8];
}

- (id)_newRequestWithURLBagContext:(id)context
{
  contextCopy = context;
  v4 = [objc_opt_class() URLWithBagContext:contextCopy];
  v5 = [objc_alloc(MEMORY[0x277CCAB70]) initWithURL:v4];
  allHTTPHeaders = [contextCopy allHTTPHeaders];
  if (allHTTPHeaders)
  {
    [v5 setAllHTTPHeaderFields:allHTTPHeaders];
  }

  [contextCopy bagType];
  accountScope = SSAccountScopeForURLBagType();
  userIdentifier = [contextCopy userIdentifier];
  if (userIdentifier)
  {
    uniqueIdentifier = userIdentifier;
  }

  else
  {
    defaultStore = [MEMORY[0x277D69A20] defaultStore];
    activeAccount = [defaultStore activeAccount];
    uniqueIdentifier = [activeAccount uniqueIdentifier];

    defaultStore2 = [MEMORY[0x277D69A20] defaultStore];
    activeAccount2 = [defaultStore2 activeAccount];
    accountScope = [activeAccount2 accountScope];
  }

  clientBundleIdentifier = [contextCopy clientBundleIdentifier];
  [ISStoreURLOperation _addiTunesStoreHeadersToRequest:v5 withURLBag:0 accountIdentifier:uniqueIdentifier appendAuthKitHeaders:1 appendStorefrontToURL:0 clientBundleIdentifier:clientBundleIdentifier];

  mEMORY[0x277D69CB8] = [MEMORY[0x277D69CB8] sharedStorage];
  v16 = [mEMORY[0x277D69CB8] cookieHeadersForURL:v4 userIdentifier:uniqueIdentifier scope:accountScope];

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __46__ISURLBagCache__newRequestWithURLBagContext___block_invoke;
  v24[3] = &unk_27A6715F8;
  v17 = v5;
  v25 = v17;
  [v16 enumerateKeysAndObjectsUsingBlock:v24];
  v18 = *MEMORY[0x277D6A130];
  v19 = [v17 valueForHTTPHeaderField:*MEMORY[0x277D6A130]];

  if (!v19)
  {
    v20 = +[ISClient currentClient];
    userAgent = [v20 userAgent];

    if (userAgent)
    {
LABEL_10:
      [v17 setValue:userAgent forHTTPHeaderField:v18];

      goto LABEL_11;
    }

    v22 = +[ISURLOperation copyUserAgent];
    if (v22)
    {
      userAgent = v22;
      goto LABEL_10;
    }
  }

LABEL_11:

  return v17;
}

@end