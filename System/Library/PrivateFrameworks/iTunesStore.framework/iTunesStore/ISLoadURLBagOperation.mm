@interface ISLoadURLBagOperation
+ (id)_executedNetworkRequests;
+ (id)_networkCounters;
+ (id)_networkSynchronyQueue;
+ (id)storeFrontHeaderSuffix;
+ (id)storeFrontHeaderSuffixForBundleIdentifier:(id)a3;
+ (void)_addStoreFrontHeaderSuffix:(id)a3 forBundleIdentifier:(id)a4;
+ (void)decrementNetworkCounterForBagContext:(id)a3;
+ (void)incrementNetworkCounterForBagContext:(id)a3;
- (BOOL)_setURLBagWithDictionary:(id)a3 response:(id)a4 error:(id *)a5;
- (BOOL)operation:(id)a3 shouldSetStoreFrontID:(id)a4;
- (ISLoadURLBagOperation)init;
- (ISLoadURLBagOperation)initWithBagContext:(id)a3;
- (ISURLBag)URLBag;
- (id)uniqueKey;
- (void)_addHeadersToRequestProperties:(id)a3;
- (void)_postBagDidLoadNotificationWithURLBag:(id)a3;
- (void)_sendPingsForURLBag:(id)a3;
- (void)_setOutputURLBag:(id)a3;
- (void)operation:(id)a3 willSendRequest:(id)a4;
- (void)run;
@end

@implementation ISLoadURLBagOperation

- (ISLoadURLBagOperation)init
{
  v3 = objc_alloc_init(MEMORY[0x277D69C90]);
  [v3 setBagType:0];
  v4 = [(ISLoadURLBagOperation *)self initWithBagContext:v3];

  return v4;
}

- (ISLoadURLBagOperation)initWithBagContext:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ISLoadURLBagOperation;
  v5 = [(ISOperation *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    context = v5->_context;
    v5->_context = v6;
  }

  return v5;
}

+ (void)decrementNetworkCounterForBagContext:(id)a3
{
  v4 = [a3 cacheKey];
  if ([v4 length])
  {
    v5 = [a1 _networkSynchronyQueue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __62__ISLoadURLBagOperation_decrementNetworkCounterForBagContext___block_invoke;
    v6[3] = &unk_27A670AA0;
    v8 = a1;
    v7 = v4;
    dispatch_sync(v5, v6);
  }
}

void __62__ISLoadURLBagOperation_decrementNetworkCounterForBagContext___block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 40) _networkCounters];
  v2 = [v6 objectForKeyedSubscript:*(a1 + 32)];
  if (v2)
  {
    v3 = v2;
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v2, "unsignedIntegerValue") - 1}];

    if (![v4 unsignedIntegerValue])
    {
      v5 = [*(a1 + 40) _executedNetworkRequests];
      [v5 removeObject:*(a1 + 32)];

      v4 = &unk_2884CA8D8;
    }

    [v6 setObject:v4 forKeyedSubscript:*(a1 + 32)];
  }
}

+ (void)incrementNetworkCounterForBagContext:(id)a3
{
  v4 = [a3 cacheKey];
  if ([v4 length])
  {
    v5 = [a1 _networkSynchronyQueue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __62__ISLoadURLBagOperation_incrementNetworkCounterForBagContext___block_invoke;
    v6[3] = &unk_27A670AA0;
    v8 = a1;
    v7 = v4;
    dispatch_sync(v5, v6);
  }
}

void __62__ISLoadURLBagOperation_incrementNetworkCounterForBagContext___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 40) _networkCounters];
  v2 = [v5 objectForKeyedSubscript:*(a1 + 32)];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = &unk_2884CA8D8;
  }

  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v3, "unsignedIntegerValue") + 1}];

  [v5 setObject:v4 forKeyedSubscript:*(a1 + 32)];
}

+ (id)storeFrontHeaderSuffix
{
  v3 = [MEMORY[0x277CCA8D8] mainBundle];
  v4 = [v3 bundleIdentifier];
  v5 = [a1 storeFrontHeaderSuffixForBundleIdentifier:v4];

  return v5;
}

+ (id)storeFrontHeaderSuffixForBundleIdentifier:(id)a3
{
  v3 = a3;
  if ([v3 length])
  {
    v4 = CFPreferencesCopyValue(@"ISURLBagStorefrontHeaderSuffixes", *MEMORY[0x277D6A708], *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
    v5 = [v4 objectForKeyedSubscript:v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (ISURLBag)URLBag
{
  [(ISOperation *)self lock];
  v3 = self->_outputBag;
  [(ISOperation *)self unlock];

  return v3;
}

- (void)run
{
  v87 = *MEMORY[0x277D85DE8];
  +[ISURLOperation sharedCFURLCache];
  v3 = +[ISURLBagCache sharedCache];
  v4 = [(ISLoadURLBagOperation *)self context];
  v5 = [v3 URLBagForContext:v4];
  if (v5)
  {
    v6 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!v6)
    {
      v6 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v7 = [v6 shouldLog];
    if ([v6 shouldLogToDisk])
    {
      v8 = v7 | 2;
    }

    else
    {
      v8 = v7;
    }

    v9 = [v6 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = v8;
    }

    else
    {
      v10 = v8 & 2;
    }

    if (v10)
    {
      v11 = objc_opt_class();
      v12 = v11;
      [v4 cacheKey];
      *v85 = 138412546;
      *&v85[4] = v11;
      *&v85[14] = *&v85[12] = 2112;
      LODWORD(v68) = 22;
      v13 = _os_log_send_and_compose_impl();

      if (v13)
      {
        v14 = [MEMORY[0x277CCACA8] stringWithCString:v13 encoding:{4, v85, v68}];
        free(v13);
        SSFileLog();
      }
    }

    else
    {
    }

    [(ISLoadURLBagOperation *)self _setOutputURLBag:v5];
    [(ISOperation *)self setSuccess:1];
    goto LABEL_77;
  }

  if (![v4 usesCachedBagsOnly])
  {
    *v85 = 0;
    *&v85[8] = v85;
    *&v85[16] = 0x2020000000;
    v86 = 0;
    v23 = [objc_opt_class() _networkSynchronyQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __28__ISLoadURLBagOperation_run__block_invoke;
    block[3] = &unk_27A670AC8;
    v24 = v4;
    v78 = v24;
    v79 = self;
    v80 = v85;
    dispatch_sync(v23, block);

    if ((*(*&v85[8] + 24) & 1) == 0)
    {

LABEL_76:
      _Block_object_dispose(v85, 8);
      goto LABEL_77;
    }

    v25 = objc_alloc_init(ISStoreURLOperation);
    [(ISOperation *)v25 setDelegate:self];
    [(ISStoreURLOperation *)v25 setNeedsURLBag:0];
    [(ISStoreURLOperation *)v25 setShouldAppendAuthKitHeaders:0];
    [(ISURLOperation *)v25 setTracksPerformanceMetrics:SSDebugShouldTrackPerformance()];
    [(ISStoreURLOperation *)v25 setURLBagRequest:1];
    [(ISStoreURLOperation *)v25 setUrlKnownToBeTrusted:1];
    v26 = [(ISLoadURLBagOperation *)self accountDSID];
    [(ISURLOperation *)v25 _setAccountDSIDOverride:v26];

    v27 = +[(ISDataProvider *)ISProtocolDataProvider];
    [v27 setShouldProcessProtocol:0];
    [(ISURLOperation *)v25 setDataProvider:v27];
    v72 = v27;
    v28 = objc_alloc(MEMORY[0x277D69BD0]);
    v29 = [ISURLBagCache URLWithBagContext:v24];
    v74 = [v28 initWithURL:v29];

    [v74 setAllowedRetryCount:0];
    if ([v24 allowsBootstrapCellularData])
    {
      [v74 setAllowsBootstrapCellularData:1];
    }

    v30 = [v24 clientAuditTokenData];
    v31 = v30 == 0;

    if (!v31)
    {
      v32 = [v24 clientAuditTokenData];
      [v74 setClientAuditTokenData:v32];
    }

    if ([v24 ignoresCaches])
    {
      [v74 setCachePolicy:1];
    }

    [v74 setITunesStoreRequest:1];
    [(ISLoadURLBagOperation *)self _addHeadersToRequestProperties:v74];
    [(ISURLOperation *)v25 setRequestProperties:v74];
    v76 = 0;
    v33 = [(ISOperation *)self runSubOperation:v25 returningError:&v76];
    v34 = v76;
    v35 = v34;
    if (v33)
    {
      v36 = [v72 output];
      v37 = [(ISURLOperation *)v25 response];
      v75 = v35;
      v38 = [(ISLoadURLBagOperation *)self _setURLBagWithDictionary:v36 response:v37 error:&v75];
      v73 = v75;

      if (v38)
      {
        v39 = 1;
        goto LABEL_55;
      }
    }

    else
    {
      v73 = v34;
    }

    if ([v24 bagType] != 2)
    {
      v39 = 0;
      goto LABEL_55;
    }

    v40 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!v40)
    {
      v40 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v41 = [v40 shouldLog];
    v42 = [v40 shouldLogToDisk];
    v43 = [v40 OSLogObject];
    v44 = v43;
    if (v42)
    {
      v41 |= 2u;
    }

    if (!os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
    {
      v41 &= 2u;
    }

    if (v41)
    {
      v45 = objc_opt_class();
      v81 = 138412290;
      v82 = v45;
      v71 = v45;
      LODWORD(v68) = 12;
      v67 = &v81;
      v46 = _os_log_send_and_compose_impl();

      if (!v46)
      {
LABEL_51:

        v47 = [[ISURLBag alloc] initWithURLBagContext:v24];
        v39 = v47 != 0;
        if (v47)
        {
          [v3 addURLBag:v47];
        }

LABEL_55:
        [(ISOperation *)self setError:v73, v67];
        [(ISOperation *)self setSuccess:v39];
        [(ISOperation *)v25 setDelegate:0];
        if (!self->_outputBag)
        {
LABEL_75:

          goto LABEL_76;
        }

        v48 = [v24 clientBundleIdentifier];
        v49 = v48;
        if (v48)
        {
          v50 = v48;
        }

        else
        {
          v51 = [MEMORY[0x277CCA8D8] mainBundle];
          v50 = [v51 bundleIdentifier];
        }

        if (![v50 isEqualToString:@"com.apple.itunesstored"] || (objc_msgSend(v24, "cacheKey"), v52 = objc_claimAutoreleasedReturnValue(), v53 = objc_msgSend(v52, "containsString:", @"itunesstored"), v52, (v53 & 1) != 0))
        {
LABEL_74:
          v64 = objc_opt_class();
          v65 = [(ISURLBag *)self->_outputBag valueForKey:@"storefront-header-suffix"];
          [v64 _addStoreFrontHeaderSuffix:v65 forBundleIdentifier:v50];

          goto LABEL_75;
        }

        v54 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
        if (!v54)
        {
          v54 = [MEMORY[0x277D69B38] sharedConfig];
        }

        v55 = v54;
        v56 = [v54 shouldLog];
        v57 = [v55 shouldLogToDisk];
        v70 = v55;
        v58 = [v55 OSLogObject];
        v59 = v58;
        if (v57)
        {
          v56 |= 2u;
        }

        if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
        {
          v60 = v56;
        }

        else
        {
          v60 = v56 & 2;
        }

        if (v60)
        {
          v61 = v70;
          v69 = objc_opt_class();
          v62 = [v24 cacheKey];
          v81 = 138412546;
          v82 = v69;
          v83 = 2112;
          v84 = v62;
          LODWORD(v68) = 22;
          v63 = _os_log_send_and_compose_impl();

          if (!v63)
          {
LABEL_73:

            v50 = 0;
            goto LABEL_74;
          }

          v59 = [MEMORY[0x277CCACA8] stringWithCString:v63 encoding:{4, &v81, v68}];
          free(v63);
          SSFileLog();
        }

        else
        {
          v61 = v70;
        }

        goto LABEL_73;
      }

      v44 = [MEMORY[0x277CCACA8] stringWithCString:v46 encoding:{4, &v81, v68}];
      free(v46);
      v67 = v44;
      SSFileLog();
    }

    goto LABEL_51;
  }

  v15 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!v15)
  {
    v15 = [MEMORY[0x277D69B38] sharedConfig];
  }

  v16 = [v15 shouldLog];
  if ([v15 shouldLogToDisk])
  {
    v17 = v16 | 2;
  }

  else
  {
    v17 = v16;
  }

  v18 = [v15 OSLogObject];
  if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v17 &= 2u;
  }

  if (v17)
  {
    v19 = objc_opt_class();
    v20 = v19;
    [v4 cacheKey];
    *v85 = 138412546;
    *&v85[4] = v19;
    *&v85[14] = *&v85[12] = 2112;
    LODWORD(v68) = 22;
    v21 = _os_log_send_and_compose_impl();

    if (v21)
    {
      v22 = [MEMORY[0x277CCACA8] stringWithCString:v21 encoding:{4, v85, v68}];
      free(v21);
      SSFileLog();
    }
  }

  else
  {
  }

LABEL_77:
  v66 = *MEMORY[0x277D85DE8];
}

void __28__ISLoadURLBagOperation_run__block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) cacheKey];
  if ([v2 length])
  {
    v3 = *(a1 + 40);
    v4 = [objc_opt_class() _networkCounters];
    v5 = [v4 objectForKeyedSubscript:v2];

    if (v5 && ![v5 isEqualToNumber:&unk_2884CA8D8])
    {
      v6 = *(a1 + 40);
      v7 = [objc_opt_class() _executedNetworkRequests];
      v8 = [v7 containsObject:v2];

      if (v8)
      {
        v9 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
        if (!v9)
        {
          v9 = [MEMORY[0x277D69B38] sharedConfig];
        }

        v10 = [v9 shouldLog];
        if ([v9 shouldLogToDisk])
        {
          v11 = v10 | 2;
        }

        else
        {
          v11 = v10;
        }

        v12 = [v9 OSLogObject];
        if (!os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v11 &= 2u;
        }

        if (v11)
        {
          v13 = *(a1 + 40);
          *v20 = 138543618;
          *&v20[4] = objc_opt_class();
          *&v20[12] = 2112;
          *&v20[14] = v2;
          v14 = *&v20[4];
          LODWORD(v19) = 22;
          v15 = _os_log_send_and_compose_impl();

          if (!v15)
          {
LABEL_16:

LABEL_19:
            goto LABEL_20;
          }

          v12 = [MEMORY[0x277CCACA8] stringWithCString:v15 encoding:{4, v20, v19, *v20, *&v20[16]}];
          free(v15);
          SSFileLog();
        }

        goto LABEL_16;
      }

      v16 = *(a1 + 40);
      v17 = [objc_opt_class() _executedNetworkRequests];
      [v17 addObject:v2];
    }

    *(*(*(a1 + 48) + 8) + 24) = 1;
    goto LABEL_19;
  }

LABEL_20:

  v18 = *MEMORY[0x277D85DE8];
}

- (id)uniqueKey
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(ISLoadURLBagOperation *)self context];
  v4 = [v3 cacheKey];
  v5 = [v2 stringWithFormat:@"com.apple.iTunesStore.LoadURLBag-%@", v4];

  return v5;
}

- (BOOL)operation:(id)a3 shouldSetStoreFrontID:(id)a4
{
  v4 = [(ISLoadURLBagOperation *)self context:a3];
  v5 = [v4 bagType] != 1;

  return v5;
}

- (void)operation:(id)a3 willSendRequest:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a4;
  v5 = [v4 valueForHTTPHeaderField:@"X-Apple-Synched-Store-Front"];
  if (v5)
  {
    v6 = *MEMORY[0x277D6A708];
    v7 = CFPreferencesCopyAppValue(@"LastSynchedStoreFront", *MEMORY[0x277D6A708]);
    if (([v5 isEqualToString:v7] & 1) == 0)
    {
      [v4 setValue:0 forHTTPHeaderField:*MEMORY[0x277D6A190]];
      CFPreferencesSetAppValue(@"LastSynchedStoreFront", v5, v6);
      CFPreferencesAppSynchronize(v6);
    }
  }

  v22 = v5;
  v8 = [v4 allHTTPHeaderFields];
  v9 = ISDictionaryValueForCaseInsensitiveString(v8, @"Cookie");

  v10 = [v9 componentsSeparatedByString:@""];;
  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v12 = v10;
  v13 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v24;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v24 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v23 + 1) + 8 * i);
        v18 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
        v19 = [v17 stringByTrimmingCharactersInSet:v18];

        if (([v19 hasPrefix:@"xp_ci"] & 1) == 0)
        {
          [v11 addObject:v19];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v14);
  }

  v20 = [v11 componentsJoinedByString:@" "];;
  [v4 setValue:v20 forHTTPHeaderField:@"Cookie"];

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_addHeadersToRequestProperties:(id)a3
{
  v6 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v5 = [(SSURLBagContext *)self->_context allHTTPHeaders];
  if (v5)
  {
    [v4 addEntriesFromDictionary:v5];
  }

  if ([v4 count])
  {
    [v6 setHTTPHeaders:v4];
  }
}

+ (void)_addStoreFrontHeaderSuffix:(id)a3 forBundleIdentifier:(id)a4
{
  v9 = a3;
  v5 = a4;
  if ([v5 length])
  {
    v6 = *MEMORY[0x277D6A708];
    v7 = CFPreferencesCopyValue(@"ISURLBagStorefrontHeaderSuffixes", *MEMORY[0x277D6A708], *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
    v8 = [v7 mutableCopy];
    if (!v8)
    {
      v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    }

    if ([v9 length])
    {
      [v8 setObject:v9 forKey:v5];
    }

    else
    {
      [v8 removeObjectForKey:v5];
    }

    if (([v8 isEqualToDictionary:v7] & 1) == 0)
    {
      CFPreferencesSetAppValue(@"ISURLBagStorefrontHeaderSuffixes", v8, v6);
      CFPreferencesAppSynchronize(v6);
    }
  }
}

+ (id)_executedNetworkRequests
{
  v2 = [a1 _networkSynchronyQueue];
  dispatch_assert_queue_V2(v2);

  if (_executedNetworkRequests_ams_once_token___COUNTER__ != -1)
  {
    +[ISLoadURLBagOperation _executedNetworkRequests];
  }

  v3 = _executedNetworkRequests_ams_once_object___COUNTER__;

  return v3;
}

uint64_t __49__ISLoadURLBagOperation__executedNetworkRequests__block_invoke()
{
  _executedNetworkRequests_ams_once_object___COUNTER__ = objc_alloc_init(MEMORY[0x277CBEB18]);

  return MEMORY[0x2821F96F8]();
}

+ (id)_networkCounters
{
  v2 = [a1 _networkSynchronyQueue];
  dispatch_assert_queue_V2(v2);

  if (_networkCounters_ams_once_token___COUNTER__ != -1)
  {
    +[ISLoadURLBagOperation _networkCounters];
  }

  v3 = _networkCounters_ams_once_object___COUNTER__;

  return v3;
}

uint64_t __41__ISLoadURLBagOperation__networkCounters__block_invoke()
{
  _networkCounters_ams_once_object___COUNTER__ = objc_alloc_init(MEMORY[0x277CBEB38]);

  return MEMORY[0x2821F96F8]();
}

+ (id)_networkSynchronyQueue
{
  if (_networkSynchronyQueue_ams_once_token___COUNTER__ != -1)
  {
    +[ISLoadURLBagOperation _networkSynchronyQueue];
  }

  v3 = _networkSynchronyQueue_ams_once_object___COUNTER__;

  return v3;
}

uint64_t __47__ISLoadURLBagOperation__networkSynchronyQueue__block_invoke()
{
  _networkSynchronyQueue_ams_once_object___COUNTER__ = dispatch_queue_create("com.apple.iTunesStore.ISLoadURLBagOperation._networkSynchrony", 0);

  return MEMORY[0x2821F96F8]();
}

- (void)_postBagDidLoadNotificationWithURLBag:(id)a3
{
  v3 = MEMORY[0x277CCAB98];
  v4 = a3;
  v5 = [v3 defaultCenter];
  v6 = [v5 mainThreadProxy];

  [v6 postNotificationName:@"ISURLBagDidLoadNotification" object:v4];
}

- (void)_sendPingsForURLBag:(id)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = [a3 valueForKey:@"pingUrls"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (_sendPingsForURLBag__sOnce != -1)
    {
      [ISLoadURLBagOperation _sendPingsForURLBag:];
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = v3;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v31 objects:v39 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v32;
      v8 = 0x277CCA000uLL;
      v9 = 0x277CBE000uLL;
      v10 = 0x277D69000uLL;
      do
      {
        v11 = 0;
        v30 = v6;
        do
        {
          if (*v32 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v12 = *(*(&v31 + 1) + 8 * v11);
          v13 = *(v8 + 3240);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v14 = [objc_alloc(*(v9 + 3008)) initWithString:v12];
            if (v14)
            {
              v15 = [*(v10 + 2872) sharediTunesStoreConfig];
              if (!v15)
              {
                v15 = [*(v10 + 2872) sharedConfig];
              }

              v16 = [v15 shouldLog];
              if ([v15 shouldLogToDisk])
              {
                v16 |= 2u;
              }

              v17 = [v15 OSLogObject];
              if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
              {
                v16 &= 2u;
              }

              if (v16)
              {
                v18 = objc_opt_class();
                v35 = 138412546;
                v36 = v18;
                v37 = 2112;
                v38 = v14;
                v19 = v7;
                v20 = v8;
                v21 = v4;
                v22 = v9;
                v23 = v18;
                LODWORD(v28) = 22;
                v27 = &v35;
                v24 = _os_log_send_and_compose_impl();

                v9 = v22;
                v4 = v21;
                v8 = v20;
                v7 = v19;
                v10 = 0x277D69000;

                if (v24)
                {
                  v17 = [*(v8 + 3240) stringWithCString:v24 encoding:{4, &v35, v28}];
                  free(v24);
                  v27 = v17;
                  SSFileLog();
                  goto LABEL_20;
                }
              }

              else
              {
LABEL_20:
              }

              v25 = [ISStoreURLOperation pingOperationWithUrl:v14];
              [v25 setNeedsURLBag:0];
              [_sendPingsForURLBag__sPingQueue addOperation:v25];

              v6 = v30;
            }
          }

          ++v11;
        }

        while (v6 != v11);
        v6 = [v4 countByEnumeratingWithState:&v31 objects:v39 count:16];
      }

      while (v6);
    }

    v3 = v29;
  }

  v26 = *MEMORY[0x277D85DE8];
}

uint64_t __45__ISLoadURLBagOperation__sendPingsForURLBag___block_invoke()
{
  v0 = objc_alloc_init(ISOperationQueue);
  v1 = _sendPingsForURLBag__sPingQueue;
  _sendPingsForURLBag__sPingQueue = v0;

  [_sendPingsForURLBag__sPingQueue setAdjustsMaxConcurrentOperationCount:0];
  [_sendPingsForURLBag__sPingQueue setMaxConcurrentOperationCount:1];
  v2 = _sendPingsForURLBag__sPingQueue;

  return [v2 setName:@"com.apple.iTunesStore.URLBagPingQueue"];
}

- (void)_setOutputURLBag:(id)a3
{
  v4 = a3;
  [(ISOperation *)self lock];
  outputBag = self->_outputBag;
  self->_outputBag = v4;

  [(ISOperation *)self unlock];
}

- (BOOL)_setURLBagWithDictionary:(id)a3 response:(id)a4 error:(id *)a5
{
  v43 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a3;
  v10 = objc_alloc_init(ISURLBag);
  v11 = [(ISLoadURLBagOperation *)self context];
  [(ISURLBag *)v10 setURLBagContext:v11];
  v36 = 0;
  v12 = [(ISURLBag *)v10 loadFromDictionary:v9 returningError:&v36];

  v13 = v36;
  if (v12)
  {
    [v8 itunes_expirationInterval];
    [(ISURLBag *)v10 setInvalidationTimeWithExprationInterval:?];
    if (SSIsDaemon())
    {
      if (![v11 bagType])
      {
        v14 = [v11 userIdentifier];

        if (!v14)
        {
          v15 = MEMORY[0x277D69A80];
          v16 = [(ISURLBag *)v10 availableStorefrontItemKinds];
          LODWORD(v15) = [v15 setCachedAvailableItemKinds:v16];

          if (v15)
          {
            CFPreferencesSynchronize(*MEMORY[0x277CBF008], *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
          }
        }
      }
    }

    v17 = [v8 allHeaderFields];
    v18 = ISDictionaryValueForCaseInsensitiveString(v17, *MEMORY[0x277D6A1D0]);
    if (!v18)
    {
      v18 = ISDictionaryValueForCaseInsensitiveString(v17, *MEMORY[0x277D6A180]);
    }

    [(ISURLBag *)v10 setStoreFrontIdentifier:v18];
    v19 = +[ISURLBagCache sharedCache];
    [v19 addURLBag:v10];

    [(ISLoadURLBagOperation *)self _postBagDidLoadNotificationWithURLBag:v10];
    [(ISLoadURLBagOperation *)self _setOutputURLBag:v10];
    [(ISLoadURLBagOperation *)self _sendPingsForURLBag:v10];

    goto LABEL_25;
  }

  v34 = a5;
  v35 = v12;
  v20 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!v20)
  {
    v20 = [MEMORY[0x277D69B38] sharedConfig];
  }

  v21 = [v20 shouldLog];
  if ([v20 shouldLogToDisk])
  {
    v22 = v21 | 2;
  }

  else
  {
    v22 = v21;
  }

  v23 = [v20 OSLogObject];
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    v24 = v22;
  }

  else
  {
    v24 = v22 & 2;
  }

  if (v24)
  {
    v25 = objc_opt_class();
    v26 = v25;
    v27 = [v8 URL];
    v37 = 138412802;
    v38 = v25;
    v39 = 2112;
    v40 = v27;
    v41 = 2112;
    v42 = v13;
    LODWORD(v33) = 32;
    v28 = _os_log_send_and_compose_impl();

    v29 = v34;
    if (!v28)
    {
      goto LABEL_23;
    }

    v23 = [MEMORY[0x277CCACA8] stringWithCString:v28 encoding:{4, &v37, v33}];
    free(v28);
    SSFileLog();
  }

  else
  {
    v29 = a5;
  }

LABEL_23:
  v12 = v35;
  if (v29)
  {
    v30 = v13;
    *v29 = v13;
  }

LABEL_25:

  v31 = *MEMORY[0x277D85DE8];
  return v12;
}

@end