@interface WBSBiomeDonationManager
+ (WBSBiomeDonationManager)sharedManager;
+ (int64_t)entityComponentTypeFromResult:(id)a3;
- (BOOL)donateForDiagnosticLoggingKey:(id)a3 value:(id)a4 webPageLoadedOverPrivateRelay:(BOOL)a5;
- (WBSBiomeDonationManager)init;
- (_WBSBiomeStream)_windowProxyStream;
- (id)_autoPlayStream;
- (id)_browsingAssistantStream;
- (id)_getVisualComponentAttributeFromComponentType:(int64_t)a3;
- (id)_navigationsStream;
- (id)_pageLoadStream;
- (id)_webAppInFocusStream;
- (id)_webPagePerformanceStream;
- (id)_websitesBlockingQuitStream;
- (int)_biomeDeviceClassForUserAgent:(int64_t)a3;
- (int)_biomePageLoadDeviceClassForUserAgent:(int64_t)a3;
- (int)_biomeSignalForAutoPlaySignal:(int64_t)a3;
- (int)_biomeWebAppInFocusWebAppTypeForWebAppType:(int64_t)a3;
- (int)_webPerformanceEventForDiagnosticLoggingKey:(id)a3;
- (void)_clearEventsDonatedSinceDate:(id)a3;
- (void)_donateBrowsingAssistantEvents:(id)a3 dimensionContext:(id)a4 bloomFilterPassed:(id)a5 eligible:(id)a6 webpageUrlSent:(id)a7 serverRequest:(id)a8 render:(id)a9 userInteraction:(id)a10;
- (void)_donateWebPagePerformanceEventWithEvent:(int)a3 domain:(id)a4 webPageLoadedOverPrivateRelay:(BOOL)a5;
- (void)clearEventsDonatedSinceDate:(id)a3;
- (void)donateAutoPlayEventWithSignal:(int64_t)a3 domain:(id)a4 countryCode:(id)a5 webPageLoadedOverPrivateRelay:(BOOL)a6;
- (void)donateBrowsingAssistantBloomFilterPassedEventWithWebPageID:(id)a3;
- (void)donateBrowsingAssistantEligibleEventWithWebPageID:(id)a3;
- (void)donateBrowsingAssistantReaderEventWithWebPageID:(id)a3 eventType:(int64_t)a4 dataToReport:(id)a5;
- (void)donateBrowsingAssistantServerRequestEndedEventWithWebPageID:(id)a3 requestIdentifier:(id)a4;
- (void)donateBrowsingAssistantServerRequestFailedEventWithWebPageID:(id)a3 requestIdentifier:(id)a4;
- (void)donateBrowsingAssistantServerRequestStartedEventWithWebPageID:(id)a3 requestIdentifier:(id)a4 requestType:(int64_t)a5;
- (void)donateBrowsingAssistantUserInteractionDetectedWithWebPageID:(id)a3 componentType:(int64_t)a4 componentIdentifier:(id)a5 tableOfContentsArrayLength:(id)a6 tableOfContentsTextIndex:(id)a7 readerSectionExpanded:(BOOL)a8;
- (void)donateBrowsingAssistantVisualComponentPresentationEndedWithWebPageID:(id)a3 componentType:(int64_t)a4 componentIdentifier:(id)a5 hideReason:(int64_t)a6;
- (void)donateBrowsingAssistantVisualComponentPresentationStartedWithWebPageID:(id)a3 componentType:(int64_t)a4 componentIdentifier:(id)a5 tableOfContentsArrayLength:(id)a6;
- (void)donateBrowsingAssistantWebPageStartedEventWithWebPageID:(id)a3;
- (void)donateBrowsingAssistantWebpageURLSentWithWebPageID:(id)a3 urlSent:(id)a4;
- (void)donateNavigationWithURL:(id)a3 userAgent:(int64_t)a4 wasPrivateRelayed:(BOOL)a5 privateRelayVendorName:(id)a6 statusCode:(int64_t)a7;
- (void)donatePageLoadWithUserAgent:(int64_t)a3 wasSearch:(BOOL)a4 wasPrivateBrowsing:(BOOL)a5 wasActualized:(BOOL)a6 provenance:(int64_t)a7;
- (void)donateWebAppInFocusEventWithStarting:(BOOL)a3 date:(id)a4 webAppType:(int64_t)a5 identifier:(id)a6 name:(id)a7 manifestId:(id)a8;
- (void)donateWebsiteBlockingQuit:(id)a3 blockingReason:(int64_t)a4;
@end

@implementation WBSBiomeDonationManager

+ (WBSBiomeDonationManager)sharedManager
{
  if (sharedManager_onceToken_0 != -1)
  {
    +[WBSBiomeDonationManager sharedManager];
  }

  v3 = sharedManager_manager;

  return v3;
}

void __40__WBSBiomeDonationManager_sharedManager__block_invoke()
{
  v0 = objc_alloc_init(WBSBiomeDonationManager);
  v1 = sharedManager_manager;
  sharedManager_manager = v0;
}

- (WBSBiomeDonationManager)init
{
  v10.receiver = self;
  v10.super_class = WBSBiomeDonationManager;
  v2 = [(WBSBiomeDonationManager *)&v10 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.WBSBiomeDonationManager.%@.%p._streamAccessQueue", objc_opt_class(), v2];
    v4 = [v3 UTF8String];
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create(v4, v5);
    streamAccessQueue = v2->_streamAccessQueue;
    v2->_streamAccessQueue = v6;

    v8 = v2;
  }

  return v2;
}

- (id)_autoPlayStream
{
  autoPlayStream = self->_autoPlayStream;
  if (!autoPlayStream)
  {
    v4 = [_WBSBiomeStream alloc];
    v5 = [(_WBSBiomeStream *)v4 initWithIdentifier:*MEMORY[0x1E698EA48]];
    v6 = self->_autoPlayStream;
    self->_autoPlayStream = v5;

    autoPlayStream = self->_autoPlayStream;
  }

  return autoPlayStream;
}

- (id)_navigationsStream
{
  navigationsStream = self->_navigationsStream;
  if (!navigationsStream)
  {
    v4 = [_WBSBiomeStream alloc];
    v5 = [(_WBSBiomeStream *)v4 initWithIdentifier:*MEMORY[0x1E698EA58]];
    v6 = self->_navigationsStream;
    self->_navigationsStream = v5;

    navigationsStream = self->_navigationsStream;
  }

  return navigationsStream;
}

- (id)_webPagePerformanceStream
{
  webPagePerformanceStream = self->_webPagePerformanceStream;
  if (!webPagePerformanceStream)
  {
    v4 = [_WBSBiomeStream alloc];
    v5 = [(_WBSBiomeStream *)v4 initWithIdentifier:*MEMORY[0x1E698EA68]];
    v6 = self->_webPagePerformanceStream;
    self->_webPagePerformanceStream = v5;

    webPagePerformanceStream = self->_webPagePerformanceStream;
  }

  return webPagePerformanceStream;
}

- (id)_websitesBlockingQuitStream
{
  websitesBlockingQuitStream = self->_websitesBlockingQuitStream;
  if (!websitesBlockingQuitStream)
  {
    v4 = [_WBSBiomeStream alloc];
    v5 = [(_WBSBiomeStream *)v4 initWithIdentifier:*MEMORY[0x1E698EA70]];
    v6 = self->_websitesBlockingQuitStream;
    self->_websitesBlockingQuitStream = v5;

    websitesBlockingQuitStream = self->_websitesBlockingQuitStream;
  }

  return websitesBlockingQuitStream;
}

- (id)_webAppInFocusStream
{
  webAppInFocusStream = self->_webAppInFocusStream;
  if (!webAppInFocusStream)
  {
    v4 = [_WBSBiomeStream alloc];
    v5 = [(_WBSBiomeStream *)v4 initWithIdentifier:*MEMORY[0x1E698EA40]];
    v6 = self->_webAppInFocusStream;
    self->_webAppInFocusStream = v5;

    webAppInFocusStream = self->_webAppInFocusStream;
  }

  return webAppInFocusStream;
}

- (id)_pageLoadStream
{
  pageLoadStream = self->_pageLoadStream;
  if (!pageLoadStream)
  {
    v4 = [_WBSBiomeStream alloc];
    v5 = [(_WBSBiomeStream *)v4 initWithIdentifier:*MEMORY[0x1E698EA60]];
    v6 = self->_pageLoadStream;
    self->_pageLoadStream = v5;

    pageLoadStream = self->_pageLoadStream;
  }

  return pageLoadStream;
}

- (_WBSBiomeStream)_windowProxyStream
{
  windowProxyStream = self->_windowProxyStream;
  if (!windowProxyStream)
  {
    v4 = [_WBSBiomeStream alloc];
    v5 = [(_WBSBiomeStream *)v4 initWithIdentifier:*MEMORY[0x1E698EA78]];
    v6 = self->_windowProxyStream;
    self->_windowProxyStream = v5;

    windowProxyStream = self->_windowProxyStream;
  }

  return windowProxyStream;
}

- (id)_browsingAssistantStream
{
  browsingAssistantStream = self->_browsingAssistantStream;
  if (!browsingAssistantStream)
  {
    v4 = [_WBSBiomeStream alloc];
    v5 = [(_WBSBiomeStream *)v4 initWithIdentifier:*MEMORY[0x1E698EA50]];
    v6 = self->_browsingAssistantStream;
    self->_browsingAssistantStream = v5;

    browsingAssistantStream = self->_browsingAssistantStream;
  }

  return browsingAssistantStream;
}

- (void)donateAutoPlayEventWithSignal:(int64_t)a3 domain:(id)a4 countryCode:(id)a5 webPageLoadedOverPrivateRelay:(BOOL)a6
{
  v6 = a6;
  v10 = a4;
  v11 = a5;
  if ([objc_opt_class() isBiomeStreamDonationAvailable])
  {
    v12 = objc_alloc(MEMORY[0x1E698EDD0]);
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v14 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:ceil(v13 / 1800.0) * 30.0 * 60.0];
    v15 = [(WBSBiomeDonationManager *)self _biomeSignalForAutoPlaySignal:a3];
    v16 = [MEMORY[0x1E696AD98] numberWithBool:v6];
    v17 = [v12 initWithDomain:v10 visited:v14 signal:v15 countryCode:v11 privacyProxy:v16];

    if (v17)
    {
      objc_initWeak(&location, self);
      streamAccessQueue = self->_streamAccessQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __106__WBSBiomeDonationManager_donateAutoPlayEventWithSignal_domain_countryCode_webPageLoadedOverPrivateRelay___block_invoke;
      block[3] = &unk_1E7FB6E58;
      objc_copyWeak(&v21, &location);
      v20 = v17;
      dispatch_async(streamAccessQueue, block);

      objc_destroyWeak(&v21);
      objc_destroyWeak(&location);
    }
  }
}

void __106__WBSBiomeDonationManager_donateAutoPlayEventWithSignal_domain_countryCode_webPageLoadedOverPrivateRelay___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = [WeakRetained _autoPlayStream];
    v4 = [v3 source];
    [v4 sendEvent:*(a1 + 32)];

    WeakRetained = v5;
  }
}

- (int)_biomeSignalForAutoPlaySignal:(int64_t)a3
{
  if ((a3 - 1) > 2)
  {
    return 0;
  }

  else
  {
    return dword_1BB8FB6C0[a3 - 1];
  }
}

- (void)donateNavigationWithURL:(id)a3 userAgent:(int64_t)a4 wasPrivateRelayed:(BOOL)a5 privateRelayVendorName:(id)a6 statusCode:(int64_t)a7
{
  v9 = a5;
  v12 = a3;
  v45 = a6;
  if (isIPad_onceToken != -1)
  {
    [WBSBiomeDonationManager donateNavigationWithURL:userAgent:wasPrivateRelayed:privateRelayVendorName:statusCode:];
  }

  if (isIPad_result)
  {
    v13 = 3;
  }

  else
  {
    v13 = 2;
  }

  v14 = [v12 host];
  v15 = [v14 safari_highLevelDomainFromHost];

  val = self;
  v44 = v12;
  if ([MEMORY[0x1E698EE78] instancesRespondToSelector:sel_initWithDomain_visited_platform_userAgent_countryCode_privacyProxy_error_url_privateRelayVendorName_])
  {
    v42 = objc_alloc(MEMORY[0x1E698EE78]);
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v17 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:ceil(v16 / 1800.0) * 30.0 * 60.0];
    v18 = [(WBSBiomeDonationManager *)self _biomeDeviceClassForUserAgent:a4];
    v19 = [MEMORY[0x1E695DF58] currentLocale];
    v20 = [v19 countryCode];
    v21 = [MEMORY[0x1E696AD98] numberWithInt:v9];
    v22 = BiomeErrorResponseForStatusCode(a7);
    v23 = [v12 absoluteString];
    LODWORD(v41) = v22;
    v24 = [v42 initWithDomain:v15 visited:v17 platform:v13 userAgent:v18 countryCode:v20 privacyProxy:v21 error:v41 url:v23 privateRelayVendorName:v45];

    v25 = v15;
  }

  else
  {
    v26 = [MEMORY[0x1E698EE78] instancesRespondToSelector:sel_initWithDomain_visited_platform_userAgent_countryCode_privacyProxy_error_url_];
    v27 = objc_alloc(MEMORY[0x1E698EE78]);
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v17 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:ceil(v28 / 1800.0) * 30.0 * 60.0];
    v29 = [(WBSBiomeDonationManager *)self _biomeDeviceClassForUserAgent:a4];
    v19 = [MEMORY[0x1E695DF58] currentLocale];
    v20 = [v19 countryCode];
    v21 = [MEMORY[0x1E696AD98] numberWithInt:v9];
    v30 = BiomeErrorResponseForStatusCode(a7);
    v31 = v30;
    if (v26)
    {
      v32 = [v44 absoluteString];
      LODWORD(v41) = v31;
      v25 = v15;
      v24 = [v27 initWithDomain:v15 visited:v17 platform:v13 userAgent:v29 countryCode:v20 privacyProxy:v21 error:v41 url:v32];
    }

    else
    {
      LODWORD(v41) = v30;
      v25 = v15;
      v24 = [v27 initWithDomain:v15 visited:v17 platform:v13 userAgent:v29 countryCode:v20 privacyProxy:v21 error:v41];
    }
  }

  if (v24)
  {
    v33 = WBS_LOG_CHANNEL_PREFIXBiomeDonation();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      [(WBSBiomeDonationManager *)v24 donateNavigationWithURL:v33 userAgent:v34 wasPrivateRelayed:v35 privateRelayVendorName:v36 statusCode:v37, v38, v39];
    }

    objc_initWeak(&location, val);
    streamAccessQueue = val->_streamAccessQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __113__WBSBiomeDonationManager_donateNavigationWithURL_userAgent_wasPrivateRelayed_privateRelayVendorName_statusCode___block_invoke;
    block[3] = &unk_1E7FB6E58;
    objc_copyWeak(&v48, &location);
    v47 = v24;
    dispatch_async(streamAccessQueue, block);

    objc_destroyWeak(&v48);
    objc_destroyWeak(&location);
  }
}

void __113__WBSBiomeDonationManager_donateNavigationWithURL_userAgent_wasPrivateRelayed_privateRelayVendorName_statusCode___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = [WeakRetained _navigationsStream];
    v4 = [v3 source];
    [v4 sendEvent:*(a1 + 32)];

    WeakRetained = v5;
  }
}

- (int)_biomeDeviceClassForUserAgent:(int64_t)a3
{
  if (a3)
  {
    return 2 * (a3 == 1);
  }

  else
  {
    return 1;
  }
}

- (BOOL)donateForDiagnosticLoggingKey:(id)a3 value:(id)a4 webPageLoadedOverPrivateRelay:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  if ([objc_opt_class() isBiomeStreamDonationAvailable] && (v10 = -[WBSBiomeDonationManager _webPerformanceEventForDiagnosticLoggingKey:](self, "_webPerformanceEventForDiagnosticLoggingKey:", v8), v10))
  {
    [(WBSBiomeDonationManager *)self _donateWebPagePerformanceEventWithEvent:v10 domain:v9 webPageLoadedOverPrivateRelay:v5];
    v11 = 1;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)_donateWebPagePerformanceEventWithEvent:(int)a3 domain:(id)a4 webPageLoadedOverPrivateRelay:(BOOL)a5
{
  v5 = a5;
  v6 = *&a3;
  v8 = a4;
  if (isIPad_onceToken != -1)
  {
    [WBSBiomeDonationManager donateNavigationWithURL:userAgent:wasPrivateRelayed:privateRelayVendorName:statusCode:];
  }

  if (isIPad_result)
  {
    v9 = 3;
  }

  else
  {
    v9 = 2;
  }

  v10 = objc_alloc(MEMORY[0x1E698EE88]);
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v12 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:ceil(v11 / 1800.0) * 30.0 * 60.0];
  v13 = [MEMORY[0x1E696AD98] numberWithBool:v5];
  v14 = [v10 initWithDomain:v8 visited:v12 platform:v9 performanceEvent:v6 privacyProxy:v13];

  if (v14)
  {
    objc_initWeak(&location, self);
    streamAccessQueue = self->_streamAccessQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __104__WBSBiomeDonationManager__donateWebPagePerformanceEventWithEvent_domain_webPageLoadedOverPrivateRelay___block_invoke;
    block[3] = &unk_1E7FB6E58;
    objc_copyWeak(&v18, &location);
    v17 = v14;
    dispatch_async(streamAccessQueue, block);

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }
}

void __104__WBSBiomeDonationManager__donateWebPagePerformanceEventWithEvent_domain_webPageLoadedOverPrivateRelay___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = [WeakRetained _webPagePerformanceStream];
    v4 = [v3 source];
    [v4 sendEvent:*(a1 + 32)];

    WeakRetained = v5;
  }
}

- (int)_webPerformanceEventForDiagnosticLoggingKey:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"DomainCausingCrash"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"DomainCausingJetsam"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"DomainCausingEnergyDrain"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)donateWebsiteBlockingQuit:(id)a3 blockingReason:(int64_t)a4
{
  if ((a4 - 1) < 6)
  {
    v5 = a4;
  }

  else
  {
    v5 = 0;
  }

  v6 = [a3 host];
  v7 = [v6 safari_highLevelDomainFromHost];

  v8 = [objc_alloc(MEMORY[0x1E698EE90]) initWithDomain:v7 blockingReason:v5];
  v9 = WBS_LOG_CHANNEL_PREFIXBiomeDonation();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [(WBSBiomeDonationManager *)v8 donateWebsiteBlockingQuit:v9 blockingReason:v10, v11, v12, v13, v14, v15];
  }

  objc_initWeak(&location, self);
  streamAccessQueue = self->_streamAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__WBSBiomeDonationManager_donateWebsiteBlockingQuit_blockingReason___block_invoke;
  block[3] = &unk_1E7FB6E58;
  objc_copyWeak(&v20, &location);
  v19 = v8;
  v17 = v8;
  dispatch_async(streamAccessQueue, block);

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

void __68__WBSBiomeDonationManager_donateWebsiteBlockingQuit_blockingReason___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = [WeakRetained _websitesBlockingQuitStream];
    v4 = [v3 source];
    [v4 sendEvent:*(a1 + 32)];

    WeakRetained = v5;
  }
}

- (void)donateWebAppInFocusEventWithStarting:(BOOL)a3 date:(id)a4 webAppType:(int64_t)a5 identifier:(id)a6 name:(id)a7 manifestId:(id)a8
{
  v11 = a3;
  v13 = a6;
  v14 = a7;
  v15 = a8;
  if ([objc_opt_class() isBiomeStreamDonationAvailable])
  {
    v16 = objc_alloc(MEMORY[0x1E698F068]);
    v17 = [MEMORY[0x1E696AD98] numberWithBool:v11];
    v18 = objc_opt_new();
    v19 = [v16 initWithStarting:v17 absoluteTimestamp:v18 type:-[WBSBiomeDonationManager _biomeWebAppInFocusWebAppTypeForWebAppType:](self identifier:"_biomeWebAppInFocusWebAppTypeForWebAppType:" name:a5) manifestId:{v13, v14, v15}];

    if (v19)
    {
      objc_initWeak(&location, self);
      streamAccessQueue = self->_streamAccessQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __107__WBSBiomeDonationManager_donateWebAppInFocusEventWithStarting_date_webAppType_identifier_name_manifestId___block_invoke;
      block[3] = &unk_1E7FB6E58;
      objc_copyWeak(&v23, &location);
      v22 = v19;
      dispatch_async(streamAccessQueue, block);

      objc_destroyWeak(&v23);
      objc_destroyWeak(&location);
    }
  }
}

void __107__WBSBiomeDonationManager_donateWebAppInFocusEventWithStarting_date_webAppType_identifier_name_manifestId___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = [WeakRetained _webAppInFocusStream];
    v4 = [v3 source];
    [v4 sendEvent:*(a1 + 32)];

    WeakRetained = v5;
  }
}

- (int)_biomeWebAppInFocusWebAppTypeForWebAppType:(int64_t)a3
{
  if (a3)
  {
    return 2 * (a3 == 1);
  }

  else
  {
    return 1;
  }
}

- (void)donatePageLoadWithUserAgent:(int64_t)a3 wasSearch:(BOOL)a4 wasPrivateBrowsing:(BOOL)a5 wasActualized:(BOOL)a6 provenance:(int64_t)a7
{
  v8 = a6;
  v9 = a5;
  v10 = a4;
  if ([objc_opt_class() isBiomeStreamDonationAvailable])
  {
    if (isIPad_onceToken != -1)
    {
      [WBSBiomeDonationManager donateNavigationWithURL:userAgent:wasPrivateRelayed:privateRelayVendorName:statusCode:];
    }

    if (isIPad_result)
    {
      v13 = 3;
    }

    else
    {
      v13 = 2;
    }

    v27 = v13;
    if (a7 > 3)
    {
      v26 = 0;
    }

    else
    {
      v26 = dword_1BB8FB6D0[a7];
    }

    v14 = objc_alloc(MEMORY[0x1E698EE80]);
    v15 = [MEMORY[0x1E696AD98] numberWithInt:v10];
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v17 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:ceil(v16 / 1800.0) * 30.0 * 60.0];
    v18 = [MEMORY[0x1E696AD98] numberWithInt:v9];
    v19 = [(WBSBiomeDonationManager *)self _biomePageLoadDeviceClassForUserAgent:a3];
    v20 = [MEMORY[0x1E695DF58] currentLocale];
    v21 = [v20 countryCode];
    v22 = [MEMORY[0x1E696AD98] numberWithInt:v8];
    LODWORD(v25) = v26;
    v23 = [v14 initWithSearch:v15 visited:v17 mode:v18 platform:v27 userAgent:v19 countryCode:v21 entryPoint:v25 actualized:v22];

    if (v23)
    {
      objc_initWeak(&location, self);
      streamAccessQueue = self->_streamAccessQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __109__WBSBiomeDonationManager_donatePageLoadWithUserAgent_wasSearch_wasPrivateBrowsing_wasActualized_provenance___block_invoke;
      block[3] = &unk_1E7FB6E58;
      objc_copyWeak(&v30, &location);
      v29 = v23;
      dispatch_async(streamAccessQueue, block);

      objc_destroyWeak(&v30);
      objc_destroyWeak(&location);
    }
  }
}

void __109__WBSBiomeDonationManager_donatePageLoadWithUserAgent_wasSearch_wasPrivateBrowsing_wasActualized_provenance___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = [WeakRetained _pageLoadStream];
    v4 = [v3 source];
    [v4 sendEvent:*(a1 + 32)];

    WeakRetained = v5;
  }
}

- (int)_biomePageLoadDeviceClassForUserAgent:(int64_t)a3
{
  if (a3)
  {
    return 2 * (a3 == 1);
  }

  else
  {
    return 1;
  }
}

- (void)donateBrowsingAssistantWebPageStartedEventWithWebPageID:(id)a3
{
  v47 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E698EE70]);
    v32 = v3;
    v5 = [v3 dataUsingEncoding:4 allowLossyConversion:0];
    v31 = [v4 initWithWebpageViewIdentifier:v5];

    v36 = [MEMORY[0x1E695DF70] array];
    v42 = 0;
    v43 = &v42;
    v44 = 0x2050000000;
    v6 = getSADeviceInfoClass_softClass;
    v45 = getSADeviceInfoClass_softClass;
    if (!getSADeviceInfoClass_softClass)
    {
      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 3221225472;
      v41[2] = __getSADeviceInfoClass_block_invoke;
      v41[3] = &unk_1E7FB6EC8;
      v41[4] = &v42;
      __getSADeviceInfoClass_block_invoke(v41);
      v6 = v43[3];
    }

    v7 = v6;
    _Block_object_dispose(&v42, 8);
    v34 = [[v6 alloc] init];
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    obj = [v34 trialExperiment];
    v8 = [obj countByEnumeratingWithState:&v37 objects:v46 count:16];
    if (v8)
    {
      v9 = *v38;
      do
      {
        v10 = 0;
        do
        {
          if (*v38 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v37 + 1) + 8 * v10);
          v12 = objc_alloc(MEMORY[0x1E698EE20]);
          v13 = [v11 experimentNamespace];
          v14 = [v11 experimentID];
          v15 = [v11 treatmentID];
          v16 = [v11 deploymentID];
          v17 = [v11 allocationStatus];
          v18 = [v11 compatibilityVersion];
          v19 = [v12 initWithExperiment_namespace:v13 experiment_id:v14 treatment_id:v15 deployment_id:v16 allocation_status:v17 compatibility_version:v18];
          [v36 addObject:v19];

          ++v10;
        }

        while (v8 != v10);
        v8 = [obj countByEnumeratingWithState:&v37 objects:v46 count:16];
      }

      while (v8);
    }

    v20 = objc_alloc(MEMORY[0x1E698EDE8]);
    v21 = [v32 dataUsingEncoding:4 allowLossyConversion:0];
    v22 = [v34 systemLocale];
    v23 = [v34 currentCountry];
    v24 = [v34 build];
    v25 = [v34 osType];
    v26 = [v34 productType];
    v27 = [v34 prefixStoreVersion];
    LODWORD(v30) = 0;
    LODWORD(v29) = 0;
    v28 = [v20 initWithWebpageViewIdentifier:v21 systemLocale:v22 currentCountry:v23 build:v24 osType:v25 productType:v26 buildType:v29 duEnabled:0 searchBarPosition:v30 prefixStoreVersion:v27 trialExperiment:v36];

    [(WBSBiomeDonationManager *)self _donateBrowsingAssistantEvents:v31 dimensionContext:0 bloomFilterPassed:0 eligible:0 webpageUrlSent:0 serverRequest:0 render:0 userInteraction:0];
    [(WBSBiomeDonationManager *)self _donateBrowsingAssistantEvents:0 dimensionContext:v28 bloomFilterPassed:0 eligible:0 webpageUrlSent:0 serverRequest:0 render:0 userInteraction:0];

    v3 = v32;
  }
}

- (void)donateBrowsingAssistantEligibleEventWithWebPageID:(id)a3
{
  if (a3)
  {
    v4 = MEMORY[0x1E698EDF0];
    v5 = a3;
    v6 = [v4 alloc];
    v7 = [v5 dataUsingEncoding:4 allowLossyConversion:0];

    v8 = [v6 initWithWebpageViewIdentifier:v7];
    [(WBSBiomeDonationManager *)self _donateBrowsingAssistantEvents:0 dimensionContext:0 bloomFilterPassed:0 eligible:v8 webpageUrlSent:0 serverRequest:0 render:0 userInteraction:0];
  }
}

- (void)donateBrowsingAssistantWebpageURLSentWithWebPageID:(id)a3 urlSent:(id)a4
{
  if (a3)
  {
    v6 = MEMORY[0x1E698EE68];
    v7 = a4;
    v8 = a3;
    v9 = [v6 alloc];
    v10 = [v8 dataUsingEncoding:4 allowLossyConversion:0];

    v11 = [v7 absoluteString];

    v12 = [v9 initWithWebpageViewIdentifier:v10 url:v11];
    [(WBSBiomeDonationManager *)self _donateBrowsingAssistantEvents:0 dimensionContext:0 bloomFilterPassed:0 eligible:0 webpageUrlSent:v12 serverRequest:0 render:0 userInteraction:0];
  }
}

- (void)donateBrowsingAssistantServerRequestStartedEventWithWebPageID:(id)a3 requestIdentifier:(id)a4 requestType:(int64_t)a5
{
  if (a3)
  {
    if (a5 == 2)
    {
      v7 = 2;
    }

    else
    {
      v7 = a5 == 1;
    }

    v8 = MEMORY[0x1E698EE18];
    v9 = a4;
    v10 = a3;
    v14 = [[v8 alloc] initWithRequestType:v7];
    v11 = objc_alloc(MEMORY[0x1E698EE00]);
    v12 = [v10 dataUsingEncoding:4 allowLossyConversion:0];

    v13 = [v11 initWithWebpageViewIdentifier:v12 requestIdentifier:v9 started:v14 ended:0 failed:0];
    [(WBSBiomeDonationManager *)self _donateBrowsingAssistantEvents:0 dimensionContext:0 bloomFilterPassed:0 eligible:0 webpageUrlSent:0 serverRequest:v13 render:0 userInteraction:0];
  }
}

- (void)donateBrowsingAssistantServerRequestEndedEventWithWebPageID:(id)a3 requestIdentifier:(id)a4
{
  if (a3)
  {
    v6 = MEMORY[0x1E698EDF8];
    v7 = a4;
    v8 = a3;
    v9 = [v6 alloc];
    v10 = [MEMORY[0x1E695DEC8] array];
    v15 = [v9 initWithSummaryText:0 tableOfContentsTexts:v10];

    v11 = [objc_alloc(MEMORY[0x1E698EE08]) initWithServerReleaseVersion:&stru_1F3A5E418 responseData:v15];
    v12 = objc_alloc(MEMORY[0x1E698EE00]);
    v13 = [v8 dataUsingEncoding:4 allowLossyConversion:0];

    v14 = [v12 initWithWebpageViewIdentifier:v13 requestIdentifier:v7 started:0 ended:v11 failed:0];
    [(WBSBiomeDonationManager *)self _donateBrowsingAssistantEvents:0 dimensionContext:0 bloomFilterPassed:0 eligible:0 webpageUrlSent:0 serverRequest:v14 render:0 userInteraction:0];
  }
}

- (void)donateBrowsingAssistantServerRequestFailedEventWithWebPageID:(id)a3 requestIdentifier:(id)a4
{
  if (a3)
  {
    v6 = MEMORY[0x1E698EE10];
    v7 = a4;
    v8 = a3;
    v12 = [[v6 alloc] initWithExists:0];
    v9 = objc_alloc(MEMORY[0x1E698EE00]);
    v10 = [v8 dataUsingEncoding:4 allowLossyConversion:0];

    v11 = [v9 initWithWebpageViewIdentifier:v10 requestIdentifier:v7 started:0 ended:0 failed:v12];
    [(WBSBiomeDonationManager *)self _donateBrowsingAssistantEvents:0 dimensionContext:0 bloomFilterPassed:0 eligible:0 webpageUrlSent:0 serverRequest:v11 render:0 userInteraction:0];
  }
}

- (void)donateBrowsingAssistantBloomFilterPassedEventWithWebPageID:(id)a3
{
  if (a3)
  {
    v4 = MEMORY[0x1E698EDE0];
    v5 = a3;
    v6 = [v4 alloc];
    v7 = [v5 dataUsingEncoding:4 allowLossyConversion:0];

    v8 = [v6 initWithWebpageViewIdentifier:v7];
    [(WBSBiomeDonationManager *)self _donateBrowsingAssistantEvents:0 dimensionContext:0 bloomFilterPassed:v8 eligible:0 webpageUrlSent:0 serverRequest:0 render:0 userInteraction:0];
  }
}

- (void)donateBrowsingAssistantVisualComponentPresentationStartedWithWebPageID:(id)a3 componentType:(int64_t)a4 componentIdentifier:(id)a5 tableOfContentsArrayLength:(id)a6
{
  if (a3)
  {
    v10 = a6;
    v11 = a5;
    v12 = a3;
    v19 = [(WBSBiomeDonationManager *)self _getVisualComponentAttributeFromComponentType:a4];
    v13 = [objc_alloc(MEMORY[0x1E698EE40]) initWithSummaryText:0 tableOfContentsArrayLength:v10];

    v14 = [objc_alloc(MEMORY[0x1E698EE30]) initWithVisualComponentAttribute:v19 visualComponentData:v13 identifier:v11];
    v15 = objc_alloc(MEMORY[0x1E698EE50]);
    v16 = [v12 dataUsingEncoding:4 allowLossyConversion:0];

    v17 = [objc_alloc(MEMORY[0x1E698EE60]) initWithExists:0];
    v18 = [v15 initWithWebpageViewIdentifier:v16 visualComponent:v14 started:v17 ended:0];

    [(WBSBiomeDonationManager *)self _donateBrowsingAssistantEvents:0 dimensionContext:0 bloomFilterPassed:0 eligible:0 webpageUrlSent:0 serverRequest:0 render:v18 userInteraction:0];
  }
}

- (void)donateBrowsingAssistantVisualComponentPresentationEndedWithWebPageID:(id)a3 componentType:(int64_t)a4 componentIdentifier:(id)a5 hideReason:(int64_t)a6
{
  if (a3)
  {
    v10 = a5;
    v11 = a3;
    v18 = [(WBSBiomeDonationManager *)self _getVisualComponentAttributeFromComponentType:a4];
    v12 = [objc_alloc(MEMORY[0x1E698EE40]) initWithSummaryText:0 tableOfContentsArrayLength:0];
    v13 = [objc_alloc(MEMORY[0x1E698EE30]) initWithVisualComponentAttribute:v18 visualComponentData:v12 identifier:v10];

    if ((a6 - 1) < 3)
    {
      a6 = a6;
    }

    else
    {
      a6 = 0;
    }

    v14 = [objc_alloc(MEMORY[0x1E698EE58]) initWithHideReason:a6];
    v15 = objc_alloc(MEMORY[0x1E698EE50]);
    v16 = [v11 dataUsingEncoding:4 allowLossyConversion:0];

    v17 = [v15 initWithWebpageViewIdentifier:v16 visualComponent:v13 started:0 ended:v14];
    [(WBSBiomeDonationManager *)self _donateBrowsingAssistantEvents:0 dimensionContext:0 bloomFilterPassed:0 eligible:0 webpageUrlSent:0 serverRequest:0 render:v17 userInteraction:0];
  }
}

+ (int64_t)entityComponentTypeFromResult:(id)a3
{
  v3 = a3;
  v4 = [v3 domainName];
  v5 = [v4 lowercaseString];
  if ([v5 isEqualToString:@"kg"])
  {
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = [v3 entityType];
      v8 = [v7 lowercaseString];

      if ([v8 isEqualToString:@"sb104"])
      {
        v9 = 4;
LABEL_13:

        goto LABEL_14;
      }

      if ([v8 isEqualToString:@"sb117"])
      {
        v9 = 6;
        goto LABEL_13;
      }

      v17 = [v8 isEqualToString:@"sb183"];

      if (v17)
      {
        v9 = 6;
        goto LABEL_14;
      }
    }
  }

  else
  {
  }

  v10 = [v3 domainName];
  v11 = [v10 lowercaseString];
  v12 = [v11 isEqualToString:@"media"];

  if (v12)
  {
    v9 = 7;
  }

  else
  {
    v13 = [v3 domainName];
    v14 = [v13 lowercaseString];
    v15 = [v14 isEqualToString:@"maps"];

    if (v15)
    {
      v9 = 5;
    }

    else
    {
      v9 = 3;
    }
  }

LABEL_14:

  return v9;
}

- (void)donateBrowsingAssistantUserInteractionDetectedWithWebPageID:(id)a3 componentType:(int64_t)a4 componentIdentifier:(id)a5 tableOfContentsArrayLength:(id)a6 tableOfContentsTextIndex:(id)a7 readerSectionExpanded:(BOOL)a8
{
  v8 = a8;
  v14 = a7;
  if (a3)
  {
    v27 = v14;
    v15 = a6;
    v16 = a5;
    v17 = a3;
    v18 = [(WBSBiomeDonationManager *)self _getVisualComponentAttributeFromComponentType:a4];
    v19 = [objc_alloc(MEMORY[0x1E698EE40]) initWithSummaryText:0 tableOfContentsArrayLength:v15];

    v20 = [objc_alloc(MEMORY[0x1E698EE30]) initWithVisualComponentAttribute:v18 visualComponentData:v19 identifier:v16];
    v21 = 0;
    if ((a4 - 8) <= 2)
    {
      if (v8)
      {
        v22 = 2;
      }

      else
      {
        v22 = 1;
      }

      if (v27)
      {
        v23 = 0;
      }

      else
      {
        v23 = v22;
      }

      v21 = [objc_alloc(MEMORY[0x1E698EE48]) initWithTableOfContentsText:0 tableOfContentsTextIndex:v27 hideShowButton:v23];
    }

    v24 = objc_alloc(MEMORY[0x1E698EE28]);
    v25 = [v17 dataUsingEncoding:4 allowLossyConversion:0];

    v26 = [v24 initWithWebpageViewIdentifier:v25 visualComponent:v20 userInteractionType:1 visualComponentInteractionInfo:v21];
    [(WBSBiomeDonationManager *)self _donateBrowsingAssistantEvents:0 dimensionContext:0 bloomFilterPassed:0 eligible:0 webpageUrlSent:0 serverRequest:0 render:0 userInteraction:v26];

    v14 = v27;
  }
}

- (void)donateBrowsingAssistantReaderEventWithWebPageID:(id)a3 eventType:(int64_t)a4 dataToReport:(id)a5
{
  v32 = a3;
  v7 = a5;
  v8 = v7;
  if (a4 > 2)
  {
    switch(a4)
    {
      case 3:
        v18 = [v7 objectForKey:@"expanded"];

        if (!v18)
        {
          break;
        }

        v19 = [v8 objectForKey:@"expanded"];
        v11 = [v19 BOOLValue];

        v12 = +[WBSBiomeDonationManager sharedManager];
        v13 = v12;
        v14 = v32;
        v15 = 9;
        goto LABEL_15;
      case 4:
        v24 = [v7 objectForKey:@"index"];

        if (v24)
        {
          v25 = [v8 objectForKey:@"length"];

          if (v25)
          {
            v26 = [v8 objectForKey:@"index"];
            v27 = [v26 integerValue];

            v28 = [v8 objectForKey:@"length"];
            v29 = [v28 integerValue];

            v13 = +[WBSBiomeDonationManager sharedManager];
            v30 = [MEMORY[0x1E696AD98] numberWithInteger:v29];
            v31 = [MEMORY[0x1E696AD98] numberWithInteger:v27];
            [v13 donateBrowsingAssistantUserInteractionDetectedWithWebPageID:v32 componentType:9 componentIdentifier:0 tableOfContentsArrayLength:v30 tableOfContentsTextIndex:v31 readerSectionExpanded:0];

            goto LABEL_21;
          }
        }

        break;
      case 5:
        v16 = [v7 objectForKey:@"expanded"];

        if (v16)
        {
          v17 = [v8 objectForKey:@"expanded"];
          v11 = [v17 BOOLValue];

          v12 = +[WBSBiomeDonationManager sharedManager];
          v13 = v12;
          v14 = v32;
          v15 = 10;
          goto LABEL_15;
        }

        break;
    }
  }

  else
  {
    switch(a4)
    {
      case 0:
        v13 = +[WBSBiomeDonationManager sharedManager];
        [v13 donateBrowsingAssistantVisualComponentPresentationStartedWithWebPageID:v32 componentType:8 componentIdentifier:0 tableOfContentsArrayLength:0];
LABEL_21:

        break;
      case 1:
        v20 = [v7 objectForKey:@"length"];

        if (!v20)
        {
          break;
        }

        v21 = [v8 objectForKey:@"length"];
        v22 = [v21 integerValue];

        v13 = +[WBSBiomeDonationManager sharedManager];
        v23 = [MEMORY[0x1E696AD98] numberWithInteger:v22];
        [v13 donateBrowsingAssistantVisualComponentPresentationStartedWithWebPageID:v32 componentType:9 componentIdentifier:0 tableOfContentsArrayLength:v23];

        goto LABEL_21;
      case 2:
        v9 = [v7 objectForKey:@"expanded"];

        if (v9)
        {
          v10 = [v8 objectForKey:@"expanded"];
          v11 = [v10 BOOLValue];

          v12 = +[WBSBiomeDonationManager sharedManager];
          v13 = v12;
          v14 = v32;
          v15 = 8;
LABEL_15:
          [v12 donateBrowsingAssistantUserInteractionDetectedWithWebPageID:v14 componentType:v15 componentIdentifier:0 tableOfContentsArrayLength:0 tableOfContentsTextIndex:0 readerSectionExpanded:v11];
          goto LABEL_21;
        }

        break;
    }
  }
}

- (id)_getVisualComponentAttributeFromComponentType:(int64_t)a3
{
  if (a3 <= 4)
  {
    if (a3 > 1)
    {
      if (a3 == 2)
      {
        v3 = objc_alloc(MEMORY[0x1E698EE38]);
        v4 = 2;
        v5 = 1;
      }

      else
      {
        if (a3 != 3)
        {
          v3 = objc_alloc(MEMORY[0x1E698EE38]);
          v4 = 2;
          v5 = 2;
          v6 = 1;
LABEL_24:
          v7 = 0;
          goto LABEL_25;
        }

        v3 = objc_alloc(MEMORY[0x1E698EE38]);
        v4 = 2;
        v5 = 2;
      }

LABEL_23:
      v6 = 0;
      goto LABEL_24;
    }

    if (a3)
    {
      if (a3 != 1)
      {
        goto LABEL_26;
      }

      v3 = objc_alloc(MEMORY[0x1E698EE38]);
      v4 = 2;
    }

    else
    {
      v3 = objc_alloc(MEMORY[0x1E698EE38]);
      v4 = 1;
    }

LABEL_18:
    v5 = 0;
    goto LABEL_23;
  }

  if (a3 <= 7)
  {
    if (a3 == 5)
    {
      v3 = objc_alloc(MEMORY[0x1E698EE38]);
      v4 = 2;
      v5 = 2;
      v6 = 2;
    }

    else if (a3 == 6)
    {
      v3 = objc_alloc(MEMORY[0x1E698EE38]);
      v4 = 2;
      v5 = 2;
      v6 = 3;
    }

    else
    {
      v3 = objc_alloc(MEMORY[0x1E698EE38]);
      v4 = 2;
      v5 = 2;
      v6 = 4;
    }

    goto LABEL_24;
  }

  if (a3 == 8)
  {
    v3 = objc_alloc(MEMORY[0x1E698EE38]);
    v4 = 3;
    v5 = 0;
    v6 = 0;
    v7 = 1;
    goto LABEL_25;
  }

  if (a3 != 9)
  {
    if (a3 != 10)
    {
      goto LABEL_26;
    }

    v3 = objc_alloc(MEMORY[0x1E698EE38]);
    v4 = 3;
    goto LABEL_18;
  }

  v3 = objc_alloc(MEMORY[0x1E698EE38]);
  v4 = 3;
  v5 = 0;
  v6 = 0;
  v7 = 2;
LABEL_25:
  self = [v3 initWithComponentType:v4 cardType:v5 entityType:v6 readerViewSectionType:v7];
LABEL_26:

  return self;
}

- (void)_donateBrowsingAssistantEvents:(id)a3 dimensionContext:(id)a4 bloomFilterPassed:(id)a5 eligible:(id)a6 webpageUrlSent:(id)a7 serverRequest:(id)a8 render:(id)a9 userInteraction:(id)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v23 = a10;
  if (+[WBSBrowsingAssistantController userConsentState]== 1)
  {
    v33 = v16;
    v24 = [objc_alloc(MEMORY[0x1E698EDD8]) initWithWebpageViewStarted:v16 dimensionContext:v17 bloomFilterPassed:v18 eligible:v19 webpageUrlSent:v20 serverRequestContext:v21 visualComponentPresentationContext:v22 userInteractionDetected:v23];
    v25 = WBS_LOG_CHANNEL_PREFIXBiomeDonation();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      [WBSBiomeDonationManager _donateBrowsingAssistantEvents:v24 dimensionContext:v25 bloomFilterPassed:v26 eligible:v27 webpageUrlSent:v28 serverRequest:v29 render:v30 userInteraction:v31];
      if (!v24)
      {
        goto LABEL_5;
      }
    }

    else if (!v24)
    {
LABEL_5:

      v16 = v33;
      goto LABEL_6;
    }

    objc_initWeak(&location, self);
    streamAccessQueue = self->_streamAccessQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __154__WBSBiomeDonationManager__donateBrowsingAssistantEvents_dimensionContext_bloomFilterPassed_eligible_webpageUrlSent_serverRequest_render_userInteraction___block_invoke;
    block[3] = &unk_1E7FB6E58;
    objc_copyWeak(&v36, &location);
    v35 = v24;
    dispatch_async(streamAccessQueue, block);

    objc_destroyWeak(&v36);
    objc_destroyWeak(&location);
    goto LABEL_5;
  }

LABEL_6:
}

void __154__WBSBiomeDonationManager__donateBrowsingAssistantEvents_dimensionContext_bloomFilterPassed_eligible_webpageUrlSent_serverRequest_render_userInteraction___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = [WeakRetained _browsingAssistantStream];
    v4 = [v3 source];
    [v4 sendEvent:*(a1 + 32)];

    WeakRetained = v5;
  }
}

- (void)clearEventsDonatedSinceDate:(id)a3
{
  v4 = a3;
  if ([objc_opt_class() isBiomeStreamDonationAvailable])
  {
    streamAccessQueue = self->_streamAccessQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __55__WBSBiomeDonationManager_clearEventsDonatedSinceDate___block_invoke;
    v6[3] = &unk_1E7FB6E30;
    v6[4] = self;
    v7 = v4;
    dispatch_async(streamAccessQueue, v6);
  }
}

- (void)_clearEventsDonatedSinceDate:(id)a3
{
  v4 = a3;
  [v4 timeIntervalSinceReferenceDate];
  v6 = v5;
  v7 = WBS_LOG_CHANNEL_PREFIXBiomeDonation();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [(WBSBiomeDonationManager *)v4 _clearEventsDonatedSinceDate:v7, v6];
  }

  v8 = [(WBSBiomeDonationManager *)self _autoPlayStream];
  v9 = [v8 pruner];
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __56__WBSBiomeDonationManager__clearEventsDonatedSinceDate___block_invoke;
  v42[3] = &unk_1E7FB6E80;
  v10 = v4;
  v43 = v10;
  [v9 deleteEventsPassingTest:v42];

  v11 = [(WBSBiomeDonationManager *)self _webPagePerformanceStream];
  v12 = [v11 pruner];
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __56__WBSBiomeDonationManager__clearEventsDonatedSinceDate___block_invoke_2;
  v40[3] = &unk_1E7FB6E80;
  v13 = v10;
  v41 = v13;
  [v12 deleteEventsPassingTest:v40];

  v14 = [(WBSBiomeDonationManager *)self _navigationsStream];
  v15 = [v14 pruner];
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __56__WBSBiomeDonationManager__clearEventsDonatedSinceDate___block_invoke_3;
  v38[3] = &unk_1E7FB6E80;
  v16 = v13;
  v39 = v16;
  [v15 deleteEventsPassingTest:v38];

  v17 = [(WBSBiomeDonationManager *)self _webAppInFocusStream];
  v18 = [v17 pruner];
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __56__WBSBiomeDonationManager__clearEventsDonatedSinceDate___block_invoke_4;
  v36[3] = &unk_1E7FB6E80;
  v19 = v16;
  v37 = v19;
  [v18 deleteEventsPassingTest:v36];

  v20 = [(WBSBiomeDonationManager *)self _pageLoadStream];
  v21 = [v20 pruner];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __56__WBSBiomeDonationManager__clearEventsDonatedSinceDate___block_invoke_5;
  v34[3] = &unk_1E7FB6E80;
  v22 = v19;
  v35 = v22;
  [v21 deleteEventsPassingTest:v34];

  v23 = [(WBSBiomeDonationManager *)self _windowProxyStream];
  v24 = [v23 pruner];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __56__WBSBiomeDonationManager__clearEventsDonatedSinceDate___block_invoke_6;
  v32[3] = &unk_1E7FB6E80;
  v33 = v22;
  v25 = v22;
  [v24 deleteEventsPassingTest:v32];

  v26 = [(WBSBiomeDonationManager *)self _browsingAssistantStream];
  v27 = [v26 pruner];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __56__WBSBiomeDonationManager__clearEventsDonatedSinceDate___block_invoke_7;
  v31[3] = &__block_descriptor_40_e26_B24__0__BMStoreEvent_8_B16l;
  *&v31[4] = v6;
  [v27 deleteEventsPassingTest:v31];

  v28 = [(WBSBiomeDonationManager *)self _websitesBlockingQuitStream];
  v29 = [v28 pruner];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __56__WBSBiomeDonationManager__clearEventsDonatedSinceDate___block_invoke_8;
  v30[3] = &__block_descriptor_40_e26_B24__0__BMStoreEvent_8_B16l;
  *&v30[4] = v6;
  [v29 deleteWithPolicy:@"clear-events" eventsPassingTest:v30];
}

uint64_t __56__WBSBiomeDonationManager__clearEventsDonatedSinceDate___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 eventBody];
  v4 = [v3 visited];
  if (v4)
  {
    v5 = [v3 visited];
    v6 = [v5 safari_isLaterThanDate:*(a1 + 32)];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

uint64_t __56__WBSBiomeDonationManager__clearEventsDonatedSinceDate___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 eventBody];
  v4 = [v3 visited];
  if (v4)
  {
    v5 = [v3 visited];
    v6 = [v5 safari_isLaterThanDate:*(a1 + 32)];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

uint64_t __56__WBSBiomeDonationManager__clearEventsDonatedSinceDate___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 eventBody];
  v4 = [v3 visited];
  if (v4)
  {
    v5 = [v3 visited];
    v6 = [v5 safari_isLaterThanDate:*(a1 + 32)];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

uint64_t __56__WBSBiomeDonationManager__clearEventsDonatedSinceDate___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = [a2 eventBody];
  v4 = [v3 absoluteTimestamp];
  if (v4)
  {
    v5 = [v3 absoluteTimestamp];
    v6 = [v5 safari_isLaterThanDate:*(a1 + 32)];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

uint64_t __56__WBSBiomeDonationManager__clearEventsDonatedSinceDate___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = [a2 eventBody];
  v4 = [v3 visited];
  if (v4)
  {
    v5 = [v3 visited];
    v6 = [v5 safari_isLaterThanDate:*(a1 + 32)];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

uint64_t __56__WBSBiomeDonationManager__clearEventsDonatedSinceDate___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = [a2 eventBody];
  v4 = [v3 visited];
  if (v4)
  {
    v5 = [v3 visited];
    v6 = [v5 safari_isLaterThanDate:*(a1 + 32)];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (void)_clearEventsDonatedSinceDate:(double)a3 .cold.1(uint64_t a1, NSObject *a2, double a3)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  v4 = a1;
  v5 = 2048;
  v6 = a3;
  _os_log_debug_impl(&dword_1BB6F3000, a2, OS_LOG_TYPE_DEBUG, "Deleting events donated since: %@ (%f)", &v3, 0x16u);
}

@end