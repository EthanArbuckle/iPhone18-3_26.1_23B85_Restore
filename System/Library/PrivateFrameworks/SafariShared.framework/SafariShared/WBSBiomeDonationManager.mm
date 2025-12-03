@interface WBSBiomeDonationManager
+ (WBSBiomeDonationManager)sharedManager;
+ (int64_t)entityComponentTypeFromResult:(id)result;
- (BOOL)donateForDiagnosticLoggingKey:(id)key value:(id)value webPageLoadedOverPrivateRelay:(BOOL)relay;
- (WBSBiomeDonationManager)init;
- (_WBSBiomeStream)_windowProxyStream;
- (id)_autoPlayStream;
- (id)_browsingAssistantStream;
- (id)_getVisualComponentAttributeFromComponentType:(int64_t)type;
- (id)_navigationsStream;
- (id)_pageLoadStream;
- (id)_webAppInFocusStream;
- (id)_webPagePerformanceStream;
- (id)_websitesBlockingQuitStream;
- (int)_biomeDeviceClassForUserAgent:(int64_t)agent;
- (int)_biomePageLoadDeviceClassForUserAgent:(int64_t)agent;
- (int)_biomeSignalForAutoPlaySignal:(int64_t)signal;
- (int)_biomeWebAppInFocusWebAppTypeForWebAppType:(int64_t)type;
- (int)_webPerformanceEventForDiagnosticLoggingKey:(id)key;
- (void)_clearEventsDonatedSinceDate:(id)date;
- (void)_donateBrowsingAssistantEvents:(id)events dimensionContext:(id)context bloomFilterPassed:(id)passed eligible:(id)eligible webpageUrlSent:(id)sent serverRequest:(id)request render:(id)render userInteraction:(id)self0;
- (void)_donateWebPagePerformanceEventWithEvent:(int)event domain:(id)domain webPageLoadedOverPrivateRelay:(BOOL)relay;
- (void)clearEventsDonatedSinceDate:(id)date;
- (void)donateAutoPlayEventWithSignal:(int64_t)signal domain:(id)domain countryCode:(id)code webPageLoadedOverPrivateRelay:(BOOL)relay;
- (void)donateBrowsingAssistantBloomFilterPassedEventWithWebPageID:(id)d;
- (void)donateBrowsingAssistantEligibleEventWithWebPageID:(id)d;
- (void)donateBrowsingAssistantReaderEventWithWebPageID:(id)d eventType:(int64_t)type dataToReport:(id)report;
- (void)donateBrowsingAssistantServerRequestEndedEventWithWebPageID:(id)d requestIdentifier:(id)identifier;
- (void)donateBrowsingAssistantServerRequestFailedEventWithWebPageID:(id)d requestIdentifier:(id)identifier;
- (void)donateBrowsingAssistantServerRequestStartedEventWithWebPageID:(id)d requestIdentifier:(id)identifier requestType:(int64_t)type;
- (void)donateBrowsingAssistantUserInteractionDetectedWithWebPageID:(id)d componentType:(int64_t)type componentIdentifier:(id)identifier tableOfContentsArrayLength:(id)length tableOfContentsTextIndex:(id)index readerSectionExpanded:(BOOL)expanded;
- (void)donateBrowsingAssistantVisualComponentPresentationEndedWithWebPageID:(id)d componentType:(int64_t)type componentIdentifier:(id)identifier hideReason:(int64_t)reason;
- (void)donateBrowsingAssistantVisualComponentPresentationStartedWithWebPageID:(id)d componentType:(int64_t)type componentIdentifier:(id)identifier tableOfContentsArrayLength:(id)length;
- (void)donateBrowsingAssistantWebPageStartedEventWithWebPageID:(id)d;
- (void)donateBrowsingAssistantWebpageURLSentWithWebPageID:(id)d urlSent:(id)sent;
- (void)donateNavigationWithURL:(id)l userAgent:(int64_t)agent wasPrivateRelayed:(BOOL)relayed privateRelayVendorName:(id)name statusCode:(int64_t)code;
- (void)donatePageLoadWithUserAgent:(int64_t)agent wasSearch:(BOOL)search wasPrivateBrowsing:(BOOL)browsing wasActualized:(BOOL)actualized provenance:(int64_t)provenance;
- (void)donateWebAppInFocusEventWithStarting:(BOOL)starting date:(id)date webAppType:(int64_t)type identifier:(id)identifier name:(id)name manifestId:(id)id;
- (void)donateWebsiteBlockingQuit:(id)quit blockingReason:(int64_t)reason;
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
    uTF8String = [v3 UTF8String];
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create(uTF8String, v5);
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

- (void)donateAutoPlayEventWithSignal:(int64_t)signal domain:(id)domain countryCode:(id)code webPageLoadedOverPrivateRelay:(BOOL)relay
{
  relayCopy = relay;
  domainCopy = domain;
  codeCopy = code;
  if ([objc_opt_class() isBiomeStreamDonationAvailable])
  {
    v12 = objc_alloc(MEMORY[0x1E698EDD0]);
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v14 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:ceil(v13 / 1800.0) * 30.0 * 60.0];
    v15 = [(WBSBiomeDonationManager *)self _biomeSignalForAutoPlaySignal:signal];
    v16 = [MEMORY[0x1E696AD98] numberWithBool:relayCopy];
    v17 = [v12 initWithDomain:domainCopy visited:v14 signal:v15 countryCode:codeCopy privacyProxy:v16];

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

- (int)_biomeSignalForAutoPlaySignal:(int64_t)signal
{
  if ((signal - 1) > 2)
  {
    return 0;
  }

  else
  {
    return dword_1BB8FB6C0[signal - 1];
  }
}

- (void)donateNavigationWithURL:(id)l userAgent:(int64_t)agent wasPrivateRelayed:(BOOL)relayed privateRelayVendorName:(id)name statusCode:(int64_t)code
{
  relayedCopy = relayed;
  lCopy = l;
  nameCopy = name;
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

  host = [lCopy host];
  safari_highLevelDomainFromHost = [host safari_highLevelDomainFromHost];

  val = self;
  v44 = lCopy;
  if ([MEMORY[0x1E698EE78] instancesRespondToSelector:sel_initWithDomain_visited_platform_userAgent_countryCode_privacyProxy_error_url_privateRelayVendorName_])
  {
    v42 = objc_alloc(MEMORY[0x1E698EE78]);
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v17 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:ceil(v16 / 1800.0) * 30.0 * 60.0];
    v18 = [(WBSBiomeDonationManager *)self _biomeDeviceClassForUserAgent:agent];
    currentLocale = [MEMORY[0x1E695DF58] currentLocale];
    countryCode = [currentLocale countryCode];
    v21 = [MEMORY[0x1E696AD98] numberWithInt:relayedCopy];
    v22 = BiomeErrorResponseForStatusCode(code);
    absoluteString = [lCopy absoluteString];
    LODWORD(v41) = v22;
    v24 = [v42 initWithDomain:safari_highLevelDomainFromHost visited:v17 platform:v13 userAgent:v18 countryCode:countryCode privacyProxy:v21 error:v41 url:absoluteString privateRelayVendorName:nameCopy];

    v25 = safari_highLevelDomainFromHost;
  }

  else
  {
    v26 = [MEMORY[0x1E698EE78] instancesRespondToSelector:sel_initWithDomain_visited_platform_userAgent_countryCode_privacyProxy_error_url_];
    v27 = objc_alloc(MEMORY[0x1E698EE78]);
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v17 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:ceil(v28 / 1800.0) * 30.0 * 60.0];
    v29 = [(WBSBiomeDonationManager *)self _biomeDeviceClassForUserAgent:agent];
    currentLocale = [MEMORY[0x1E695DF58] currentLocale];
    countryCode = [currentLocale countryCode];
    v21 = [MEMORY[0x1E696AD98] numberWithInt:relayedCopy];
    v30 = BiomeErrorResponseForStatusCode(code);
    v31 = v30;
    if (v26)
    {
      absoluteString2 = [v44 absoluteString];
      LODWORD(v41) = v31;
      v25 = safari_highLevelDomainFromHost;
      v24 = [v27 initWithDomain:safari_highLevelDomainFromHost visited:v17 platform:v13 userAgent:v29 countryCode:countryCode privacyProxy:v21 error:v41 url:absoluteString2];
    }

    else
    {
      LODWORD(v41) = v30;
      v25 = safari_highLevelDomainFromHost;
      v24 = [v27 initWithDomain:safari_highLevelDomainFromHost visited:v17 platform:v13 userAgent:v29 countryCode:countryCode privacyProxy:v21 error:v41];
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

- (int)_biomeDeviceClassForUserAgent:(int64_t)agent
{
  if (agent)
  {
    return 2 * (agent == 1);
  }

  else
  {
    return 1;
  }
}

- (BOOL)donateForDiagnosticLoggingKey:(id)key value:(id)value webPageLoadedOverPrivateRelay:(BOOL)relay
{
  relayCopy = relay;
  keyCopy = key;
  valueCopy = value;
  if ([objc_opt_class() isBiomeStreamDonationAvailable] && (v10 = -[WBSBiomeDonationManager _webPerformanceEventForDiagnosticLoggingKey:](self, "_webPerformanceEventForDiagnosticLoggingKey:", keyCopy), v10))
  {
    [(WBSBiomeDonationManager *)self _donateWebPagePerformanceEventWithEvent:v10 domain:valueCopy webPageLoadedOverPrivateRelay:relayCopy];
    v11 = 1;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)_donateWebPagePerformanceEventWithEvent:(int)event domain:(id)domain webPageLoadedOverPrivateRelay:(BOOL)relay
{
  relayCopy = relay;
  v6 = *&event;
  domainCopy = domain;
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
  v13 = [MEMORY[0x1E696AD98] numberWithBool:relayCopy];
  v14 = [v10 initWithDomain:domainCopy visited:v12 platform:v9 performanceEvent:v6 privacyProxy:v13];

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

- (int)_webPerformanceEventForDiagnosticLoggingKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"DomainCausingCrash"])
  {
    v4 = 1;
  }

  else if ([keyCopy isEqualToString:@"DomainCausingJetsam"])
  {
    v4 = 2;
  }

  else if ([keyCopy isEqualToString:@"DomainCausingEnergyDrain"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)donateWebsiteBlockingQuit:(id)quit blockingReason:(int64_t)reason
{
  if ((reason - 1) < 6)
  {
    reasonCopy = reason;
  }

  else
  {
    reasonCopy = 0;
  }

  host = [quit host];
  safari_highLevelDomainFromHost = [host safari_highLevelDomainFromHost];

  v8 = [objc_alloc(MEMORY[0x1E698EE90]) initWithDomain:safari_highLevelDomainFromHost blockingReason:reasonCopy];
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

- (void)donateWebAppInFocusEventWithStarting:(BOOL)starting date:(id)date webAppType:(int64_t)type identifier:(id)identifier name:(id)name manifestId:(id)id
{
  startingCopy = starting;
  identifierCopy = identifier;
  nameCopy = name;
  idCopy = id;
  if ([objc_opt_class() isBiomeStreamDonationAvailable])
  {
    v16 = objc_alloc(MEMORY[0x1E698F068]);
    v17 = [MEMORY[0x1E696AD98] numberWithBool:startingCopy];
    v18 = objc_opt_new();
    v19 = [v16 initWithStarting:v17 absoluteTimestamp:v18 type:-[WBSBiomeDonationManager _biomeWebAppInFocusWebAppTypeForWebAppType:](self identifier:"_biomeWebAppInFocusWebAppTypeForWebAppType:" name:type) manifestId:{identifierCopy, nameCopy, idCopy}];

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

- (int)_biomeWebAppInFocusWebAppTypeForWebAppType:(int64_t)type
{
  if (type)
  {
    return 2 * (type == 1);
  }

  else
  {
    return 1;
  }
}

- (void)donatePageLoadWithUserAgent:(int64_t)agent wasSearch:(BOOL)search wasPrivateBrowsing:(BOOL)browsing wasActualized:(BOOL)actualized provenance:(int64_t)provenance
{
  actualizedCopy = actualized;
  browsingCopy = browsing;
  searchCopy = search;
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
    if (provenance > 3)
    {
      v26 = 0;
    }

    else
    {
      v26 = dword_1BB8FB6D0[provenance];
    }

    v14 = objc_alloc(MEMORY[0x1E698EE80]);
    v15 = [MEMORY[0x1E696AD98] numberWithInt:searchCopy];
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v17 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:ceil(v16 / 1800.0) * 30.0 * 60.0];
    v18 = [MEMORY[0x1E696AD98] numberWithInt:browsingCopy];
    v19 = [(WBSBiomeDonationManager *)self _biomePageLoadDeviceClassForUserAgent:agent];
    currentLocale = [MEMORY[0x1E695DF58] currentLocale];
    countryCode = [currentLocale countryCode];
    v22 = [MEMORY[0x1E696AD98] numberWithInt:actualizedCopy];
    LODWORD(v25) = v26;
    v23 = [v14 initWithSearch:v15 visited:v17 mode:v18 platform:v27 userAgent:v19 countryCode:countryCode entryPoint:v25 actualized:v22];

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

- (int)_biomePageLoadDeviceClassForUserAgent:(int64_t)agent
{
  if (agent)
  {
    return 2 * (agent == 1);
  }

  else
  {
    return 1;
  }
}

- (void)donateBrowsingAssistantWebPageStartedEventWithWebPageID:(id)d
{
  v47 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (dCopy)
  {
    v4 = objc_alloc(MEMORY[0x1E698EE70]);
    v32 = dCopy;
    v5 = [dCopy dataUsingEncoding:4 allowLossyConversion:0];
    v31 = [v4 initWithWebpageViewIdentifier:v5];

    array = [MEMORY[0x1E695DF70] array];
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
          experimentNamespace = [v11 experimentNamespace];
          experimentID = [v11 experimentID];
          treatmentID = [v11 treatmentID];
          deploymentID = [v11 deploymentID];
          allocationStatus = [v11 allocationStatus];
          compatibilityVersion = [v11 compatibilityVersion];
          v19 = [v12 initWithExperiment_namespace:experimentNamespace experiment_id:experimentID treatment_id:treatmentID deployment_id:deploymentID allocation_status:allocationStatus compatibility_version:compatibilityVersion];
          [array addObject:v19];

          ++v10;
        }

        while (v8 != v10);
        v8 = [obj countByEnumeratingWithState:&v37 objects:v46 count:16];
      }

      while (v8);
    }

    v20 = objc_alloc(MEMORY[0x1E698EDE8]);
    v21 = [v32 dataUsingEncoding:4 allowLossyConversion:0];
    systemLocale = [v34 systemLocale];
    currentCountry = [v34 currentCountry];
    build = [v34 build];
    osType = [v34 osType];
    productType = [v34 productType];
    prefixStoreVersion = [v34 prefixStoreVersion];
    LODWORD(v30) = 0;
    LODWORD(v29) = 0;
    v28 = [v20 initWithWebpageViewIdentifier:v21 systemLocale:systemLocale currentCountry:currentCountry build:build osType:osType productType:productType buildType:v29 duEnabled:0 searchBarPosition:v30 prefixStoreVersion:prefixStoreVersion trialExperiment:array];

    [(WBSBiomeDonationManager *)self _donateBrowsingAssistantEvents:v31 dimensionContext:0 bloomFilterPassed:0 eligible:0 webpageUrlSent:0 serverRequest:0 render:0 userInteraction:0];
    [(WBSBiomeDonationManager *)self _donateBrowsingAssistantEvents:0 dimensionContext:v28 bloomFilterPassed:0 eligible:0 webpageUrlSent:0 serverRequest:0 render:0 userInteraction:0];

    dCopy = v32;
  }
}

- (void)donateBrowsingAssistantEligibleEventWithWebPageID:(id)d
{
  if (d)
  {
    v4 = MEMORY[0x1E698EDF0];
    dCopy = d;
    v6 = [v4 alloc];
    v7 = [dCopy dataUsingEncoding:4 allowLossyConversion:0];

    v8 = [v6 initWithWebpageViewIdentifier:v7];
    [(WBSBiomeDonationManager *)self _donateBrowsingAssistantEvents:0 dimensionContext:0 bloomFilterPassed:0 eligible:v8 webpageUrlSent:0 serverRequest:0 render:0 userInteraction:0];
  }
}

- (void)donateBrowsingAssistantWebpageURLSentWithWebPageID:(id)d urlSent:(id)sent
{
  if (d)
  {
    v6 = MEMORY[0x1E698EE68];
    sentCopy = sent;
    dCopy = d;
    v9 = [v6 alloc];
    v10 = [dCopy dataUsingEncoding:4 allowLossyConversion:0];

    absoluteString = [sentCopy absoluteString];

    v12 = [v9 initWithWebpageViewIdentifier:v10 url:absoluteString];
    [(WBSBiomeDonationManager *)self _donateBrowsingAssistantEvents:0 dimensionContext:0 bloomFilterPassed:0 eligible:0 webpageUrlSent:v12 serverRequest:0 render:0 userInteraction:0];
  }
}

- (void)donateBrowsingAssistantServerRequestStartedEventWithWebPageID:(id)d requestIdentifier:(id)identifier requestType:(int64_t)type
{
  if (d)
  {
    if (type == 2)
    {
      v7 = 2;
    }

    else
    {
      v7 = type == 1;
    }

    v8 = MEMORY[0x1E698EE18];
    identifierCopy = identifier;
    dCopy = d;
    v14 = [[v8 alloc] initWithRequestType:v7];
    v11 = objc_alloc(MEMORY[0x1E698EE00]);
    v12 = [dCopy dataUsingEncoding:4 allowLossyConversion:0];

    v13 = [v11 initWithWebpageViewIdentifier:v12 requestIdentifier:identifierCopy started:v14 ended:0 failed:0];
    [(WBSBiomeDonationManager *)self _donateBrowsingAssistantEvents:0 dimensionContext:0 bloomFilterPassed:0 eligible:0 webpageUrlSent:0 serverRequest:v13 render:0 userInteraction:0];
  }
}

- (void)donateBrowsingAssistantServerRequestEndedEventWithWebPageID:(id)d requestIdentifier:(id)identifier
{
  if (d)
  {
    v6 = MEMORY[0x1E698EDF8];
    identifierCopy = identifier;
    dCopy = d;
    v9 = [v6 alloc];
    array = [MEMORY[0x1E695DEC8] array];
    v15 = [v9 initWithSummaryText:0 tableOfContentsTexts:array];

    v11 = [objc_alloc(MEMORY[0x1E698EE08]) initWithServerReleaseVersion:&stru_1F3A5E418 responseData:v15];
    v12 = objc_alloc(MEMORY[0x1E698EE00]);
    v13 = [dCopy dataUsingEncoding:4 allowLossyConversion:0];

    v14 = [v12 initWithWebpageViewIdentifier:v13 requestIdentifier:identifierCopy started:0 ended:v11 failed:0];
    [(WBSBiomeDonationManager *)self _donateBrowsingAssistantEvents:0 dimensionContext:0 bloomFilterPassed:0 eligible:0 webpageUrlSent:0 serverRequest:v14 render:0 userInteraction:0];
  }
}

- (void)donateBrowsingAssistantServerRequestFailedEventWithWebPageID:(id)d requestIdentifier:(id)identifier
{
  if (d)
  {
    v6 = MEMORY[0x1E698EE10];
    identifierCopy = identifier;
    dCopy = d;
    v12 = [[v6 alloc] initWithExists:0];
    v9 = objc_alloc(MEMORY[0x1E698EE00]);
    v10 = [dCopy dataUsingEncoding:4 allowLossyConversion:0];

    v11 = [v9 initWithWebpageViewIdentifier:v10 requestIdentifier:identifierCopy started:0 ended:0 failed:v12];
    [(WBSBiomeDonationManager *)self _donateBrowsingAssistantEvents:0 dimensionContext:0 bloomFilterPassed:0 eligible:0 webpageUrlSent:0 serverRequest:v11 render:0 userInteraction:0];
  }
}

- (void)donateBrowsingAssistantBloomFilterPassedEventWithWebPageID:(id)d
{
  if (d)
  {
    v4 = MEMORY[0x1E698EDE0];
    dCopy = d;
    v6 = [v4 alloc];
    v7 = [dCopy dataUsingEncoding:4 allowLossyConversion:0];

    v8 = [v6 initWithWebpageViewIdentifier:v7];
    [(WBSBiomeDonationManager *)self _donateBrowsingAssistantEvents:0 dimensionContext:0 bloomFilterPassed:v8 eligible:0 webpageUrlSent:0 serverRequest:0 render:0 userInteraction:0];
  }
}

- (void)donateBrowsingAssistantVisualComponentPresentationStartedWithWebPageID:(id)d componentType:(int64_t)type componentIdentifier:(id)identifier tableOfContentsArrayLength:(id)length
{
  if (d)
  {
    lengthCopy = length;
    identifierCopy = identifier;
    dCopy = d;
    v19 = [(WBSBiomeDonationManager *)self _getVisualComponentAttributeFromComponentType:type];
    v13 = [objc_alloc(MEMORY[0x1E698EE40]) initWithSummaryText:0 tableOfContentsArrayLength:lengthCopy];

    v14 = [objc_alloc(MEMORY[0x1E698EE30]) initWithVisualComponentAttribute:v19 visualComponentData:v13 identifier:identifierCopy];
    v15 = objc_alloc(MEMORY[0x1E698EE50]);
    v16 = [dCopy dataUsingEncoding:4 allowLossyConversion:0];

    v17 = [objc_alloc(MEMORY[0x1E698EE60]) initWithExists:0];
    v18 = [v15 initWithWebpageViewIdentifier:v16 visualComponent:v14 started:v17 ended:0];

    [(WBSBiomeDonationManager *)self _donateBrowsingAssistantEvents:0 dimensionContext:0 bloomFilterPassed:0 eligible:0 webpageUrlSent:0 serverRequest:0 render:v18 userInteraction:0];
  }
}

- (void)donateBrowsingAssistantVisualComponentPresentationEndedWithWebPageID:(id)d componentType:(int64_t)type componentIdentifier:(id)identifier hideReason:(int64_t)reason
{
  if (d)
  {
    identifierCopy = identifier;
    dCopy = d;
    v18 = [(WBSBiomeDonationManager *)self _getVisualComponentAttributeFromComponentType:type];
    v12 = [objc_alloc(MEMORY[0x1E698EE40]) initWithSummaryText:0 tableOfContentsArrayLength:0];
    v13 = [objc_alloc(MEMORY[0x1E698EE30]) initWithVisualComponentAttribute:v18 visualComponentData:v12 identifier:identifierCopy];

    if ((reason - 1) < 3)
    {
      reason = reason;
    }

    else
    {
      reason = 0;
    }

    v14 = [objc_alloc(MEMORY[0x1E698EE58]) initWithHideReason:reason];
    v15 = objc_alloc(MEMORY[0x1E698EE50]);
    v16 = [dCopy dataUsingEncoding:4 allowLossyConversion:0];

    v17 = [v15 initWithWebpageViewIdentifier:v16 visualComponent:v13 started:0 ended:v14];
    [(WBSBiomeDonationManager *)self _donateBrowsingAssistantEvents:0 dimensionContext:0 bloomFilterPassed:0 eligible:0 webpageUrlSent:0 serverRequest:0 render:v17 userInteraction:0];
  }
}

+ (int64_t)entityComponentTypeFromResult:(id)result
{
  resultCopy = result;
  domainName = [resultCopy domainName];
  lowercaseString = [domainName lowercaseString];
  if ([lowercaseString isEqualToString:@"kg"])
  {
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      entityType = [resultCopy entityType];
      lowercaseString2 = [entityType lowercaseString];

      if ([lowercaseString2 isEqualToString:@"sb104"])
      {
        v9 = 4;
LABEL_13:

        goto LABEL_14;
      }

      if ([lowercaseString2 isEqualToString:@"sb117"])
      {
        v9 = 6;
        goto LABEL_13;
      }

      v17 = [lowercaseString2 isEqualToString:@"sb183"];

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

  domainName2 = [resultCopy domainName];
  lowercaseString3 = [domainName2 lowercaseString];
  v12 = [lowercaseString3 isEqualToString:@"media"];

  if (v12)
  {
    v9 = 7;
  }

  else
  {
    domainName3 = [resultCopy domainName];
    lowercaseString4 = [domainName3 lowercaseString];
    v15 = [lowercaseString4 isEqualToString:@"maps"];

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

- (void)donateBrowsingAssistantUserInteractionDetectedWithWebPageID:(id)d componentType:(int64_t)type componentIdentifier:(id)identifier tableOfContentsArrayLength:(id)length tableOfContentsTextIndex:(id)index readerSectionExpanded:(BOOL)expanded
{
  expandedCopy = expanded;
  indexCopy = index;
  if (d)
  {
    v27 = indexCopy;
    lengthCopy = length;
    identifierCopy = identifier;
    dCopy = d;
    v18 = [(WBSBiomeDonationManager *)self _getVisualComponentAttributeFromComponentType:type];
    v19 = [objc_alloc(MEMORY[0x1E698EE40]) initWithSummaryText:0 tableOfContentsArrayLength:lengthCopy];

    v20 = [objc_alloc(MEMORY[0x1E698EE30]) initWithVisualComponentAttribute:v18 visualComponentData:v19 identifier:identifierCopy];
    v21 = 0;
    if ((type - 8) <= 2)
    {
      if (expandedCopy)
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
    v25 = [dCopy dataUsingEncoding:4 allowLossyConversion:0];

    v26 = [v24 initWithWebpageViewIdentifier:v25 visualComponent:v20 userInteractionType:1 visualComponentInteractionInfo:v21];
    [(WBSBiomeDonationManager *)self _donateBrowsingAssistantEvents:0 dimensionContext:0 bloomFilterPassed:0 eligible:0 webpageUrlSent:0 serverRequest:0 render:0 userInteraction:v26];

    indexCopy = v27;
  }
}

- (void)donateBrowsingAssistantReaderEventWithWebPageID:(id)d eventType:(int64_t)type dataToReport:(id)report
{
  dCopy = d;
  reportCopy = report;
  v8 = reportCopy;
  if (type > 2)
  {
    switch(type)
    {
      case 3:
        v18 = [reportCopy objectForKey:@"expanded"];

        if (!v18)
        {
          break;
        }

        v19 = [v8 objectForKey:@"expanded"];
        bOOLValue = [v19 BOOLValue];

        v12 = +[WBSBiomeDonationManager sharedManager];
        v13 = v12;
        v14 = dCopy;
        v15 = 9;
        goto LABEL_15;
      case 4:
        v24 = [reportCopy objectForKey:@"index"];

        if (v24)
        {
          v25 = [v8 objectForKey:@"length"];

          if (v25)
          {
            v26 = [v8 objectForKey:@"index"];
            integerValue = [v26 integerValue];

            v28 = [v8 objectForKey:@"length"];
            integerValue2 = [v28 integerValue];

            v13 = +[WBSBiomeDonationManager sharedManager];
            v30 = [MEMORY[0x1E696AD98] numberWithInteger:integerValue2];
            v31 = [MEMORY[0x1E696AD98] numberWithInteger:integerValue];
            [v13 donateBrowsingAssistantUserInteractionDetectedWithWebPageID:dCopy componentType:9 componentIdentifier:0 tableOfContentsArrayLength:v30 tableOfContentsTextIndex:v31 readerSectionExpanded:0];

            goto LABEL_21;
          }
        }

        break;
      case 5:
        v16 = [reportCopy objectForKey:@"expanded"];

        if (v16)
        {
          v17 = [v8 objectForKey:@"expanded"];
          bOOLValue = [v17 BOOLValue];

          v12 = +[WBSBiomeDonationManager sharedManager];
          v13 = v12;
          v14 = dCopy;
          v15 = 10;
          goto LABEL_15;
        }

        break;
    }
  }

  else
  {
    switch(type)
    {
      case 0:
        v13 = +[WBSBiomeDonationManager sharedManager];
        [v13 donateBrowsingAssistantVisualComponentPresentationStartedWithWebPageID:dCopy componentType:8 componentIdentifier:0 tableOfContentsArrayLength:0];
LABEL_21:

        break;
      case 1:
        v20 = [reportCopy objectForKey:@"length"];

        if (!v20)
        {
          break;
        }

        v21 = [v8 objectForKey:@"length"];
        integerValue3 = [v21 integerValue];

        v13 = +[WBSBiomeDonationManager sharedManager];
        v23 = [MEMORY[0x1E696AD98] numberWithInteger:integerValue3];
        [v13 donateBrowsingAssistantVisualComponentPresentationStartedWithWebPageID:dCopy componentType:9 componentIdentifier:0 tableOfContentsArrayLength:v23];

        goto LABEL_21;
      case 2:
        v9 = [reportCopy objectForKey:@"expanded"];

        if (v9)
        {
          v10 = [v8 objectForKey:@"expanded"];
          bOOLValue = [v10 BOOLValue];

          v12 = +[WBSBiomeDonationManager sharedManager];
          v13 = v12;
          v14 = dCopy;
          v15 = 8;
LABEL_15:
          [v12 donateBrowsingAssistantUserInteractionDetectedWithWebPageID:v14 componentType:v15 componentIdentifier:0 tableOfContentsArrayLength:0 tableOfContentsTextIndex:0 readerSectionExpanded:bOOLValue];
          goto LABEL_21;
        }

        break;
    }
  }
}

- (id)_getVisualComponentAttributeFromComponentType:(int64_t)type
{
  if (type <= 4)
  {
    if (type > 1)
    {
      if (type == 2)
      {
        v3 = objc_alloc(MEMORY[0x1E698EE38]);
        v4 = 2;
        v5 = 1;
      }

      else
      {
        if (type != 3)
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

    if (type)
    {
      if (type != 1)
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

  if (type <= 7)
  {
    if (type == 5)
    {
      v3 = objc_alloc(MEMORY[0x1E698EE38]);
      v4 = 2;
      v5 = 2;
      v6 = 2;
    }

    else if (type == 6)
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

  if (type == 8)
  {
    v3 = objc_alloc(MEMORY[0x1E698EE38]);
    v4 = 3;
    v5 = 0;
    v6 = 0;
    v7 = 1;
    goto LABEL_25;
  }

  if (type != 9)
  {
    if (type != 10)
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

- (void)_donateBrowsingAssistantEvents:(id)events dimensionContext:(id)context bloomFilterPassed:(id)passed eligible:(id)eligible webpageUrlSent:(id)sent serverRequest:(id)request render:(id)render userInteraction:(id)self0
{
  eventsCopy = events;
  contextCopy = context;
  passedCopy = passed;
  eligibleCopy = eligible;
  sentCopy = sent;
  requestCopy = request;
  renderCopy = render;
  interactionCopy = interaction;
  if (+[WBSBrowsingAssistantController userConsentState]== 1)
  {
    v33 = eventsCopy;
    v24 = [objc_alloc(MEMORY[0x1E698EDD8]) initWithWebpageViewStarted:eventsCopy dimensionContext:contextCopy bloomFilterPassed:passedCopy eligible:eligibleCopy webpageUrlSent:sentCopy serverRequestContext:requestCopy visualComponentPresentationContext:renderCopy userInteractionDetected:interactionCopy];
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

      eventsCopy = v33;
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

- (void)clearEventsDonatedSinceDate:(id)date
{
  dateCopy = date;
  if ([objc_opt_class() isBiomeStreamDonationAvailable])
  {
    streamAccessQueue = self->_streamAccessQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __55__WBSBiomeDonationManager_clearEventsDonatedSinceDate___block_invoke;
    v6[3] = &unk_1E7FB6E30;
    v6[4] = self;
    v7 = dateCopy;
    dispatch_async(streamAccessQueue, v6);
  }
}

- (void)_clearEventsDonatedSinceDate:(id)date
{
  dateCopy = date;
  [dateCopy timeIntervalSinceReferenceDate];
  v6 = v5;
  v7 = WBS_LOG_CHANNEL_PREFIXBiomeDonation();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [(WBSBiomeDonationManager *)dateCopy _clearEventsDonatedSinceDate:v7, v6];
  }

  _autoPlayStream = [(WBSBiomeDonationManager *)self _autoPlayStream];
  pruner = [_autoPlayStream pruner];
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __56__WBSBiomeDonationManager__clearEventsDonatedSinceDate___block_invoke;
  v42[3] = &unk_1E7FB6E80;
  v10 = dateCopy;
  v43 = v10;
  [pruner deleteEventsPassingTest:v42];

  _webPagePerformanceStream = [(WBSBiomeDonationManager *)self _webPagePerformanceStream];
  pruner2 = [_webPagePerformanceStream pruner];
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __56__WBSBiomeDonationManager__clearEventsDonatedSinceDate___block_invoke_2;
  v40[3] = &unk_1E7FB6E80;
  v13 = v10;
  v41 = v13;
  [pruner2 deleteEventsPassingTest:v40];

  _navigationsStream = [(WBSBiomeDonationManager *)self _navigationsStream];
  pruner3 = [_navigationsStream pruner];
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __56__WBSBiomeDonationManager__clearEventsDonatedSinceDate___block_invoke_3;
  v38[3] = &unk_1E7FB6E80;
  v16 = v13;
  v39 = v16;
  [pruner3 deleteEventsPassingTest:v38];

  _webAppInFocusStream = [(WBSBiomeDonationManager *)self _webAppInFocusStream];
  pruner4 = [_webAppInFocusStream pruner];
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __56__WBSBiomeDonationManager__clearEventsDonatedSinceDate___block_invoke_4;
  v36[3] = &unk_1E7FB6E80;
  v19 = v16;
  v37 = v19;
  [pruner4 deleteEventsPassingTest:v36];

  _pageLoadStream = [(WBSBiomeDonationManager *)self _pageLoadStream];
  pruner5 = [_pageLoadStream pruner];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __56__WBSBiomeDonationManager__clearEventsDonatedSinceDate___block_invoke_5;
  v34[3] = &unk_1E7FB6E80;
  v22 = v19;
  v35 = v22;
  [pruner5 deleteEventsPassingTest:v34];

  _windowProxyStream = [(WBSBiomeDonationManager *)self _windowProxyStream];
  pruner6 = [_windowProxyStream pruner];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __56__WBSBiomeDonationManager__clearEventsDonatedSinceDate___block_invoke_6;
  v32[3] = &unk_1E7FB6E80;
  v33 = v22;
  v25 = v22;
  [pruner6 deleteEventsPassingTest:v32];

  _browsingAssistantStream = [(WBSBiomeDonationManager *)self _browsingAssistantStream];
  pruner7 = [_browsingAssistantStream pruner];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __56__WBSBiomeDonationManager__clearEventsDonatedSinceDate___block_invoke_7;
  v31[3] = &__block_descriptor_40_e26_B24__0__BMStoreEvent_8_B16l;
  *&v31[4] = v6;
  [pruner7 deleteEventsPassingTest:v31];

  _websitesBlockingQuitStream = [(WBSBiomeDonationManager *)self _websitesBlockingQuitStream];
  pruner8 = [_websitesBlockingQuitStream pruner];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __56__WBSBiomeDonationManager__clearEventsDonatedSinceDate___block_invoke_8;
  v30[3] = &__block_descriptor_40_e26_B24__0__BMStoreEvent_8_B16l;
  *&v30[4] = v6;
  [pruner8 deleteWithPolicy:@"clear-events" eventsPassingTest:v30];
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