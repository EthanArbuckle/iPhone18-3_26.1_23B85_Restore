@interface ISStoreURLOperation
+ (BOOL)_operationWaitsForPurchases:(id)a3;
+ (id)_authKitSession;
+ (id)_restrictionsHeaderValue;
+ (id)_ssBag_copyExtraHeadersForURL:(id)a3 bag:(id)a4;
+ (id)_ssBag_copyHeaderPatternsFromBag:(id)a3;
+ (id)_storeFrontIdentifierForAccount:(id)a3;
+ (id)itemPingOperationWithIdentifier:(unint64_t)a3 urlBagKey:(id)a4;
+ (id)pingOperationWithUrl:(id)a3;
+ (id)propertyListOperationWithURLBagKey:(id)a3;
+ (void)_addAccountDSID:(id)a3 toRequest:(id)a4;
+ (void)_addPrimaryiCloudDSIDToRequest:(id)a3;
+ (void)_addiTunesStoreHeadersToRequest:(id)a3 withAccount:(id)a4 appendAuthKitHeaders:(BOOL)a5 appendStorefrontToURL:(BOOL)a6 clientBundleIdentifier:(id)a7 extraHeaders:(id)a8 storefrontSuffix:(id)a9;
+ (void)_appendStorefront:(id)a3 toRequestURL:(id)a4;
+ (void)_handleResponseHeaders:(id)a3 response:(id)a4 request:(id)a5 account:(id)a6 performsMachineDataActions:(BOOL)a7 shouldRetry:(BOOL *)a8;
+ (void)_performMachineDataRequest:(id)a3 requestProperties:(id)a4 completion:(id)a5;
+ (void)addITunesStoreHeadersToRequest:(id)a3 withAccountIdentifier:(id)a4;
+ (void)handleITunesStoreResponseHeaders:(id)a3 request:(id)a4 withAccountIdentifier:(id)a5 shouldRetry:(BOOL *)a6;
- (BOOL)_authenticateWithContext:(id)a3 error:(id *)a4;
- (BOOL)_canSendTokenToURL:(id)a3;
- (BOOL)_isErrorTokenError:(id)a3;
- (BOOL)_performMachineDataRequest:(id)a3;
- (BOOL)_processResponseData:(id)a3 error:(id *)a4;
- (BOOL)_shouldRetryForAbsintheWithResponse:(id)a3;
- (BOOL)_shouldRetryForTouchIDChallengeWithError:(id)a3;
- (BOOL)_ssBag_shouldSendGUIDForURL:(id)a3 withBag:(id)a4;
- (BOOL)canSendGUIDParameter;
- (BOOL)handleRedirectFromDataProvider:(id)a3 error:(id *)a4;
- (BOOL)ignorePreexistingSecureToken;
- (BOOL)performsMachineDataActions;
- (BOOL)shouldFollowRedirectWithRequest:(id)a3 returningError:(id *)a4;
- (BOOL)shouldSendXTokenHeader;
- (ISBiometricSessionDelegate)biometricSessionDelegate;
- (ISStoreURLOperation)init;
- (SSURLBagContext)URLBagContext;
- (SSVFairPlaySAPSession)SAPSession;
- (id)_absintheHeaders;
- (id)_account;
- (id)_buyParams;
- (id)_copyAuthenticationContext;
- (id)_copyAuthenticationContextForAttemptNumber:(int64_t)a3;
- (id)_loadURLBagInterpreterWithRequest:(id)a3 requestProperties:(id)a4;
- (id)_resolvedURLInBagContext:(id)a3 bagTrusted:(BOOL *)a4;
- (id)_ssBag_copyGUIDPatternsFromBag:(id)a3;
- (id)_ssBag_copyGUIDSchemesFromBag:(id)a3;
- (id)_urlBagForContext:(id)a3;
- (id)authenticatedAccountDSID;
- (id)logKey;
- (id)newRequestWithURL:(id)a3;
- (void)_addStandardQueryParametersForURL:(id)a3;
- (void)_applyAnalyticsCookiesToRequest:(id)a3 withBag:(id)a4 oldBag:(id)a5;
- (void)_continueTouchIDSession;
- (void)_runURLOperation;
- (void)_setStoreFrontIdentifier:(id)a3 isTransient:(BOOL)a4;
- (void)_willSendRequest:(id)a3;
- (void)handleResponse:(id)a3;
- (void)run;
- (void)setCanSendGUIDParameter:(BOOL)a3;
- (void)setIgnorePreexistingSecureToken:(BOOL)a3;
- (void)setPerformsMachineDataActions:(BOOL)a3;
- (void)setSAPSession:(id)a3;
- (void)setShouldSendXTokenHeader:(BOOL)a3;
@end

@implementation ISStoreURLOperation

- (ISStoreURLOperation)init
{
  __ISRecordSPIClassUsage(self);
  v7.receiver = self;
  v7.super_class = ISStoreURLOperation;
  v3 = [(ISURLOperation *)&v7 init];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277D69A68]);
    biometricAuthenticationContext = v3->_biometricAuthenticationContext;
    v3->_biometricAuthenticationContext = v4;

    v3->_canSendGUIDParameter = 1;
    v3->_machineDataStyle = 2;
    v3->_needsURLBag = 1;
    v3->_shouldAppendAuthKitHeaders = 1;
    v3->_shouldAppendStorefrontToURL = 0;
    v3->_shouldCancelBiometricTokenUpdate = 0;
    v3->_shouldSuppressUserInfo = 0;
  }

  return v3;
}

+ (void)addITunesStoreHeadersToRequest:(id)a3 withAccountIdentifier:(id)a4
{
  v14 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277D69C90] contextWithBagType:0];
  v8 = [MEMORY[0x277D69A80] currentDevice];
  v9 = [v8 userAgent];
  [v7 setValue:v9 forHTTPHeaderField:*MEMORY[0x277D6A130]];

  v10 = +[ISURLBagCache sharedCache];
  v11 = [v10 URLBagForContext:v7];

  if (!v6)
  {
    v12 = [MEMORY[0x277D69A20] defaultStore];
    v13 = [v12 activeAccount];

    v6 = [v13 uniqueIdentifier];
  }

  [a1 _addiTunesStoreHeadersToRequest:v14 withURLBag:v11 accountIdentifier:v6 appendAuthKitHeaders:1 appendStorefrontToURL:0 clientBundleIdentifier:0];
}

+ (void)handleITunesStoreResponseHeaders:(id)a3 request:(id)a4 withAccountIdentifier:(id)a5 shouldRetry:(BOOL *)a6
{
  v9 = MEMORY[0x277D69A20];
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v14 = [v9 defaultStore];
  v13 = [v14 accountWithUniqueIdentifier:v10];

  [ISStoreURLOperation _handleResponseHeaders:0 response:v12 request:v11 account:v13 performsMachineDataActions:1 shouldRetry:a6];
}

+ (id)itemPingOperationWithIdentifier:(unint64_t)a3 urlBagKey:(id)a4
{
  v5 = a4;
  v6 = objc_alloc_init(objc_opt_class());
  [v6 setQueuePriority:-8];
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v8 = +[ISDevice sharedInstance];
  v9 = [v8 guid];

  if (v9)
  {
    [v7 setObject:v9 forKey:@"machine-id"];
  }

  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%llu", a3];
  [v7 setObject:v10 forKey:@"songId"];

  v11 = objc_alloc_init(MEMORY[0x277D69BD0]);
  [v11 setRequestParameters:v7];
  [v11 setURLBagKey:v5];

  [v6 setRequestProperties:v11];

  return v6;
}

+ (id)pingOperationWithUrl:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setQueuePriority:-8];
  [v4 setUrlKnownToBeTrusted:1];
  v5 = [MEMORY[0x277D69C90] contextWithBagType:0];
  v6 = +[ISURLBagCache sharedCache];
  v7 = [v6 URLBagForContext:v5];

  v8 = [v7 valueForKey:*MEMORY[0x277D6A4F8]];
  v9 = [v8 objectForKey:@"metricsUrl"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [MEMORY[0x277CBEBC0] URLWithString:v9];
    v11 = [v3 host];
    v12 = [v10 host];
    v13 = [v11 isEqualToString:v12];

    if (v13)
    {
      v14 = [v3 path];
      v29 = v10;
      v15 = [v10 path];
      v16 = MEMORY[0x277CBEBC0];
      v17 = [v3 query];
      v18 = [v16 copyDictionaryForQueryString:v17 unescapedValues:1];

      v30 = v14;
      v19 = v14;
      v20 = v15;
      if ([v19 hasPrefix:v15])
      {
        v21 = [v18 objectForKey:@"eventTime"];

        if (v21)
        {
          v22 = [MEMORY[0x277CBEAA8] date];
          [v22 timeIntervalSince1970];
          v24 = v23;

          v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lld", (v24 * 1000.0)];
          [v18 setObject:v25 forKey:@"eventTime"];
          v26 = [v3 urlBySettingQueryStringDictionary:v18];

          v3 = v26;
        }
      }

      v10 = v29;
    }
  }

  v27 = [objc_alloc(MEMORY[0x277D69BD0]) initWithURL:v3];
  [v27 setAllowedRetryCount:0];
  [v27 setTimeoutInterval:20.0];
  [v4 setRequestProperties:v27];

  return v4;
}

+ (id)propertyListOperationWithURLBagKey:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(objc_opt_class());
  v5 = +[(ISDataProvider *)ISProtocolDataProvider];
  [v4 setDataProvider:v5];

  v6 = objc_alloc_init(MEMORY[0x277D69BD0]);
  [v6 setURLBagKey:v3];

  [v4 setRequestProperties:v6];

  return v4;
}

- (BOOL)canSendGUIDParameter
{
  [(ISOperation *)self lock];
  canSendGUIDParameter = self->_canSendGUIDParameter;
  [(ISOperation *)self unlock];
  return canSendGUIDParameter;
}

- (id)logKey
{
  v3 = [(ISURLOperation *)self authenticationContext];
  v4 = [v3 logUUID];

  if (v4)
  {
    v5 = [(ISURLOperation *)self authenticationContext];
    v6 = [v5 logUUID];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = ISStoreURLOperation;
    v6 = [(ISURLOperation *)&v8 logKey];
  }

  return v6;
}

- (BOOL)ignorePreexistingSecureToken
{
  [(ISOperation *)self lock];
  ignorePreexistingSecureToken = self->_ignorePreexistingSecureToken;
  [(ISOperation *)self unlock];
  return ignorePreexistingSecureToken;
}

- (BOOL)performsMachineDataActions
{
  [(ISOperation *)self lock];
  v3 = self->_machineDataStyle != 0;
  [(ISOperation *)self unlock];
  return v3;
}

- (SSVFairPlaySAPSession)SAPSession
{
  [(ISOperation *)self lock];
  v3 = self->_sapSession;
  [(ISOperation *)self unlock];

  return v3;
}

- (void)setCanSendGUIDParameter:(BOOL)a3
{
  [(ISOperation *)self lock];
  self->_canSendGUIDParameter = a3;

  [(ISOperation *)self unlock];
}

- (void)setIgnorePreexistingSecureToken:(BOOL)a3
{
  [(ISOperation *)self lock];
  self->_ignorePreexistingSecureToken = a3;

  [(ISOperation *)self unlock];
}

- (void)setPerformsMachineDataActions:(BOOL)a3
{
  v3 = a3;
  [(ISOperation *)self lock];
  if (v3)
  {
    if (self->_machineDataStyle)
    {
      goto LABEL_6;
    }

    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  self->_machineDataStyle = v5;
LABEL_6:

  [(ISOperation *)self unlock];
}

- (void)setSAPSession:(id)a3
{
  v5 = a3;
  [(ISOperation *)self lock];
  if (self->_sapSession != v5)
  {
    objc_storeStrong(&self->_sapSession, a3);
  }

  [(ISOperation *)self unlock];
}

- (void)setShouldSendXTokenHeader:(BOOL)a3
{
  [(ISOperation *)self lock];
  self->_shouldSendXTokenHeader = a3;

  [(ISOperation *)self unlock];
}

- (BOOL)shouldSendXTokenHeader
{
  [(ISOperation *)self lock];
  shouldSendXTokenHeader = self->_shouldSendXTokenHeader;
  [(ISOperation *)self unlock];
  return shouldSendXTokenHeader;
}

- (SSURLBagContext)URLBagContext
{
  v3 = objc_alloc_init(MEMORY[0x277D69C90]);
  v4 = [(ISURLOperation *)self _requestProperties];
  [v3 setAllowsBootstrapCellularData:{objc_msgSend(v4, "allowsBootstrapCellularData")}];
  [v3 setBagType:{objc_msgSend(v4, "URLBagType")}];
  v5 = [v4 clientAuditTokenData];
  [v3 setClientAuditTokenData:v5];

  v6 = [v4 HTTPHeaders];
  v7 = *MEMORY[0x277D6A130];
  v8 = [v6 objectForKey:*MEMORY[0x277D6A130]];

  if (v8)
  {
    [v3 setValue:v8 forHTTPHeaderField:v7];
  }

  else
  {
    v9 = [v3 valueForHTTPHeaderField:v7];

    if (!v9)
    {
      v10 = [MEMORY[0x277D69A80] currentDevice];
      v11 = [v10 userAgent];
      [v3 setValue:v11 forHTTPHeaderField:v7];
    }
  }

  if ([(ISStoreURLOperation *)self needsAuthentication]|| [(ISStoreURLOperation *)self useUserSpecificURLBag])
  {
    v12 = [(ISStoreURLOperation *)self _account];
    v13 = [v12 uniqueIdentifier];
    [v3 setUserIdentifier:v13];
  }

  return v3;
}

- (id)authenticatedAccountDSID
{
  v3 = [(ISStoreURLOperation *)self authenticatedDSID];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = ISStoreURLOperation;
    v5 = [(ISOperation *)&v8 authenticatedAccountDSID];
  }

  v6 = v5;

  return v6;
}

- (id)_copyAuthenticationContext
{
  v14.receiver = self;
  v14.super_class = ISStoreURLOperation;
  v3 = [(ISURLOperation *)&v14 _copyAuthenticationContext];
  if (!v3)
  {
    v4 = objc_alloc(MEMORY[0x277D69BC8]);
    v5 = [(ISStoreURLOperation *)self _account];
    v3 = [v4 initWithAccount:v5];

    v6 = [(ISStoreURLOperation *)self logKey];
    [v3 setLogUUID:v6];

    [v3 setCanSetActiveAccount:0];
  }

  v7 = [(ISURLOperation *)self _requestProperties];
  [v7 URLBagType];
  [v3 setAccountScope:SSAccountScopeForURLBagType()];
  [v3 setAllowsBootstrapCellularData:{objc_msgSend(v7, "allowsBootstrapCellularData")}];
  v8 = [v7 clientIdentifier];
  [v3 setClientIdentifierHeader:v8];

  v9 = [v7 HTTPHeaders];
  v10 = *MEMORY[0x277D6A130];
  v11 = [v9 objectForKey:*MEMORY[0x277D6A130]];

  if (v11)
  {
    [v3 setValue:v11 forHTTPHeaderField:v10];
  }

  v12 = [v7 userAgentComponents];
  if (v12)
  {
    [v3 setUserAgentComponents:v12];
  }

  [(ISOperation *)self lock];
  if (self->_ignorePreexistingSecureToken)
  {
    [v3 setPersistsPasswordFallback:1];
  }

  [(ISOperation *)self unlock];

  return v3;
}

- (BOOL)handleRedirectFromDataProvider:(id)a3 error:(id *)a4
{
  v42 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 authenticatedAccountDSID];
  if (v7)
  {
    [(ISStoreURLOperation *)self setAuthenticatedDSID:v7];
    [(ISStoreURLOperation *)self setNeedsAuthentication:1];
  }

  v8 = [v6 redirectURL];
  v9 = [v8 schemeSwizzledURL];

  if ([(ISStoreURLOperation *)self needsAuthentication]&& ![(ISStoreURLOperation *)self _canSendTokenToURL:v9])
  {
    v22 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!v22)
    {
      v22 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v23 = [v22 shouldLog];
    if ([v22 shouldLogToDisk])
    {
      v24 = v23 | 2;
    }

    else
    {
      v24 = v23;
    }

    v25 = [v22 OSLogObject];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = v24;
    }

    else
    {
      v26 = v24 & 2;
    }

    if (v26)
    {
      v27 = objc_opt_class();
      v35 = v27;
      [(ISURLOperation *)self _sanitizedURLForURL:v9];
      v38 = 138412546;
      v39 = v27;
      v41 = v40 = 2112;
      LODWORD(v32) = 22;
      v28 = _os_log_send_and_compose_impl();

      if (!v28)
      {
LABEL_30:

        v13 = ISError(3, 0, 0);
        v12 = 0;
        goto LABEL_33;
      }

      v25 = [MEMORY[0x277CCACA8] stringWithCString:v28 encoding:{4, &v38, v32}];
      free(v28);
      SSFileLog();
    }

    goto LABEL_30;
  }

  v10 = [(ISStoreURLOperation *)self URLBagContext];
  v11 = [(ISStoreURLOperation *)self _urlBagForContext:v10];
  if ([v11 urlIsTrusted:v9])
  {

    v36.receiver = self;
    v36.super_class = ISStoreURLOperation;
    v37 = 0;
    v12 = [(ISURLOperation *)&v36 handleRedirectFromDataProvider:v6 error:&v37];
    v13 = v37;
  }

  else
  {
    v34 = v9;
    v14 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!v14)
    {
      v14 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v15 = [v14 shouldLog];
    if ([v14 shouldLogToDisk])
    {
      v16 = v15 | 2;
    }

    else
    {
      v16 = v15;
    }

    v17 = [v14 OSLogObject];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v16;
    }

    else
    {
      v18 = v16 & 2;
    }

    if (v18)
    {
      v19 = objc_opt_class();
      v33 = v19;
      [(ISURLOperation *)self _sanitizedURLForURL:v34];
      v38 = 138412546;
      v39 = v19;
      v41 = v40 = 2112;
      LODWORD(v32) = 22;
      v20 = _os_log_send_and_compose_impl();

      if (v20)
      {
        v21 = [MEMORY[0x277CCACA8] stringWithCString:v20 encoding:{4, &v38, v32}];
        free(v20);
        SSFileLog();
      }
    }

    else
    {
    }

    v13 = ISError(3, 0, 0);

    v12 = 0;
    v9 = v34;
  }

LABEL_33:
  if (a4 && !v12)
  {
    v29 = v13;
    *a4 = v13;
  }

  v30 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)handleResponse:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = 0;
    v5 = [(ISURLOperation *)self activeURLRequest];
    v6 = [(ISStoreURLOperation *)self _account];
    [ISStoreURLOperation _handleResponseHeaders:self response:v4 request:v5 account:v6 performsMachineDataActions:0 shouldRetry:&v8];

    if (v8 == 1)
    {
      [(ISURLOperation *)self _retry];
    }
  }

  v7.receiver = self;
  v7.super_class = ISStoreURLOperation;
  [(ISURLOperation *)&v7 handleResponse:v4];
}

- (id)newRequestWithURL:(id)a3
{
  v63 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(ISStoreURLOperation *)self shouldSuppressUserInfo])
  {
    [(ISURLOperation *)self _setUsesPrivateCookieStore:0];
    v61.receiver = self;
    v61.super_class = ISStoreURLOperation;
    v5 = [(ISURLOperation *)&v61 newRequestWithURL:v4];
    [v5 setHTTPShouldHandleCookies:0];
  }

  else
  {
    v60.receiver = self;
    v60.super_class = ISStoreURLOperation;
    v5 = [(ISURLOperation *)&v60 newRequestWithURL:v4];
  }

  v6 = [v5 URL];

  if (self->_bag)
  {
    if (![(ISStoreURLOperation *)self isURLBagRequest])
    {
      v9 = self->_bag;
      v7 = 0;
      goto LABEL_10;
    }

    v7 = 0;
  }

  else
  {
    v8 = [(ISStoreURLOperation *)self URLBagContext];
    v7 = [(ISStoreURLOperation *)self _urlBagForContext:v8];
  }

  v9 = 0;
LABEL_10:
  [(ISStoreURLOperation *)self _applyAnalyticsCookiesToRequest:v5 withBag:v9 oldBag:v7];
  if ([(ISStoreURLOperation *)self canSendGUIDParameter])
  {
    v10 = [v5 HTTPMethod];
    v11 = [v10 isEqualToString:@"POST"];

    if ((v11 & 1) == 0)
    {
      if (v9)
      {
        if (![(ISStoreURLOperation *)self _ssBag_shouldSendGUIDForURL:v6 withBag:v9])
        {
          goto LABEL_19;
        }
      }

      else if (![v7 shouldSendGUIDForURL:v6])
      {
        goto LABEL_19;
      }

      v12 = +[ISDevice sharedInstance];
      v13 = [v12 guid];

      if (v13)
      {
        v14 = [v6 URLByAppendingQueryParameter:@"guid" value:v13];

        [v5 setURL:v14];
        v6 = v14;
      }
    }
  }

LABEL_19:
  v15 = [(ISStoreURLOperation *)self _account];
  v55 = v9;
  if (v9)
  {
    v16 = v7;
    v17 = v6;
    if (v15)
    {
      v18 = objc_opt_class();
      v19 = [(ISStoreURLOperation *)self shouldAppendAuthKitHeaders];
      v20 = [(ISStoreURLOperation *)self shouldAppendStorefrontToURL];
      v21 = [0 clientBundleIdentifier];
      [v18 _addiTunesStoreHeadersToRequest:v5 withSSBag:v9 account:v15 appendAuthKitHeaders:v19 appendStorefrontToURL:v20 clientBundleIdentifier:v21];
    }

    else
    {
      v21 = [(ISURLOperation *)self _accountIdentifier];
      v25 = objc_opt_class();
      v26 = [(ISStoreURLOperation *)self shouldAppendAuthKitHeaders];
      v27 = [(ISStoreURLOperation *)self shouldAppendStorefrontToURL];
      v28 = [0 clientBundleIdentifier];
      [v25 _addiTunesStoreHeadersToRequest:v5 withSSBag:v55 accountIdentifier:v21 appendAuthKitHeaders:v26 appendStorefrontToURL:v27 clientBundleIdentifier:v28];
    }

    v6 = v17;
    v7 = v16;
  }

  else if (v15)
  {
    v22 = objc_opt_class();
    v23 = [(ISStoreURLOperation *)self shouldAppendAuthKitHeaders];
    v24 = [(ISStoreURLOperation *)self shouldAppendStorefrontToURL];
    v21 = [0 clientBundleIdentifier];
    [v22 _addiTunesStoreHeadersToRequest:v5 withURLBag:v7 account:v15 appendAuthKitHeaders:v23 appendStorefrontToURL:v24 clientBundleIdentifier:v21];
  }

  else
  {
    v21 = [(ISURLOperation *)self _accountIdentifier];
    v48 = objc_opt_class();
    v49 = [(ISStoreURLOperation *)self shouldAppendAuthKitHeaders];
    v50 = [(ISStoreURLOperation *)self shouldAppendStorefrontToURL];
    [0 clientBundleIdentifier];
    v52 = v51 = v6;
    [v48 _addiTunesStoreHeadersToRequest:v5 withURLBag:v7 accountIdentifier:v21 appendAuthKitHeaders:v49 appendStorefrontToURL:v50 clientBundleIdentifier:v52];

    v6 = v51;
  }

  if ([(ISStoreURLOperation *)self shouldSuppressUserInfo])
  {
    [v5 setValue:0 forHTTPHeaderField:*MEMORY[0x277D6A160]];
    [v5 setValue:0 forHTTPHeaderField:*MEMORY[0x277D6A128]];
  }

  v29 = [(ISURLOperation *)self _requestProperties];
  v30 = [v29 clientIdentifier];

  if (v30)
  {
    v31 = [v30 copy];
    [v5 setValue:v31 forHTTPHeaderField:*MEMORY[0x277D6A158]];
  }

  if ([(ISStoreURLOperation *)self needsAuthentication]|| [(ISStoreURLOperation *)self shouldSendXTokenHeader])
  {
    [(ISOperation *)self lock];
    if ([(ISStoreURLOperation *)self needsAuthentication])
    {
      v32 = [(ISStoreURLOperation *)self authenticatedDSID];
      v33 = v32 != 0;
    }

    else
    {
      v33 = 1;
    }

    v34 = [(ISStoreURLOperation *)self biometricAuthenticationContext];
    v35 = [v34 didFallbackToPassword];

    LODWORD(v34) = self->_ignorePreexistingSecureToken;
    [(ISOperation *)self unlock];
    if (v34 != 1 || (v35 & v33) != 0)
    {
      v36 = [v15 secureToken];
      if ((SSIsDaemon() & 1) == 0 && !v36)
      {
        v37 = [(ISURLOperation *)self _requestProperties];
        v38 = [v37 URLBagKey];
        v39 = [v38 isEqualToString:@"buyProduct"];

        if (v39)
        {
          v40 = [MEMORY[0x277D69A20] defaultStore];
          v41 = [v40 accounts];

          v58 = 0u;
          v59 = 0u;
          v56 = 0u;
          v57 = 0u;
          v42 = v41;
          v36 = [v42 countByEnumeratingWithState:&v56 objects:v62 count:16];
          if (v36)
          {
            v43 = v7;
            v44 = v6;
            v45 = *v57;
            while (2)
            {
              for (i = 0; i != v36; i = i + 1)
              {
                if (*v57 != v45)
                {
                  objc_enumerationMutation(v42);
                }

                v47 = *(*(&v56 + 1) + 8 * i);
                if ([v15 isEqual:v47])
                {
                  v36 = [v47 secureToken];
                  goto LABEL_52;
                }
              }

              v36 = [v42 countByEnumeratingWithState:&v56 objects:v62 count:16];
              if (v36)
              {
                continue;
              }

              break;
            }

LABEL_52:
            v6 = v44;
            v7 = v43;
          }
        }

        else
        {
          v36 = 0;
        }
      }

      [v5 setValue:v36 forHTTPHeaderField:*MEMORY[0x277D6A1D8]];
    }
  }

  v53 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)_processResponseData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(ISStoreURLOperation *)self SAPSession];
  if (!v7)
  {
    v18 = 0;
    goto LABEL_8;
  }

  v8 = [(ISURLOperation *)self activeURLRequest];
  v9 = [(ISURLOperation *)self _requestProperties];
  v10 = [(ISStoreURLOperation *)self _loadURLBagInterpreterWithRequest:v8 requestProperties:v9];

  v11 = [(ISURLOperation *)self response];
  v12 = [v11 URL];
  v13 = [v10 mescalSignaturePolicyForResponseURL:v12];

  if (v13 && [v13 policyType])
  {
    v14 = [v11 allHeaderFields];
    v15 = ISDictionaryValueForCaseInsensitiveString(v14, *MEMORY[0x277D6A150]);

    if (v15)
    {
      v16 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v15 options:0];
      v22 = 0;
      v17 = [v7 verifyData:v6 withSignature:v16 error:&v22];
      v18 = v22;

LABEL_13:
      goto LABEL_14;
    }

    v19 = *MEMORY[0x277D6A110];
    v18 = SSError();
    if (([v11 statusCode] - 400) > 0x257 || !-[ISURLOperation _loadsHTTPFailures](self, "_loadsHTTPFailures"))
    {
      v17 = 0;
      goto LABEL_13;
    }

LABEL_8:
    v17 = 1;
    goto LABEL_17;
  }

  v18 = 0;
  v17 = 1;
LABEL_14:

  if (a4 && (v17 & 1) == 0)
  {
    v20 = v18;
    v17 = 0;
    *a4 = v18;
  }

LABEL_17:

  return v17;
}

- (void)run
{
  v142 = *MEMORY[0x277D85DE8];
  [(ISOperation *)self lock];
  if (!self->_isURLBagRequest && !self->_sapSession)
  {
    if (SSIsDaemon())
    {
      [MEMORY[0x277D69CC0] sharedDefaultSession];
    }

    else
    {
      [MEMORY[0x277D69CC0] sharedPrimeSession];
    }
    v3 = ;
    sapSession = self->_sapSession;
    self->_sapSession = v3;
  }

  if (self->_isURLBagRequest)
  {
    machineDataStyle = 0;
  }

  else
  {
    machineDataStyle = self->_machineDataStyle;
  }

  self->_activeMachineDataStyle = machineDataStyle;
  [(ISOperation *)self unlock];
  if ([(ISStoreURLOperation *)self needsAuthentication])
  {
    LODWORD(v127) = ![(ISStoreURLOperation *)self ignorePreexistingSecureToken];
  }

  else
  {
    LOBYTE(v127) = 0;
  }

  v128 = 0;
  v129 = 0;
  v6 = 0x277D69000uLL;
  v118 = *MEMORY[0x277D6A140];
  v119 = *MEMORY[0x277D6A138];
  v120 = *MEMORY[0x277D6A0F8];
  while (1)
  {
    v132 = objc_autoreleasePoolPush();
    if (v129 < 1)
    {
      goto LABEL_26;
    }

    v7 = [*(v6 + 2872) sharedAccountsAuthenticationConfig];
    if (!v7)
    {
      v7 = [*(v6 + 2872) sharedConfig];
    }

    v8 = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      v8 |= 2u;
    }

    v9 = [v7 OSLogObject];
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v8 &= 2u;
    }

    if (!v8)
    {
      goto LABEL_24;
    }

    v10 = objc_opt_class();
    v11 = v10;
    v12 = [(ISURLOperation *)self requestProperties];
    v13 = [v12 URL];
    v136 = 138543618;
    v137 = v10;
    v138 = 2114;
    v139 = v13;
    LODWORD(v112) = 22;
    v109 = &v136;
    v14 = _os_log_send_and_compose_impl();

    if (v14)
    {
      v9 = [MEMORY[0x277CCACA8] stringWithCString:v14 encoding:{4, &v136, v112}];
      free(v14);
      v109 = v9;
      SSFileLog();
LABEL_24:
    }

LABEL_26:
    v15 = [(ISStoreURLOperation *)self _copyAuthenticationContextForAttemptNumber:v128, v109];
    if (v127)
    {
      v135 = 0;
      v16 = [(ISStoreURLOperation *)self _authenticateWithContext:v15 error:&v135];
      v17 = v135;
      if (!v16)
      {
        v92 = [*(v6 + 2872) sharediTunesStoreConfig];
        v93 = v92;
        if (!v92)
        {
          v93 = [*(v6 + 2872) sharedConfig];
        }

        v94 = [v93 shouldLog];
        if ([v93 shouldLogToDisk])
        {
          v94 |= 2u;
        }

        v95 = [v93 OSLogObject];
        if (!os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
        {
          v94 &= 2u;
        }

        if (v94)
        {
          v96 = objc_opt_class();
          v97 = v96;
          [(ISURLOperation *)self _sanitizedDescriptionForObject:v17];
          v99 = v98 = v15;
          v136 = 138412546;
          v137 = v96;
          v138 = 2112;
          v139 = v99;
          LODWORD(v112) = 22;
          v100 = _os_log_send_and_compose_impl();

          v15 = v98;
          if (!v100)
          {
LABEL_151:

            [(ISOperation *)self setError:v17];
LABEL_163:
            v25 = v17;
            goto LABEL_164;
          }

          v95 = [MEMORY[0x277CCACA8] stringWithCString:v100 encoding:{4, &v136, v112}];
          free(v100);
          SSFileLog();
        }

        goto LABEL_151;
      }
    }

    else
    {
      v17 = 0;
    }

    v133 = v15;
    if (![(ISStoreURLOperation *)self needsTermsAndConditionsAcceptance])
    {
      v25 = v17;
      goto LABEL_51;
    }

    v18 = objc_alloc(NSClassFromString(&cfstr_Accepttermsand.isa));
    v19 = [(ISStoreURLOperation *)self _account];
    v20 = [v18 initWithAccount:v19];

    if (!v20)
    {
      v101 = [*(v6 + 2872) sharediTunesStoreConfig];
      if (!v101)
      {
        v101 = [*(v6 + 2872) sharedConfig];
      }

      v102 = [v101 shouldLog];
      if ([v101 shouldLogToDisk])
      {
        v102 |= 2u;
      }

      v103 = [v101 OSLogObject];
      if (!os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
      {
        v102 &= 2u;
      }

      v15 = v133;
      if (v102)
      {
        v104 = objc_opt_class();
        v136 = 138412290;
        v137 = v104;
        v105 = v104;
        LODWORD(v112) = 12;
        v106 = _os_log_send_and_compose_impl();

        if (v106)
        {
          v103 = [MEMORY[0x277CCACA8] stringWithCString:v106 encoding:{4, &v136, v112}];
          free(v106);
          SSFileLog();
          goto LABEL_161;
        }
      }

      else
      {
LABEL_161:
      }

      v107 = ISError(0, 0, 0);
      [(ISOperation *)self setError:v107];

      goto LABEL_163;
    }

    v134 = v17;
    v21 = [(ISOperation *)self runSubOperation:v20 returningError:&v134];
    v22 = v134;

    if (!v21)
    {
      v24 = 0;
      goto LABEL_40;
    }

    v23 = [v20 isUserAccepted];
    if (!v23)
    {
      break;
    }

    v24 = v23;
    if (!v22)
    {

      v25 = 0;
      v15 = v133;
      goto LABEL_51;
    }

LABEL_40:
    v27 = [*(v6 + 2872) sharediTunesStoreConfig];
    if (!v27)
    {
      v27 = [*(v6 + 2872) sharedConfig];
    }

    v28 = [v27 shouldLog];
    if ([v27 shouldLogToDisk])
    {
      v28 |= 2u;
    }

    v29 = [v27 OSLogObject];
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v28 &= 2u;
    }

    if (v28)
    {
      v30 = objc_opt_class();
      v31 = v30;
      v32 = [(ISURLOperation *)self _sanitizedDescriptionForObject:v22];
      v136 = 138412546;
      v137 = v30;
      v138 = 2112;
      v139 = v32;
      LODWORD(v112) = 22;
      v110 = &v136;
      v33 = _os_log_send_and_compose_impl();

      v6 = 0x277D69000uLL;
      if (!v33)
      {
        goto LABEL_50;
      }

      v29 = [MEMORY[0x277CCACA8] stringWithCString:v33 encoding:{4, &v136, v112}];
      free(v33);
      v110 = v29;
      SSFileLog();
    }

LABEL_50:
    v25 = v22;
    [(ISOperation *)self setError:v22];

    v15 = v133;
    if ((v24 & 1) == 0)
    {
      goto LABEL_164;
    }

LABEL_51:
    [(ISStoreURLOperation *)self _runURLOperation];
    v34 = [(ISOperation *)self error];
    v35 = [(ISURLOperation *)self response];
    if (!v35 || ![(ISStoreURLOperation *)self machineDataStyle])
    {
      v39 = 0;
      goto LABEL_85;
    }

    v36 = [objc_alloc(MEMORY[0x277D69B58]) initWithURLResponse:v35];
    if (v36)
    {
      v125 = v25;
      if (![(ISStoreURLOperation *)self _performMachineDataRequest:v36])
      {
        goto LABEL_60;
      }

      v37 = [v36 actionName];
      v38 = [v37 isEqualToString:@"RP"];

      if (v38)
      {
        v129 = 0;
        goto LABEL_69;
      }

      v40 = v129++;
      if (v40 <= 0)
      {
LABEL_69:
        v130 = v35;
        v41 = [*(v6 + 2872) sharedAccountsAuthenticationConfig];
        if (!v41)
        {
          v41 = [MEMORY[0x277D69B38] sharedConfig];
        }

        v48 = [v41 shouldLog];
        if ([v41 shouldLogToDisk])
        {
          v48 |= 2u;
        }

        v43 = [v41 OSLogObject];
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          v49 = v48;
        }

        else
        {
          v49 = v48 & 2;
        }

        if (v49)
        {
          v50 = objc_opt_class();
          v122 = v50;
          v116 = [(ISURLOperation *)self requestProperties];
          v51 = [v116 URL];
          v114 = [(ISStoreURLOperation *)self _account];
          v52 = [v114 accountName];
          v53 = SSHashIfNeeded();
          v136 = 138543874;
          v137 = v50;
          v138 = 2114;
          v139 = v51;
          v140 = 2114;
          v141 = v53;
          LODWORD(v112) = 32;
          v111 = &v136;
          v47 = _os_log_send_and_compose_impl();

          v39 = 1;
          if (!v47)
          {
            goto LABEL_78;
          }

LABEL_68:
          v15 = v133;
          v43 = [MEMORY[0x277CCACA8] stringWithCString:v47 encoding:{4, &v136, v112}];
          free(v47);
          v111 = v43;
          SSFileLog();
        }

        else
        {
          v39 = 1;
        }

        v35 = v130;
      }

      else
      {
LABEL_60:
        v41 = [*(v6 + 2872) sharedAccountsAuthenticationConfig];
        if (!v41)
        {
          v41 = [MEMORY[0x277D69B38] sharedConfig];
        }

        v42 = [v41 shouldLog];
        if ([v41 shouldLogToDisk])
        {
          v42 |= 2u;
        }

        v43 = [v41 OSLogObject];
        if (!os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          v42 &= 2u;
        }

        if (v42)
        {
          v130 = v35;
          v44 = objc_opt_class();
          v121 = v44;
          v45 = [(ISURLOperation *)self requestProperties];
          v46 = [v45 URL];
          v136 = 138543618;
          v137 = v44;
          v138 = 2114;
          v139 = v46;
          LODWORD(v112) = 22;
          v111 = &v136;
          v47 = _os_log_send_and_compose_impl();

          v39 = 0;
          if (v47)
          {
            goto LABEL_68;
          }

LABEL_78:
          v15 = v133;
          v25 = v125;
          v35 = v130;
LABEL_83:

          v6 = 0x277D69000uLL;
          goto LABEL_84;
        }

        v39 = 0;
      }

      v25 = v125;
      goto LABEL_83;
    }

    v39 = 0;
LABEL_84:

LABEL_85:
    v54 = [(ISStoreURLOperation *)self biometricAuthenticationContext];
    v55 = [v54 challenge];

    if (v55)
    {
      v56 = [(ISStoreURLOperation *)self _shouldRetryForTouchIDChallengeWithError:v34];
      if ((v39 | [(ISStoreURLOperation *)self _shouldRetryForAbsintheWithResponse:v35]))
      {
        goto LABEL_124;
      }

      if (v56)
      {
        v131 = v35;
        [(ISStoreURLOperation *)self _continueTouchIDSession];
        if ([(SSBiometricAuthenticationContext *)self->_biometricAuthenticationContext didBuyParamsChange])
        {
          v57 = [(ISStoreURLOperation *)self biometricSessionDelegate];
          if (objc_opt_respondsToSelector())
          {
            [v57 sender:self didFallbackToPassword:{-[SSBiometricAuthenticationContext didFallbackToPassword](self->_biometricAuthenticationContext, "didFallbackToPassword")}];
          }

          if (objc_opt_respondsToSelector())
          {
            [v57 sender:self shouldContinueTouchIDSession:1];
          }

          if (objc_opt_respondsToSelector())
          {
            v58 = [(SSBiometricAuthenticationContext *)self->_biometricAuthenticationContext challenge];
            v123 = [(SSBiometricAuthenticationContext *)self->_biometricAuthenticationContext signature];
            v117 = [(SSBiometricAuthenticationContext *)self->_biometricAuthenticationContext paymentTokenData];
            v115 = [(SSBiometricAuthenticationContext *)self->_biometricAuthenticationContext fpanID];
            v113 = [(SSBiometricAuthenticationContext *)self->_biometricAuthenticationContext isExtendedAction];
            v59 = [(SSBiometricAuthenticationContext *)self->_biometricAuthenticationContext isPayment];
            v60 = objc_alloc_init(MEMORY[0x277CBEB38]);
            v61 = [(SSBiometricAuthenticationContext *)self->_biometricAuthenticationContext xAppleAMDHeader];
            if (v61)
            {
              [v60 setObject:v61 forKeyedSubscript:v119];
            }

            v62 = [(SSBiometricAuthenticationContext *)self->_biometricAuthenticationContext xAppleAMDMHeader];
            if (v62)
            {
              [v60 setObject:v62 forKeyedSubscript:v118];
            }

            LOBYTE(v109) = v59;
            [v57 sender:self willSendChallenge:v58 andSignature:v123 andPaymentTokenData:v117 andFpanID:v115 isExtendedAction:v113 isPayment:v109 additionalHeaders:v60];

            v63 = 0;
LABEL_133:
            v35 = v131;
LABEL_135:

            v6 = 0x277D69000;
LABEL_138:

            goto LABEL_139;
          }

          v63 = 0;
LABEL_137:
          v35 = v131;
          goto LABEL_138;
        }

LABEL_123:
        v35 = v131;
LABEL_124:
        v57 = [*(v6 + 2872) sharedAccountsAuthenticationConfig];
        if (!v57)
        {
          v57 = [*(v6 + 2872) sharedConfig];
        }

        v84 = [v57 shouldLog];
        if ([v57 shouldLogToDisk])
        {
          v84 |= 2u;
        }

        v58 = [v57 OSLogObject];
        if (!os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
        {
          v84 &= 2u;
        }

        if (!v84)
        {
          v63 = 1;
          goto LABEL_135;
        }

        v131 = v35;
        v85 = v34;
        v86 = v25;
        v87 = objc_opt_class();
        v88 = v87;
        v89 = [(ISOperation *)self error];
        v90 = [(ISURLOperation *)self _sanitizedDescriptionForObject:v89];
        v136 = 138543618;
        v137 = v87;
        v138 = 2112;
        v139 = v90;
        LODWORD(v112) = 22;
        v109 = &v136;
        v91 = _os_log_send_and_compose_impl();

        if (v91)
        {
          v58 = [MEMORY[0x277CCACA8] stringWithCString:v91 encoding:{4, &v136, v112}];
          free(v91);
          v109 = v58;
          SSFileLog();
          v63 = 1;
          v25 = v86;
          v34 = v85;
          v15 = v133;
          goto LABEL_133;
        }

        v63 = 1;
        v6 = 0x277D69000;
        v25 = v86;
        v34 = v85;
        v15 = v133;
        goto LABEL_137;
      }
    }

    else if ((v39 | [(ISStoreURLOperation *)self _shouldRetryForAbsintheWithResponse:v35]))
    {
      goto LABEL_124;
    }

    if (-[ISOperation success](self, "success") || !-[ISStoreURLOperation _isErrorTokenError:](self, "_isErrorTokenError:", v34) || (-[ISURLOperation authenticationContext](self, "authenticationContext"), v64 = objc_claimAutoreleasedReturnValue(), v65 = [v64 promptStyle], v64, v65 == 1000))
    {
      v63 = 0;
      goto LABEL_139;
    }

    v126 = v25;
    v66 = [(ISStoreURLOperation *)self _account];
    v67 = [*(v6 + 2872) sharedAccountsAuthenticationConfig];
    if (!v67)
    {
      v67 = [*(v6 + 2872) sharedConfig];
    }

    v131 = v35;
    v68 = [v67 shouldLog];
    if ([v67 shouldLogToDisk])
    {
      v68 |= 2u;
    }

    v69 = [v67 OSLogObject];
    if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
    {
      v70 = v68;
    }

    else
    {
      v70 = v68 & 2;
    }

    v127 = v66;
    if (v70)
    {
      v71 = objc_opt_class();
      v124 = v71;
      v72 = [(ISURLOperation *)self requestProperties];
      v73 = [v72 URL];
      v74 = [v66 accountName];
      v75 = SSHashIfNeeded();
      v136 = 138543874;
      v137 = v71;
      v138 = 2114;
      v139 = v73;
      v140 = 2114;
      v141 = v75;
      LODWORD(v112) = 32;
      v109 = &v136;
      v76 = _os_log_send_and_compose_impl();

      v66 = v127;
      v15 = v133;

      if (!v76)
      {
        goto LABEL_115;
      }

      v69 = [MEMORY[0x277CCACA8] stringWithCString:v76 encoding:{4, &v136, v112}];
      free(v76);
      v109 = v69;
      SSFileLog();
    }

LABEL_115:
    [v66 setAuthenticated:0];
    [v66 setSecureToken:0];
    v77 = [MEMORY[0x277D69A20] defaultStore];
    [v77 saveAccount:v66 verifyCredentials:0 error:0];

    [(ISStoreURLOperation *)self setNeedsAuthentication:1];
    v78 = [v34 userInfo];
    v79 = [v78 objectForKey:v120];

    if (v79)
    {
      if (([v79 BOOLValue] & 1) == 0)
      {
        v80 = [(ISURLOperation *)self authenticationContext];
        v81 = [v80 promptStyle];

        if (v81 != 1)
        {
          [(ISStoreURLOperation *)self setIgnorePreexistingSecureToken:0];
        }
      }
    }

    v82 = [(ISURLOperation *)self HTTPArchive];
    v6 = 0x277D69000uLL;
    v83 = [MEMORY[0x277D69B38] sharedAccountsAuthenticationConfig];
    [v82 writeToDiskWithLogConfig:v83 compressed:0 error:0];

    LOBYTE(v127) = 1;
    v25 = v126;
    if (v128 <= 0)
    {
      ++v128;
      goto LABEL_123;
    }

    v63 = 0;
    ++v128;
    v35 = v131;
LABEL_139:

    objc_autoreleasePoolPop(v132);
    if ((v63 & 1) == 0)
    {
      goto LABEL_165;
    }
  }

  v26 = ISError(16, 0, 0);

  if (v26)
  {
    v24 = 0;
    v22 = v26;
    goto LABEL_40;
  }

  v25 = v20;
  v15 = v133;
LABEL_164:

  objc_autoreleasePoolPop(v132);
LABEL_165:
  v108 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldFollowRedirectWithRequest:(id)a3 returningError:(id *)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if ([(ISStoreURLOperation *)self urlKnownToBeTrusted])
  {
    v7 = 1;
  }

  else
  {
    v8 = [(ISStoreURLOperation *)self URLBagContext];
    v9 = [(ISOperation *)self loadedURLBagWithContext:v8 returningError:0];
    v10 = [v6 URL];
    v7 = [v9 urlIsTrusted:v10];

    if ((v7 & 1) == 0)
    {
      v11 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
      if (!v11)
      {
        v11 = [MEMORY[0x277D69B38] sharedConfig];
      }

      v12 = [v11 shouldLog];
      if ([v11 shouldLogToDisk])
      {
        v13 = v12 | 2;
      }

      else
      {
        v13 = v12;
      }

      v14 = [v11 OSLogObject];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = v13;
      }

      else
      {
        v15 = v13 & 2;
      }

      if (v15)
      {
        v24 = v8;
        v16 = objc_opt_class();
        v23 = v16;
        v17 = [v6 URL];
        [(ISURLOperation *)self _sanitizedURLForURL:v17];
        v25 = 138412546;
        v26 = v16;
        v8 = v24;
        v28 = v27 = 2112;
        LODWORD(v22) = 22;
        v18 = _os_log_send_and_compose_impl();

        if (v18)
        {
          v19 = [MEMORY[0x277CCACA8] stringWithCString:v18 encoding:{4, &v25, v22}];
          free(v18);
          SSFileLog();
        }
      }

      else
      {
      }

      if (a4)
      {
        *a4 = ISError(3, 0, 0);
      }
    }
  }

  v20 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)_willSendRequest:(id)a3
{
  v55 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ISURLOperation *)self _requestProperties];
  activeMachineDataStyle = self->_activeMachineDataStyle;
  if (activeMachineDataStyle == 3)
  {
    SSVAnisetteAddHeadersToURLRequest();
LABEL_10:
    v10 = 0;
    goto LABEL_11;
  }

  if (activeMachineDataStyle != 2)
  {
    if (activeMachineDataStyle == 1)
    {
      v7 = [(ISStoreURLOperation *)self _account];
      v8 = v7;
      if (v7)
      {
        v9 = [v7 uniqueIdentifier];
        [v9 unsignedLongLongValue];
        SSVAnisetteAddHeadersToURLRequest();
      }
    }

    goto LABEL_10;
  }

  v10 = [(ISStoreURLOperation *)self _loadURLBagInterpreterWithRequest:v4 requestProperties:v5];
  v11 = [v4 URL];
  v12 = [v10 shouldSendAnonymousMachineIdentifierForURL:v11];

  if (v12)
  {
    SSVAnisetteAddHeadersToURLRequest();
  }

LABEL_11:
  v13 = [(ISStoreURLOperation *)self _absintheHeaders];
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __40__ISStoreURLOperation__willSendRequest___block_invoke;
  v51[3] = &unk_27A670B38;
  v14 = v4;
  v52 = v14;
  [v13 enumerateKeysAndObjectsUsingBlock:v51];
  v15 = [(ISStoreURLOperation *)self SAPSession];
  if (v15)
  {
    if (!v10)
    {
      v10 = [(ISStoreURLOperation *)self _loadURLBagInterpreterWithRequest:v14 requestProperties:v5];
    }

    v16 = [v14 URL];
    v17 = [v10 mescalSignaturePolicyForRequestURL:v16];

    if (v17 && [v17 policyType])
    {
      v18 = [v17 dataToSignWithURLRequest:v14];
      v19 = [(ISStoreURLOperation *)self SAPSession];
      v20 = [v19 signatureWithData:v18 error:0];

      if (v20)
      {
        v21 = [v20 base64EncodedStringWithOptions:0];
        [v14 setValue:v21 forHTTPHeaderField:*MEMORY[0x277D6A150]];
      }
    }
  }

  if ([(ISStoreURLOperation *)self shouldSendAKClientInfoHeaders])
  {
    [v14 ak_addClientInfoHeader];
  }

  if ([(ISStoreURLOperation *)self shouldSendAKPRKRequestHeader])
  {
    [v14 ak_addPRKRequestHeader];
  }

  if ((SSIsDaemon() & 1) != 0 || ISBiometricsHasEntitlement(@"adi-client"))
  {
    v22 = [(ISStoreURLOperation *)self biometricAuthenticationContext];
    v23 = [(ISURLOperation *)self _accountIdentifier];
    if (v23)
    {
      v24 = [v22 signature];
      v25 = v24 != 0;

      ISBiometricsAddHeadersForTouchIDRequestToURLRequest(v14, v23, v25, [v22 isExtendedAction], 0);
      if ([v22 shouldSendFallbackHeader])
      {
        [v14 setValue:@"FB" forHTTPHeaderField:*MEMORY[0x277D6A198]];
      }

      else
      {
        v30 = [v22 signature];

        if (v30)
        {
          v43 = v15;
          v47 = v5;
          v46 = [v22 challenge];
          v45 = [v22 signature];
          v49 = [v22 paymentTokenData];
          v48 = [v22 fpanID];
          v42 = [v22 isExtendedAction];
          v41 = [v22 isPayment];
          v44 = [(ISStoreURLOperation *)self biometricSessionDelegate];
          v31 = objc_alloc_init(MEMORY[0x277CBEB38]);
          v32 = [v14 allHTTPHeaderFields];
          v33 = *MEMORY[0x277D6A138];
          v34 = [v32 objectForKeyedSubscript:*MEMORY[0x277D6A138]];

          if (v34)
          {
            [v22 setXAppleAMDHeader:v34];
            [v31 setObject:v34 forKeyedSubscript:v33];
          }

          v50 = v31;
          v35 = [v14 allHTTPHeaderFields];
          v36 = *MEMORY[0x277D6A140];
          v37 = [v35 objectForKeyedSubscript:*MEMORY[0x277D6A140]];

          if (v37)
          {
            [v22 setXAppleAMDMHeader:v37];
            [v50 setObject:v37 forKeyedSubscript:v36];
          }

          if (objc_opt_respondsToSelector())
          {
            LOBYTE(v39) = v41;
            [v44 sender:self willSendChallenge:v46 andSignature:v45 andPaymentTokenData:v49 andFpanID:v48 isExtendedAction:v42 isPayment:v39 additionalHeaders:v50];
          }

          ISBiometricsAddHeadersForTouchIDSignatureToURLRequest(v14, v46, v45);
          [v22 setChallenge:0];
          [v22 setSignature:0];

          v5 = v47;
          v15 = v43;
        }
      }
    }

    goto LABEL_46;
  }

  v22 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!v22)
  {
    v22 = [MEMORY[0x277D69B38] sharedConfig];
  }

  v26 = [v22 shouldLog];
  if ([v22 shouldLogToDisk])
  {
    v26 |= 2u;
  }

  v23 = [v22 OSLogObject];
  if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    v26 &= 2u;
  }

  if (!v26)
  {
    goto LABEL_46;
  }

  v27 = objc_opt_class();
  v53 = 138412290;
  v54 = v27;
  v28 = v27;
  LODWORD(v40) = 12;
  v29 = _os_log_send_and_compose_impl();

  if (v29)
  {
    v23 = [MEMORY[0x277CCACA8] stringWithCString:v29 encoding:{4, &v53, v40}];
    free(v29);
    SSFileLog();
LABEL_46:
  }

  v38 = *MEMORY[0x277D85DE8];
}

- (id)_ssBag_copyGUIDSchemesFromBag:(id)a3
{
  v3 = [a3 dictionaryForKey:@"guid-urls" error:0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 objectForKey:@"schemes"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = objc_alloc_init(MEMORY[0x277CBEA60]);
    }

    v6 = v5;

    if (!v6)
    {
      goto LABEL_8;
    }

LABEL_5:
    v7 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v6];
    goto LABEL_9;
  }

  v6 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{@"https", 0}];
  if (v6)
  {
    goto LABEL_5;
  }

LABEL_8:
  v7 = 0;
LABEL_9:

  return v7;
}

- (id)_ssBag_copyGUIDPatternsFromBag:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v21 = 0;
  v5 = [v3 dictionaryForKey:@"guid-urls" error:&v21];
  v6 = v21;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || v6)
  {
    v7 = [objc_alloc(MEMORY[0x277CCAC68]) initWithPattern:@"/WebObjects/MZ(Buy|Finance|FastFinance)[.]woa/" options:1 error:0];
    if (v7)
    {
      [v4 addObject:v7];
    }
  }

  else
  {
    v7 = [v5 objectForKey:@"regex"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v7 = v7;
      v8 = [v7 countByEnumeratingWithState:&v17 objects:v22 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v18;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v18 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v17 + 1) + 8 * i);
            v13 = objc_alloc(MEMORY[0x277CCAC68]);
            v14 = [v13 initWithPattern:v12 options:1 error:{0, v17}];
            if (v14)
            {
              [v4 addObject:v14];
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v17 objects:v22 count:16];
        }

        while (v9);
      }
    }
  }

  v15 = *MEMORY[0x277D85DE8];

  return v4;
}

- (BOOL)_ssBag_shouldSendGUIDForURL:(id)a3 withBag:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (SSDebugAlwaysSendGUID())
  {
    v8 = 1;
  }

  else
  {
    v9 = [(ISStoreURLOperation *)self _ssBag_copyGUIDPatternsFromBag:v7];
    v10 = [(ISStoreURLOperation *)self _ssBag_copyGUIDSchemesFromBag:v7];
    v11 = [v6 scheme];
    v12 = [v10 containsObject:v11];

    if (v12)
    {
      if ([v9 count])
      {
        v13 = [v6 absoluteString];
        v14 = [v13 length];
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v15 = v9;
        v16 = [v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v16)
        {
          v17 = v16;
          v22 = v9;
          v18 = *v24;
          while (2)
          {
            for (i = 0; i != v17; ++i)
            {
              if (*v24 != v18)
              {
                objc_enumerationMutation(v15);
              }

              if ([*(*(&v23 + 1) + 8 * i) rangeOfFirstMatchInString:v13 options:0 range:{0, v14}] != 0x7FFFFFFFFFFFFFFFLL)
              {
                v8 = 1;
                goto LABEL_16;
              }
            }

            v17 = [v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
            if (v17)
            {
              continue;
            }

            break;
          }

          v8 = 0;
LABEL_16:
          v9 = v22;
        }

        else
        {
          v8 = 0;
        }
      }

      else
      {
        v8 = 1;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  v20 = *MEMORY[0x277D85DE8];
  return v8;
}

+ (id)_ssBag_copyHeaderPatternsFromBag:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v5 = [v3 arrayForKey:@"send-content-restrictions-header" error:0];
  if ([v5 count])
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v17 + 1) + 8 * i);
          v13 = objc_alloc(MEMORY[0x277CCAC68]);
          v14 = [v13 initWithPattern:v12 options:1 error:{0, v17}];
          if (v14)
          {
            [v6 addObject:v14];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v9);
    }

    if ([v6 count])
    {
      [v4 setObject:v6 forKey:@"X-Apple-Restrictions"];
    }
  }

  if (![v4 count])
  {

    v4 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)_ssBag_copyExtraHeadersForURL:(id)a3 bag:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [a1 _ssBag_copyHeaderPatternsFromBag:a4];
  if (v7)
  {
    v21 = v6;
    v8 = [v6 absoluteString];
    v9 = [v8 length];
    v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v10 = v7;
    v24 = [v10 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v24)
    {
      v23 = *v30;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v30 != v23)
          {
            objc_enumerationMutation(v10);
          }

          v12 = *(*(&v29 + 1) + 8 * i);
          v13 = [v10 objectForKey:v12];
          v25 = 0u;
          v26 = 0u;
          v27 = 0u;
          v28 = 0u;
          v14 = v13;
          v15 = [v14 countByEnumeratingWithState:&v25 objects:v33 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v26;
            while (2)
            {
              for (j = 0; j != v16; ++j)
              {
                if (*v26 != v17)
                {
                  objc_enumerationMutation(v14);
                }

                if ([*(*(&v25 + 1) + 8 * j) rangeOfFirstMatchInString:v8 options:0 range:{0, v9}] != 0x7FFFFFFFFFFFFFFFLL)
                {
                  [v22 addObject:v12];
                  goto LABEL_17;
                }
              }

              v16 = [v14 countByEnumeratingWithState:&v25 objects:v33 count:16];
              if (v16)
              {
                continue;
              }

              break;
            }
          }

LABEL_17:
        }

        v24 = [v10 countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v24);
    }

    v6 = v21;
  }

  else
  {
    v22 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];

  return v22;
}

- (void)_setStoreFrontIdentifier:(id)a3 isTransient:(BOOL)a4
{
  v5 = MEMORY[0x277D69A80];
  v6 = a3;
  v8 = [v5 currentDevice];
  v7 = [(ISStoreURLOperation *)self _account];
  [v8 setStoreFrontIdentifier:v6 account:v7];
}

- (id)_absintheHeaders
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = [(ISStoreURLOperation *)self logKey];
  v4 = AMSSetLogKey();

  v5 = [(ISStoreURLOperation *)self bag];

  if (v5)
  {
    v6 = [ISAMSBagShim alloc];
    v7 = [(ISStoreURLOperation *)self bag];
    v8 = [(ISAMSBagShim *)v6 initWithBag:v7];
  }

  else
  {
    v9 = [(ISStoreURLOperation *)self URLBagContext];
    v7 = [(ISStoreURLOperation *)self _urlBagForContext:v9];

    v8 = [[ISAMSBagShim alloc] initWithURLBag:v7];
  }

  v10 = v8;

  v11 = [(ISStoreURLOperation *)self _buyParams];
  if (v11)
  {
    v12 = [objc_alloc(MEMORY[0x277CEE438]) initWithString:v11];
  }

  else
  {
    v12 = 0;
  }

  v13 = MEMORY[0x277CEE3C8];
  v14 = [(ISURLOperation *)self activeURLRequest];
  v15 = [v13 headersForRequest:v14 buyParams:v12 bag:v10];
  v28 = 0;
  v16 = [v15 resultWithError:&v28];
  v17 = v28;

  if (v17)
  {
    v18 = [MEMORY[0x277D69B38] sharedConfig];
    if (!v18)
    {
      v18 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v19 = [v18 shouldLog];
    if ([v18 shouldLogToDisk])
    {
      v20 = v19 | 2;
    }

    else
    {
      v20 = v19;
    }

    v21 = [v18 OSLogObject];
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v20 &= 2u;
    }

    if (v20)
    {
      v22 = objc_opt_class();
      v23 = AMSLogKey();
      v29 = 138543874;
      v30 = v22;
      v31 = 2114;
      v32 = v23;
      v33 = 2114;
      v34 = v17;
      LODWORD(v27) = 32;
      v24 = _os_log_send_and_compose_impl();

      if (!v24)
      {
LABEL_19:

        goto LABEL_20;
      }

      v21 = [MEMORY[0x277CCACA8] stringWithCString:v24 encoding:{4, &v29, v27}];
      free(v24);
      SSFileLog();
    }

    goto LABEL_19;
  }

LABEL_20:

  v25 = *MEMORY[0x277D85DE8];

  return v16;
}

+ (void)_addAccountDSID:(id)a3 toRequest:(id)a4
{
  v11 = a3;
  v5 = a4;
  v6 = *MEMORY[0x277D6A160];
  v7 = [v5 valueForHTTPHeaderField:*MEMORY[0x277D6A160]];

  if (!v7)
  {
    v8 = [v11 uniqueIdentifier];
    v9 = v8;
    if (v8 && [v8 unsignedLongLongValue])
    {
      v10 = [v9 stringValue];
      [v5 setValue:v10 forHTTPHeaderField:v6];
    }
  }
}

+ (void)_addiTunesStoreHeadersToRequest:(id)a3 withAccount:(id)a4 appendAuthKitHeaders:(BOOL)a5 appendStorefrontToURL:(BOOL)a6 clientBundleIdentifier:(id)a7 extraHeaders:(id)a8 storefrontSuffix:(id)a9
{
  v11 = a6;
  v98 = a5;
  v128 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v102 = a7;
  v97 = a8;
  v103 = a9;
  [a1 _addAccountDSID:v15 toRequest:v14];
  [a1 _addPrimaryiCloudDSIDToRequest:v14];
  v104 = v15;
  v16 = [ISStoreURLOperation _storeFrontIdentifierForAccount:v15];
  v17 = 0x277D69000uLL;
  v18 = [MEMORY[0x277D69B38] sharedAccountsStorefrontConfig];
  if (!v18)
  {
    v18 = [MEMORY[0x277D69B38] sharedConfig];
  }

  v19 = [v18 shouldLog];
  if ([v18 shouldLogToDisk])
  {
    v20 = v19 | 2;
  }

  else
  {
    v20 = v19;
  }

  v21 = [v18 OSLogObject];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    v22 = v20;
  }

  else
  {
    v22 = v20 & 2;
  }

  if (v22)
  {
    v23 = objc_opt_class();
    v95 = v23;
    [v14 URL];
    v24 = v99 = v11;
    SSHashIfNeeded();
    v26 = v25 = v16;
    v27 = [v104 hashedDescription];
    v120 = 138544130;
    v121 = v23;
    v122 = 2114;
    v123 = v24;
    v124 = 2114;
    v125 = v26;
    v126 = 2114;
    v127 = v27;
    LODWORD(v94) = 42;
    v93 = &v120;
    v28 = _os_log_send_and_compose_impl();

    v16 = v25;
    v17 = 0x277D69000;

    v11 = v99;
    if (v28)
    {
      v29 = [MEMORY[0x277CCACA8] stringWithCString:v28 encoding:{4, &v120, v94}];
      free(v28);
      v93 = v29;
      SSFileLog();
    }
  }

  else
  {
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v30 = *MEMORY[0x277D6A190];
    v31 = [v14 valueForHTTPHeaderField:*MEMORY[0x277D6A190]];
    if (!v31)
    {
      if ([v103 length])
      {
        v41 = v103;
      }

      else
      {
        v42 = v102;
        if (!v102)
        {
          v43 = [MEMORY[0x277CCA8D8] mainBundle];
          v44 = [v43 bundleIdentifier];

          v42 = v44;
        }

        v102 = v42;
        v41 = [ISLoadURLBagOperation storeFrontHeaderSuffixForBundleIdentifier:v93];
      }

      v103 = v41;
      if ([v41 length])
      {
        v45 = [v16 stringByAppendingString:v41];

        v16 = v45;
      }

      v40 = v16;
      v16 = [v16 copy];
      [v14 setValue:v16 forHTTPHeaderField:v30];
      goto LABEL_35;
    }

    v32 = [*(v17 + 2872) sharedAccountsStorefrontConfig];
    if (!v32)
    {
      v32 = [*(v17 + 2872) sharedConfig];
    }

    v33 = [v32 shouldLog];
    if ([v32 shouldLogToDisk])
    {
      v33 |= 2u;
    }

    v34 = [v32 OSLogObject];
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      v35 = v33;
    }

    else
    {
      v35 = v33 & 2;
    }

    if (v35)
    {
      v36 = objc_opt_class();
      v100 = v36;
      SSHashIfNeeded();
      v38 = v37 = v11;
      v120 = 138543618;
      v121 = v36;
      v122 = 2114;
      v123 = v38;
      LODWORD(v94) = 22;
      v93 = &v120;
      v39 = _os_log_send_and_compose_impl();

      v11 = v37;
      if (!v39)
      {
LABEL_26:

        v40 = v31;
        v17 = 0x277D69000;
LABEL_35:

        v16 = v40;
        goto LABEL_36;
      }

      v34 = [MEMORY[0x277CCACA8] stringWithCString:v39 encoding:{4, &v120, v94}];
      free(v39);
      v93 = v34;
      SSFileLog();
    }

    goto LABEL_26;
  }

LABEL_36:
  if (!v11)
  {
    goto LABEL_49;
  }

  v46 = [*(v17 + 2872) sharedAccountsStorefrontConfig];
  if (!v46)
  {
    v46 = [*(v17 + 2872) sharedConfig];
  }

  v47 = [v46 shouldLog];
  if ([v46 shouldLogToDisk])
  {
    v47 |= 2u;
  }

  v48 = [v46 OSLogObject];
  if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
  {
    v49 = v47;
  }

  else
  {
    v49 = v47 & 2;
  }

  if (!v49)
  {
    goto LABEL_47;
  }

  v50 = objc_opt_class();
  v120 = 138543362;
  v121 = v50;
  v51 = v50;
  LODWORD(v94) = 12;
  v93 = &v120;
  v52 = _os_log_send_and_compose_impl();

  if (v52)
  {
    v48 = [MEMORY[0x277CCACA8] stringWithCString:v52 encoding:{4, &v120, v94}];
    free(v52);
    v93 = v48;
    SSFileLog();
LABEL_47:
  }

  [a1 _appendStorefront:v16 toRequestURL:v14];
LABEL_49:
  v53 = +[ISClient currentClient];
  v54 = [v53 partnerHeader];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v55 = [v54 copy];
    [v14 setValue:v55 forHTTPHeaderField:@"X-Apple-Partner"];
  }

  v56 = +[ISNetworkObserver sharedInstance];
  v57 = [v56 connectionTypeHeader];

  if ([v57 length])
  {
    v58 = [v57 copy];
    [v14 setValue:v58 forHTTPHeaderField:@"X-Apple-Connection-Type"];
  }

  if (SSIsAppStoreDaemon())
  {
    v59 = v57;
  }

  else
  {
    v60 = [MEMORY[0x277D69A80] currentDevice];
    v59 = [v60 softwareLibraryIdentifier];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v61 = [v59 copy];
      [v14 setValue:v61 forHTTPHeaderField:*MEMORY[0x277D6A188]];
    }
  }

  v62 = [v53 appleClientApplication];

  if (v62)
  {
    v63 = [v62 copy];
    [v14 setValue:v63 forHTTPHeaderField:*MEMORY[0x277D6A158]];
  }

  v64 = [v53 appleClientVersions];

  if ([v64 length])
  {
    v65 = [v64 copy];
    [v14 setValue:v65 forHTTPHeaderField:@"X-Apple-Client-Versions"];
  }

  v101 = v16;
  v96 = v53;
  v66 = [v53 clientProvidedHeaders];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v115 = 0u;
    v116 = 0u;
    v113 = 0u;
    v114 = 0u;
    v67 = [v66 allKeys];
    v68 = [v67 countByEnumeratingWithState:&v113 objects:v119 count:16];
    if (v68)
    {
      v69 = v68;
      v70 = *v114;
      do
      {
        for (i = 0; i != v69; ++i)
        {
          if (*v114 != v70)
          {
            objc_enumerationMutation(v67);
          }

          v72 = *(*(&v113 + 1) + 8 * i);
          v73 = [v66 objectForKeyedSubscript:v72];
          v74 = [v73 copy];
          [v14 setValue:v74 forHTTPHeaderField:v72];
        }

        v69 = [v67 countByEnumeratingWithState:&v113 objects:v119 count:16];
      }

      while (v69);
    }
  }

  v111 = 0u;
  v112 = 0u;
  v109 = 0u;
  v110 = 0u;
  v75 = v97;
  v76 = [v75 countByEnumeratingWithState:&v109 objects:v118 count:16];
  if (v76)
  {
    v77 = v76;
    v78 = *v110;
    do
    {
      for (j = 0; j != v77; ++j)
      {
        if (*v110 != v78)
        {
          objc_enumerationMutation(v75);
        }

        if ([*(*(&v109 + 1) + 8 * j) isEqualToString:@"X-Apple-Restrictions"])
        {
          v80 = [a1 _restrictionsHeaderValue];
          if ([v80 length])
          {
            v81 = [v80 copy];
            [v14 setValue:v81 forHTTPHeaderField:@"X-Apple-Restrictions"];
          }
        }
      }

      v77 = [v75 countByEnumeratingWithState:&v109 objects:v118 count:16];
    }

    while (v77);
  }

  if (v98)
  {
    v82 = +[ISStoreURLOperation _authKitSession];
    v83 = [v82 appleIDHeadersForRequest:v14];

    v107 = 0u;
    v108 = 0u;
    v105 = 0u;
    v106 = 0u;
    v84 = v83;
    v85 = [v84 countByEnumeratingWithState:&v105 objects:v117 count:16];
    if (v85)
    {
      v86 = v85;
      v87 = *v106;
      do
      {
        for (k = 0; k != v86; ++k)
        {
          if (*v106 != v87)
          {
            objc_enumerationMutation(v84);
          }

          v89 = *(*(&v105 + 1) + 8 * k);
          v90 = [v84 objectForKeyedSubscript:v89];
          v91 = [v90 copy];
          [v14 setValue:v91 forHTTPHeaderField:v89];
        }

        v86 = [v84 countByEnumeratingWithState:&v105 objects:v117 count:16];
      }

      while (v86);
    }
  }

  v92 = *MEMORY[0x277D85DE8];
}

+ (void)_addPrimaryiCloudDSIDToRequest:(id)a3
{
  v7 = a3;
  v3 = [MEMORY[0x277D69CB0] sharedAccountStore];
  v4 = [v3 primaryAppleAccount];

  v5 = [v4 aa_personID];
  if ([v5 length])
  {
    v6 = [v5 copy];
    [v7 setValue:v6 forHTTPHeaderField:*MEMORY[0x277D6A128]];
  }
}

+ (void)_appendStorefront:(id)a3 toRequestURL:(id)a4
{
  v9 = a3;
  v5 = a4;
  v6 = [v5 URL];
  if ([v6 _ss_hasQueryParameter:@"storefront"])
  {
    v7 = [v6 _ss_URLByRemovingQueryParameter:@"storefront"];

    v6 = v7;
  }

  if ([v9 length])
  {
    v8 = [v6 URLByAppendingQueryParameter:@"storefront" value:v9];

    v6 = v8;
  }

  [v5 setURL:v6];
}

- (void)_applyAnalyticsCookiesToRequest:(id)a3 withBag:(id)a4 oldBag:(id)a5
{
  v84 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v9)
  {
    v12 = *MEMORY[0x277D6A4F8];
    v76 = 0;
    v13 = [v9 dictionaryForKey:v12 error:&v76];
    v14 = v76;
    v75 = v14;
    v15 = [v9 arrayForKey:@"clientIDDomains" error:&v75];
    v16 = v75;
  }

  else
  {
    if (v10)
    {
      v17 = [v10 valueForKey:*MEMORY[0x277D6A4F8]];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = v17;
      }

      else
      {
        v13 = 0;
      }

      v18 = [v11 valueForKey:@"clientIDDomains"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = v18;
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v13 = 0;
      v15 = 0;
    }

    v16 = 0;
  }

  v19 = [v13 objectForKey:@"metricsUrl"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  v70 = v20;
  if (v20)
  {
    v64 = [MEMORY[0x277CBEBC0] URLWithString:v20];
    if (v64)
    {
      v65 = v15;
      if (!v16 && [v15 count])
      {
        v62 = v13;
        v69 = v11;
        v60 = v9;
        v40 = [(ISURLOperation *)self _requestProperties];
        [v40 URLBagType];
        v41 = SSAccountScopeForURLBagType();

        v42 = [MEMORY[0x277D69CB8] sharedStorage];
        v43 = [(ISURLOperation *)self _accountIdentifier];
        v44 = [v42 cookieHeadersForURL:v64 userIdentifier:v43 scope:v41];

        v73 = 0u;
        v74 = 0u;
        v71 = 0u;
        v72 = 0u;
        v21 = v44;
        v45 = [v21 countByEnumeratingWithState:&v71 objects:v77 count:16];
        if (v45)
        {
          v46 = v45;
          v47 = *v72;
          do
          {
            for (i = 0; i != v46; ++i)
            {
              if (*v72 != v47)
              {
                objc_enumerationMutation(v21);
              }

              v49 = *(*(&v71 + 1) + 8 * i);
              v50 = [v49 lowercaseString];
              v51 = [v50 isEqualToString:@"cookie"];

              if (v51)
              {
                v52 = [v8 valueForHTTPHeaderField:v49];
                v53 = [v52 mutableCopy];
                v54 = v53;
                if (v53)
                {
                  v55 = v53;
                }

                else
                {
                  v55 = objc_alloc_init(MEMORY[0x277CCAB68]);
                }

                v56 = v55;

                if ([v56 length])
                {
                  [v56 appendString:@"; "];
                }

                v57 = [v21 objectForKeyedSubscript:v49];
                [v56 appendString:v57];

                [v8 setValue:v56 forHTTPHeaderField:v49];
              }
            }

            v46 = [v21 countByEnumeratingWithState:&v71 objects:v77 count:16];
          }

          while (v46);
        }

        v9 = v60;
        v13 = v62;
        v15 = v65;
        v11 = v69;
        goto LABEL_59;
      }

      v21 = [MEMORY[0x277D69B38] sharedConfig];
      if (!v21)
      {
        v21 = [MEMORY[0x277D69B38] sharedConfig];
      }

      v22 = [v21 shouldLog];
      if ([v21 shouldLogToDisk])
      {
        v22 |= 2u;
      }

      v23 = [v21 OSLogObject];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = v22;
      }

      else
      {
        v24 = v22 & 2;
      }

      if (v24)
      {
        v61 = v13;
        v67 = v11;
        v25 = objc_opt_class();
        v26 = v25;
        v27 = [(ISStoreURLOperation *)self logKey];
        v78 = 138543874;
        v79 = v25;
        v80 = 2114;
        v81 = v27;
        v82 = 2114;
        v83 = v16;
        LODWORD(v59) = 32;
        v28 = _os_log_send_and_compose_impl();

        if (!v28)
        {
          v15 = v65;
          v11 = v67;
          v13 = v61;
          goto LABEL_59;
        }

        v23 = [MEMORY[0x277CCACA8] stringWithCString:v28 encoding:{4, &v78, v59}];
        free(v28);
        SSFileLog();
        v11 = v67;
        v13 = v61;
      }

      v15 = v65;

LABEL_59:
      v39 = v70;
      v38 = v64;
      goto LABEL_60;
    }
  }

  v68 = v11;
  v29 = [MEMORY[0x277D69B38] sharedConfig];
  if (!v29)
  {
    v29 = [MEMORY[0x277D69B38] sharedConfig];
  }

  v30 = [v29 shouldLog];
  if ([v29 shouldLogToDisk])
  {
    v30 |= 2u;
  }

  v31 = v29;
  v21 = [v29 OSLogObject];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v32 = v30;
  }

  else
  {
    v32 = v30 & 2;
  }

  if (!v32)
  {
    v38 = v31;
    v11 = v68;
    v39 = v70;
    goto LABEL_60;
  }

  v63 = v16;
  v66 = v15;
  v33 = v13;
  v34 = objc_opt_class();
  v35 = v34;
  v36 = [(ISStoreURLOperation *)self logKey];
  v78 = 138543618;
  v79 = v34;
  v80 = 2114;
  v81 = v36;
  LODWORD(v59) = 22;
  v37 = _os_log_send_and_compose_impl();

  if (v37)
  {
    v21 = [MEMORY[0x277CCACA8] stringWithCString:v37 encoding:{4, &v78, v59}];
    free(v37);
    v38 = v31;
    SSFileLog();
    v13 = v33;
    v15 = v66;
    v11 = v68;
    v16 = v63;
    v39 = v70;
LABEL_60:

    goto LABEL_61;
  }

  v13 = v33;
  v16 = v63;
  v39 = v70;
  v38 = v31;
  v15 = v66;
  v11 = v68;
LABEL_61:

  v58 = *MEMORY[0x277D85DE8];
}

+ (id)_restrictionsHeaderValue
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  CFPreferencesAppSynchronize(@"com.apple.springboard");
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"SBParentalControlsEnabled", @"com.apple.springboard", 0);
  v4 = AppBooleanValue != 0;
  v5 = SSRestrictionsCopyRankForMediaType();
  v6 = v5;
  if (v5)
  {
    if (AppBooleanValue)
    {
      v4 = 1;
    }

    else
    {
      v7 = [v5 integerValue];
      v4 = v7 != *MEMORY[0x277D6A580];
    }

    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"apps=%ld", objc_msgSend(v6, "longValue")];
    [v2 addObject:v8];
  }

  v9 = SSRestrictionsCopyRankForMediaType();

  if (v9)
  {
    if (v4)
    {
      v4 = 1;
    }

    else
    {
      v10 = [v9 integerValue];
      v4 = v10 != *MEMORY[0x277D6A580];
    }

    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"movies=%ld", objc_msgSend(v9, "longValue")];
    [v2 addObject:v11];
  }

  v12 = SSRestrictionsCopyRankForMediaType();

  if (v12)
  {
    if (v4)
    {
      v4 = 1;
    }

    else
    {
      v13 = [v12 integerValue];
      v4 = v13 != *MEMORY[0x277D6A580];
    }

    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"tv=%ld", objc_msgSend(v12, "longValue")];
    [v2 addObject:v14];
  }

  v15 = [MEMORY[0x277D262A0] sharedConnection];
  v16 = [v15 effectiveRestrictedBoolValueForSetting:*MEMORY[0x277D25E90]];

  if (v16 == 2)
  {
    v17 = @"explicit=off";
  }

  else
  {
    v17 = @"explicit=on";
  }

  [v2 addObject:v17];
  v18 = [MEMORY[0x277D262A0] sharedConnection];
  v19 = [v18 effectiveRestrictedBoolValueForSetting:*MEMORY[0x277D25F38]];

  if (v19 == 2)
  {
    [v2 addObject:@"in-app=off"];
LABEL_22:
    v20 = [v2 componentsJoinedByString:@""];;
    goto LABEL_24;
  }

  [v2 addObject:@"in-app=on"];
  if (v16 == 2 || v4)
  {
    goto LABEL_22;
  }

  v20 = 0;
LABEL_24:

  return v20;
}

- (id)_account
{
  v3 = [MEMORY[0x277D69A20] defaultStore];
  v4 = [(ISURLOperation *)self _accountIdentifier];
  v5 = [(ISURLOperation *)self _requestProperties];
  [v5 URLBagType];
  v6 = SSAccountScopeForURLBagType();

  if (v6 == 1)
  {
    if (v4 || ([v3 activeSandboxAccount], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "uniqueIdentifier"), v4 = objc_claimAutoreleasedReturnValue(), v7, v4))
    {
      v8 = [v3 accountWithUniqueIdentifier:v4 scope:1];
LABEL_8:
      v10 = v8;
      goto LABEL_9;
    }
  }

  else if (v4 || ([v3 activeAccount], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "uniqueIdentifier"), v4 = objc_claimAutoreleasedReturnValue(), v9, v4))
  {
    v8 = [v3 accountWithUniqueIdentifier:v4];
    goto LABEL_8;
  }

  v10 = 0;
LABEL_9:

  return v10;
}

- (void)_addStandardQueryParametersForURL:(id)a3
{
  v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [(ISURLOperation *)self _requestProperties];
  v5 = [v4 requestParameters];
  if (SSDebugShouldSendCacheBuster())
  {
    v6 = [v5 objectForKey:@"buster"];

    if (!v6)
    {
      v7 = [MEMORY[0x277CCAD78] UUID];
      v8 = v7;
      if (v7)
      {
        v9 = [v7 UUIDString];
        if (v9)
        {
          [v11 setObject:v9 forKey:@"buster"];
        }
      }
    }
  }

  if ([v11 count])
  {
    v10 = [v5 mutableCopy];
    if (!v10)
    {
      v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    }

    [v10 addEntriesFromDictionary:v11];
    [v4 setRequestParameters:v10];
  }
}

+ (id)_authKitSession
{
  if (_authKitSession_sOnce != -1)
  {
    +[ISStoreURLOperation _authKitSession];
  }

  v3 = _authKitSession__authKitSession;

  return v3;
}

uint64_t __38__ISStoreURLOperation__authKitSession__block_invoke()
{
  _authKitSession__authKitSession = objc_alloc_init(MEMORY[0x277CF0188]);

  return MEMORY[0x2821F96F8]();
}

- (BOOL)_authenticateWithContext:(id)a3 error:(id *)a4
{
  v72 = *MEMORY[0x277D85DE8];
  v40 = a3;
  v62 = 0;
  v63 = &v62;
  v64 = 0x2020000000;
  v65 = 0;
  v56 = 0;
  v57 = &v56;
  v58 = 0x3032000000;
  v59 = __Block_byref_object_copy__3;
  v60 = __Block_byref_object_dispose__3;
  v61 = 0;
  v52 = 0;
  v53 = &v52;
  v54 = 0x2020000000;
  v55 = 1;
  v6 = [(ISOperation *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!v7)
    {
      v7 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v8 = [v7 shouldLog];
    v9 = [v7 shouldLogToDisk];
    v10 = [v7 OSLogObject];
    v11 = v10;
    if (v9)
    {
      v8 |= 2u;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v8;
    }

    else
    {
      v12 = v8 & 2;
    }

    if (v12)
    {
      v13 = objc_opt_class();
      v4 = [(ISStoreURLOperation *)self logKey];
      v66 = 138543618;
      v67 = v13;
      v68 = 2114;
      v69 = v4;
      LODWORD(v37) = 22;
      v36 = &v66;
      v14 = _os_log_send_and_compose_impl();

      if (!v14)
      {
LABEL_13:

        v15 = dispatch_semaphore_create(0);
        v47[0] = MEMORY[0x277D85DD0];
        v47[1] = 3221225472;
        v47[2] = __54__ISStoreURLOperation__authenticateWithContext_error___block_invoke;
        v47[3] = &unk_27A670B60;
        v47[4] = self;
        v49 = &v62;
        v50 = &v56;
        v51 = &v52;
        v16 = v15;
        v48 = v16;
        [v6 operation:self shouldAuthenticateWithContext:v40 responseHandler:v47];
        dispatch_semaphore_wait(v16, 0xFFFFFFFFFFFFFFFFLL);

        goto LABEL_14;
      }

      v11 = [MEMORY[0x277CCACA8] stringWithCString:v14 encoding:{4, &v66, v37}];
      free(v14);
      v36 = v11;
      SSFileLog();
    }

    goto LABEL_13;
  }

LABEL_14:
  if (*(v53 + 24) != 1)
  {
    v31 = 0;
    if ((v63[3] & 1) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_33;
  }

  v17 = [MEMORY[0x277D69B38] sharedAccountsAuthenticationConfig];
  if (!v17)
  {
    v17 = [MEMORY[0x277D69B38] sharedConfig];
  }

  v18 = [v17 shouldLog];
  v19 = [v17 shouldLogToDisk];
  v20 = [v17 OSLogObject];
  v21 = v20;
  if (v19)
  {
    v18 |= 2u;
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v22 = v18;
  }

  else
  {
    v22 = v18 & 2;
  }

  if (!v22)
  {
    goto LABEL_29;
  }

  v38 = objc_opt_class();
  v23 = [(ISStoreURLOperation *)self logKey];
  v24 = [(ISURLOperation *)self requestProperties];
  v25 = [v24 URL];
  v26 = v25;
  if (!v25)
  {
    v4 = [(ISURLOperation *)self requestProperties];
    v26 = [v4 URLBagKey];
  }

  v66 = 138543874;
  v67 = v38;
  v68 = 2114;
  v69 = v23;
  v70 = 2114;
  v71 = v26;
  LODWORD(v37) = 32;
  v36 = &v66;
  v27 = _os_log_send_and_compose_impl();
  if (!v25)
  {
  }

  if (v27)
  {
    v21 = [MEMORY[0x277CCACA8] stringWithCString:v27 encoding:{4, &v66, v37}];
    free(v27);
    v36 = v21;
    SSFileLog();
LABEL_29:
  }

  v29 = (v57 + 5);
  v28 = v57[5];
  v45 = 0;
  obj = v28;
  v30 = [(ISOperation *)self copyAccountID:&obj credentialSource:0 byAuthenticatingWithContext:v40 returningError:&v45];
  objc_storeStrong(v29, obj);
  v31 = v45;
  *(v63 + 24) = v30;
  if (!v30)
  {
    goto LABEL_35;
  }

LABEL_33:
  [(ISStoreURLOperation *)self setAuthenticatedDSID:v57[5], v36];
  if (objc_opt_respondsToSelector())
  {
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __54__ISStoreURLOperation__authenticateWithContext_error___block_invoke_177;
    v41[3] = &unk_27A670AC8;
    v42 = v6;
    v43 = self;
    v44 = &v56;
    [(ISOperation *)self delegateDispatch:v41];
  }

LABEL_35:
  v32 = *(v63 + 24);
  if (a4 && (v63[3] & 1) == 0)
  {
    v33 = v31;
    *a4 = v31;
    v32 = *(v63 + 24);
  }

  _Block_object_dispose(&v52, 8);
  _Block_object_dispose(&v56, 8);

  _Block_object_dispose(&v62, 8);
  v34 = *MEMORY[0x277D85DE8];
  return v32 & 1;
}

void __54__ISStoreURLOperation__authenticateWithContext_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v60 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = 0x277D69000uLL;
  if (v5)
  {
    v8 = [MEMORY[0x277D69B38] sharedAccountsAuthenticationConfig];
    if (!v8)
    {
      v8 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v9 = [v8 shouldLog];
    if ([v8 shouldLogToDisk])
    {
      v9 |= 2u;
    }

    v10 = [v8 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v9;
    }

    else
    {
      v11 = v9 & 2;
    }

    if (v11)
    {
      v51 = v5;
      v12 = *(a1 + 32);
      v13 = objc_opt_class();
      v14 = [*(a1 + 32) logKey];
      v15 = [*(a1 + 32) requestProperties];
      v16 = [v15 URL];
      v17 = v16;
      if (!v16)
      {
        v50 = [*(a1 + 32) requestProperties];
        v17 = [v50 URLBagKey];
      }

      v54 = 138543874;
      v55 = v13;
      v56 = 2114;
      v57 = v14;
      v58 = 2114;
      v59 = v17;
      LODWORD(v49) = 32;
      v48 = &v54;
      v18 = _os_log_send_and_compose_impl();
      if (!v16)
      {
      }

      v5 = v51;
      v7 = 0x277D69000;
      if (v18)
      {
        v19 = [MEMORY[0x277CCACA8] stringWithCString:v18 encoding:{4, &v54, v49}];
        free(v18);
        v48 = v19;
        SSFileLog();
      }
    }

    else
    {
    }

    v29 = *(a1 + 32);
    v30 = *(*(a1 + 56) + 8);
    v31 = *(v30 + 40);
    v52 = v6;
    obj = v31;
    v32 = [v29 copyAccountID:&obj credentialSource:0 byHandlingAuthenticateResponse:v5 returningError:&v52];
    objc_storeStrong((v30 + 40), obj);
    v28 = v52;

    *(*(*(a1 + 48) + 8) + 24) = v32;
    LODWORD(v30) = *(*(*(a1 + 48) + 8) + 24);
    v33 = [*(v7 + 2872) sharediTunesStoreConfig];
    v34 = v33;
    if (v30 == 1)
    {
      if (!v33)
      {
        v34 = [*(v7 + 2872) sharedConfig];
      }

      v35 = [v34 shouldLog];
      if ([v34 shouldLogToDisk])
      {
        v35 |= 2u;
      }

      v36 = [v34 OSLogObject];
      if (!os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        v35 &= 2u;
      }

      if (!v35)
      {
        goto LABEL_47;
      }

      v37 = *(a1 + 32);
      v38 = objc_opt_class();
      v39 = *(a1 + 32);
      v40 = v38;
      v41 = [v39 logKey];
      v54 = 138543618;
      v55 = v38;
      v56 = 2114;
      v57 = v41;
      LODWORD(v49) = 22;
    }

    else
    {
      if (!v33)
      {
        v34 = [*(v7 + 2872) sharedConfig];
      }

      v42 = [v34 shouldLog];
      if ([v34 shouldLogToDisk])
      {
        v42 |= 2u;
      }

      v36 = [v34 OSLogObject];
      if (!os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        v42 &= 2u;
      }

      if (!v42)
      {
        goto LABEL_47;
      }

      v43 = *(a1 + 32);
      v44 = objc_opt_class();
      v45 = *(a1 + 32);
      v40 = v44;
      v41 = [v45 logKey];
      v54 = 138543874;
      v55 = v44;
      v56 = 2114;
      v57 = v41;
      v58 = 2114;
      v59 = v28;
      LODWORD(v49) = 32;
    }

    v46 = _os_log_send_and_compose_impl();

    if (!v46)
    {
LABEL_48:

      *(*(*(a1 + 64) + 8) + 24) = 0;
      goto LABEL_49;
    }

    v36 = [MEMORY[0x277CCACA8] stringWithCString:v46 encoding:{4, &v54, v49}];
    free(v46);
    SSFileLog();
LABEL_47:

    goto LABEL_48;
  }

  v20 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!v20)
  {
    v20 = [MEMORY[0x277D69B38] sharedConfig];
  }

  v21 = [v20 shouldLog];
  if ([v20 shouldLogToDisk])
  {
    v21 |= 2u;
  }

  v22 = [v20 OSLogObject];
  if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v21 &= 2u;
  }

  if (!v21)
  {
    goto LABEL_25;
  }

  v23 = *(a1 + 32);
  v24 = objc_opt_class();
  v25 = *(a1 + 32);
  v26 = v24;
  [v25 logKey];
  v54 = 138543874;
  v55 = v24;
  v57 = v56 = 2114;
  v58 = 2114;
  v59 = v6;
  LODWORD(v49) = 32;
  v27 = _os_log_send_and_compose_impl();

  if (v27)
  {
    v22 = [MEMORY[0x277CCACA8] stringWithCString:v27 encoding:{4, &v54, v49}];
    free(v27);
    SSFileLog();
LABEL_25:
  }

  v28 = v6;
LABEL_49:
  dispatch_semaphore_signal(*(a1 + 40));

  v47 = *MEMORY[0x277D85DE8];
}

- (BOOL)_canSendTokenToURL:(id)a3
{
  v3 = [a3 scheme];
  v4 = [v3 isEqualToString:@"https"];

  return v4;
}

- (id)_buyParams
{
  v2 = [(ISURLOperation *)self authenticationContext];
  v3 = [v2 signupRequestParameters];
  v4 = [v3 objectForKey:@"product"];

  return v4;
}

- (void)_continueTouchIDSession
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [(ISURLOperation *)self dataProvider];
  v4 = [v3 output];
  v5 = [v4 objectForKey:@"dialog"];

  if (v5)
  {
    v6 = [[ISDialog alloc] initWithDialogDictionary:v5];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = [(ISDialog *)v6 buttons];
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v15 = self;
      v10 = *v17;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v16 + 1) + 8 * i) dictionary];
          v13 = [v12 objectForKey:@"tidContinue"];

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && [v13 BOOLValue])
          {

            v6 = [(ISStoreURLOperation *)v15 biometricSessionDelegate];
            if (objc_opt_respondsToSelector())
            {
              [(ISDialog *)v6 sender:v15 shouldContinueTouchIDSession:1];
            }

            goto LABEL_14;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)_copyAuthenticationContextForAttemptNumber:(int64_t)a3
{
  v5 = [(ISStoreURLOperation *)self _copyAuthenticationContext];
  v6 = v5;
  if (a3 >= 1)
  {
    [v5 setPromptStyle:1];
  }

  v7 = [(ISURLOperation *)self response];

  if (v7)
  {
    v8 = MEMORY[0x277D69A20];
    v9 = [(ISURLOperation *)self response];
    [v6 setAllowsSilentAuthentication:{objc_msgSend(v8, "URLResponseAllowsSilentAuthentication:", v9)}];
  }

  return v6;
}

- (BOOL)_isErrorTokenError:(id)a3
{
  v3 = a3;
  if (ISErrorIsEqual(v3, @"SSErrorDomain", 18) & 1) != 0 || (v4 = *MEMORY[0x277D6A5A8], (ISErrorIsEqual(v3, *MEMORY[0x277D6A5A8], 1001)) || (ISErrorIsEqual(v3, v4, 1003))
  {
    IsEqual = 1;
  }

  else
  {
    IsEqual = ISErrorIsEqual(v3, v4, 1004);
  }

  return IsEqual;
}

- (id)_loadURLBagInterpreterWithRequest:(id)a3 requestProperties:(id)a4
{
  v28[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(ISStoreURLOperation *)self SAPSession];
  if ([v8 useSharedBagInterpreter])
  {
    v9 = [(ISStoreURLOperation *)self SAPSession];
    v10 = [v9 urlBagInterpreter];

    if (v10)
    {
      v11 = [(ISStoreURLOperation *)self SAPSession];
      v12 = [v11 urlBagInterpreter];

      goto LABEL_15;
    }
  }

  else
  {
  }

  v13 = [MEMORY[0x277D69C90] contextWithBagType:{objc_msgSend(v7, "URLBagType")}];
  [v13 setAllowsBootstrapCellularData:{objc_msgSend(v7, "allowsBootstrapCellularData")}];
  v14 = 1;
  [v13 setAllowsExpiredBags:1];
  v27 = *MEMORY[0x277D6A130];
  v28[0] = *MEMORY[0x277D6A190];
  v15 = &v27;
  do
  {
    v16 = v14;
    v17 = *v15;
    v18 = [v6 valueForHTTPHeaderField:*v15];
    if (v18)
    {
      [v13 setValue:v18 forHTTPHeaderField:v17];
    }

    v14 = 0;
    v15 = v28;
  }

  while ((v16 & 1) != 0);
  v19 = [(ISURLOperation *)self _accountIdentifier];
  v20 = [(ISOperation *)self loadedURLBagWithContext:v13 accountDSID:v19 returningError:0];

  if (v20)
  {
    v21 = objc_alloc(MEMORY[0x277D69D28]);
    v22 = [v20 URLBagDictionary];
    v23 = [v21 initWithURLBagDictionary:v22];
  }

  else
  {
    v23 = 0;
  }

  v12 = v23;

  for (i = 1; i != -1; --i)
  {
  }

LABEL_15:
  v25 = *MEMORY[0x277D85DE8];

  return v12;
}

- (BOOL)_performMachineDataRequest:(id)a3
{
  v4 = a3;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v5 = [(ISStoreURLOperation *)self _account];
  v6 = [v5 uniqueIdentifier];
  [v4 setAccountIdentifier:v6];

  [v4 setWaitsForPurchaseOperations:{+[ISStoreURLOperation _operationWaitsForPurchases:](ISStoreURLOperation, "_operationWaitsForPurchases:", self)}];
  v7 = dispatch_semaphore_create(0);
  v8 = [(ISURLOperation *)self _requestProperties];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __50__ISStoreURLOperation__performMachineDataRequest___block_invoke;
  v17 = &unk_27A670B88;
  v19 = &v20;
  v9 = v7;
  v18 = v9;
  [ISStoreURLOperation _performMachineDataRequest:v4 requestProperties:v8 completion:&v14];

  dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
  if (*(v21 + 24) == 1)
  {
    [(ISOperation *)self lock:v14];
    v10 = [v4 protocolVersion];
    if (v10)
    {
      if (v10 != 1)
      {
LABEL_8:
        [(ISOperation *)self unlock];
        v12 = *(v21 + 24);
        goto LABEL_9;
      }

      v11 = 3;
    }

    else
    {
      v11 = 1;
    }

    self->_activeMachineDataStyle = v11;
    goto LABEL_8;
  }

  v12 = 0;
LABEL_9:

  _Block_object_dispose(&v20, 8);
  return v12 & 1;
}

- (id)_resolvedURLInBagContext:(id)a3 bagTrusted:(BOOL *)a4
{
  v6 = a3;
  v7 = [[ISLoadURLBagOperation alloc] initWithBagContext:v6];
  if (![(ISOperation *)self runSubOperation:v7 returningError:0])
  {
    v13 = 0;
    v9 = 0;
    v10 = 0;
    if (!a4)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v8 = [(ISURLOperation *)self _requestProperties];
  v9 = [(ISLoadURLBagOperation *)v7 URLBag];
  v10 = [v8 URL];
  if (!v10)
  {
    v11 = [v8 URLBagURLBlock];
    v12 = v11;
    if (v11)
    {
      v10 = (*(v11 + 16))(v11, v6);
    }

    else
    {
      v14 = [v8 URLBagKey];
      if (v14)
      {
        v10 = [v9 urlForKey:v14];
      }

      else
      {
        v10 = 0;
      }
    }
  }

  v13 = [v9 urlIsTrusted:v10];

  if (a4)
  {
LABEL_13:
    *a4 = v13;
  }

LABEL_14:
  v15 = v10;

  return v10;
}

- (void)_runURLOperation
{
  v97 = *MEMORY[0x277D85DE8];
  v3 = [(ISStoreURLOperation *)self URLBagContext];
  v4 = [(ISStoreURLOperation *)self urlKnownToBeTrusted];
  v89 = 0;
  if (![(ISStoreURLOperation *)self needsURLBag])
  {
    v24 = [(ISURLOperation *)self _requestProperties];
    v13 = [v24 URL];

    if (v4)
    {
      goto LABEL_40;
    }

    v25 = [(ISStoreURLOperation *)self bag];

    if (v25)
    {
      v11 = [(ISStoreURLOperation *)self bag];
      v26 = [v11 URLIsTrusted:v13];
    }

    else
    {
      v11 = [(ISOperation *)self loadedURLBagWithContext:v3 returningError:0];
      v26 = [v11 urlIsTrusted:v13];
    }

    v89 = v26;
    goto LABEL_39;
  }

  v5 = [(ISStoreURLOperation *)self bag];
  if (!v5)
  {
LABEL_24:
    v13 = [(ISStoreURLOperation *)self _resolvedURLInBagContext:v3 bagTrusted:&v89];
    v27 = [(ISStoreURLOperation *)self bag];

    if (!v27)
    {
      goto LABEL_40;
    }

    v85 = v4;
    v11 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!v11)
    {
      v11 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v28 = [v11 shouldLog];
    if ([v11 shouldLogToDisk])
    {
      v29 = v28 | 2;
    }

    else
    {
      v29 = v28;
    }

    v30 = [v11 OSLogObject];
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = v29;
    }

    else
    {
      v31 = v29 & 2;
    }

    if (v31)
    {
      v32 = objc_opt_class();
      v33 = v32;
      [(ISURLOperation *)self requestProperties];
      v35 = v34 = v3;
      v36 = [v35 URLBagKey];
      v91 = 138412802;
      v92 = v32;
      v93 = 2112;
      v94 = v36;
      v95 = 2112;
      v96 = v13;
      LODWORD(v83) = 32;
      v82 = &v91;
      v37 = _os_log_send_and_compose_impl();

      v3 = v34;
      v4 = v85;
      if (!v37)
      {
        goto LABEL_39;
      }

      v30 = [MEMORY[0x277CCACA8] stringWithCString:v37 encoding:{4, &v91, v83}];
      free(v37);
      v82 = v30;
      SSFileLog();
    }

    goto LABEL_39;
  }

  v6 = v5;
  v7 = [(ISStoreURLOperation *)self bag];
  if (([v7 canHandleTrustedDomains] & 1) == 0)
  {

    goto LABEL_24;
  }

  v8 = [(ISURLOperation *)self requestProperties];
  v9 = [v8 URLBagURLBlock];

  if (v9)
  {
    goto LABEL_24;
  }

  v10 = [(ISURLOperation *)self requestProperties];
  v11 = [v10 URLBagKey];

  if (v11)
  {
    v12 = [(ISStoreURLOperation *)self bag];
    v88 = 0;
    v13 = [v12 URLForKey:v11 error:&v88];
    v14 = v88;

    if (!v14)
    {
      goto LABEL_87;
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
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = v17;
    }

    else
    {
      v19 = v17 & 2;
    }

    if (v19)
    {
      v20 = objc_opt_class();
      v91 = 138412546;
      v92 = v20;
      v93 = 2114;
      v94 = v11;
      v21 = v3;
      v22 = v20;
      LODWORD(v83) = 22;
      v82 = &v91;
      v23 = _os_log_send_and_compose_impl();

      v3 = v21;
      if (!v23)
      {
LABEL_19:

        goto LABEL_87;
      }

      v18 = [MEMORY[0x277CCACA8] stringWithCString:v23 encoding:{4, &v91, v83}];
      free(v23);
      v82 = v18;
      SSFileLog();
    }

    goto LABEL_19;
  }

  v14 = [(ISURLOperation *)self requestProperties];
  v13 = [v14 URL];
LABEL_87:

  if (v13)
  {
    v71 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!v71)
    {
      v71 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v86 = v11;
    v72 = [v71 shouldLog];
    if ([v71 shouldLogToDisk])
    {
      v73 = v72 | 2;
    }

    else
    {
      v73 = v72;
    }

    v74 = [v71 OSLogObject];
    if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
    {
      v75 = v73;
    }

    else
    {
      v75 = v73 & 2;
    }

    if (v75)
    {
      v76 = v3;
      v77 = objc_opt_class();
      v84 = v77;
      v78 = [(ISURLOperation *)self _requestProperties];
      v79 = [v78 URL];
      v91 = 138412802;
      v92 = v77;
      v3 = v76;
      v93 = 2112;
      v94 = v86;
      v95 = 2112;
      v96 = v79;
      LODWORD(v83) = 32;
      v82 = &v91;
      v80 = _os_log_send_and_compose_impl();

      if (!v80)
      {
LABEL_100:

        v81 = [(ISStoreURLOperation *)self bag];
        v89 = [v81 URLIsTrusted:v13];

        v11 = v86;
        goto LABEL_39;
      }

      v74 = [MEMORY[0x277CCACA8] stringWithCString:v80 encoding:{4, &v91, v83}];
      free(v80);
      v82 = v74;
      SSFileLog();
    }

    goto LABEL_100;
  }

LABEL_39:

LABEL_40:
  if (v13)
  {
    v38 = [(ISURLOperation *)self _requestProperties];
    v39 = [v38 URL];

    if (v39)
    {
      if (v4)
      {
        goto LABEL_58;
      }
    }

    else
    {
      v90 = v13;
      v48 = [MEMORY[0x277CBEA60] arrayWithObjects:&v90 count:1];
      [v38 setURLs:v48];

      if (v4)
      {
LABEL_58:
        if (![(ISStoreURLOperation *)self needsAuthentication]|| [(ISStoreURLOperation *)self _canSendTokenToURL:v13])
        {
          [(ISStoreURLOperation *)self _addStandardQueryParametersForURL:v13];
          v49 = [(ISURLOperation *)self dataProvider];
          [v49 setBagContext:v3];

          [v38 setITunesStoreRequest:1];
          v87.receiver = self;
          v87.super_class = ISStoreURLOperation;
          [(ISURLOperation *)&v87 run];
          goto LABEL_85;
        }

        v60 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
        if (!v60)
        {
          v60 = [MEMORY[0x277D69B38] sharedConfig];
        }

        v61 = [v60 shouldLog];
        if ([v60 shouldLogToDisk])
        {
          v61 |= 2u;
        }

        v62 = [v60 OSLogObject];
        if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
        {
          v63 = v61;
        }

        else
        {
          v63 = v61 & 2;
        }

        if (v63)
        {
          v64 = objc_opt_class();
          v65 = v64;
          v66 = [(ISURLOperation *)self _sanitizedURLForURL:v13];
          v91 = 138412546;
          v92 = v64;
          v93 = 2112;
          v94 = v66;
          LODWORD(v83) = 22;
          v67 = _os_log_send_and_compose_impl();

          if (!v67)
          {
LABEL_84:

            v68 = *MEMORY[0x277D6A110];
            v69 = SSError();
            [(ISOperation *)self setError:v69];

            goto LABEL_85;
          }

          v62 = [MEMORY[0x277CCACA8] stringWithCString:v67 encoding:{4, &v91, v83}];
          free(v67);
          SSFileLog();
        }

        goto LABEL_84;
      }
    }

    if (v89)
    {
      goto LABEL_58;
    }

    v50 = *MEMORY[0x277D6A110];
    v51 = SSError();
    [(ISOperation *)self setError:v51];

    v52 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!v52)
    {
      v52 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v53 = [v52 shouldLog];
    if ([v52 shouldLogToDisk])
    {
      v53 |= 2u;
    }

    v54 = [v52 OSLogObject];
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
    {
      v55 = v53;
    }

    else
    {
      v55 = v53 & 2;
    }

    if (v55)
    {
      v56 = objc_opt_class();
      v57 = v56;
      v58 = [(ISURLOperation *)self _sanitizedURLForURL:v13];
      v91 = 138412546;
      v92 = v56;
      v93 = 2112;
      v94 = v58;
      LODWORD(v83) = 22;
      v59 = _os_log_send_and_compose_impl();

      if (!v59)
      {
LABEL_72:

        goto LABEL_85;
      }

      v54 = [MEMORY[0x277CCACA8] stringWithCString:v59 encoding:{4, &v91, v83}];
      free(v59);
      SSFileLog();
    }

    goto LABEL_72;
  }

  v40 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!v40)
  {
    v40 = [MEMORY[0x277D69B38] sharedConfig];
  }

  v41 = [v40 shouldLog];
  if ([v40 shouldLogToDisk])
  {
    v41 |= 2u;
  }

  v42 = [v40 OSLogObject];
  if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
  {
    v43 = v41;
  }

  else
  {
    v43 = v41 & 2;
  }

  if (!v43)
  {
    goto LABEL_54;
  }

  v44 = objc_opt_class();
  v91 = 138412290;
  v92 = v44;
  v45 = v44;
  LODWORD(v83) = 12;
  v46 = _os_log_send_and_compose_impl();

  if (v46)
  {
    v42 = [MEMORY[0x277CCACA8] stringWithCString:v46 encoding:{4, &v91, v83}];
    free(v46);
    SSFileLog();
LABEL_54:
  }

  v47 = *MEMORY[0x277D6A110];
  v38 = SSError();
  [(ISOperation *)self setError:v38];
LABEL_85:

  v70 = *MEMORY[0x277D85DE8];
}

- (BOOL)_shouldRetryForAbsintheWithResponse:(id)a3
{
  v4 = a3;
  v5 = [(ISStoreURLOperation *)self logKey];
  v6 = AMSSetLogKey();

  v7 = [(ISStoreURLOperation *)self bag];

  if (v7)
  {
    v8 = [ISAMSBagShim alloc];
    v9 = [(ISStoreURLOperation *)self bag];
    v10 = [(ISAMSBagShim *)v8 initWithBag:v9];
  }

  else
  {
    v11 = [(ISStoreURLOperation *)self URLBagContext];
    v9 = [(ISStoreURLOperation *)self _urlBagForContext:v11];

    v10 = [[ISAMSBagShim alloc] initWithURLBag:v9];
  }

  v12 = v10;

  v13 = [MEMORY[0x277CEE3C8] handleResponse:v4 bag:v12];

  v14 = [v13 actionType] == 2;
  return v14;
}

- (BOOL)_shouldRetryForTouchIDChallengeWithError:(id)a3
{
  v4 = a3;
  v5 = [v4 domain];
  if (![v5 isEqualToString:*MEMORY[0x277D6A110]])
  {

    goto LABEL_12;
  }

  v6 = [v4 code];

  if (v6 != 22)
  {
    goto LABEL_12;
  }

  v7 = [v4 userInfo];
  v8 = [v7 objectForKey:*MEMORY[0x277D6A100]];

  if (!v8)
  {
    goto LABEL_13;
  }

  v9 = [v8 integerValue];

  if (v9 != 2074)
  {
LABEL_12:
    LOBYTE(v8) = 0;
    goto LABEL_13;
  }

  v10 = [(ISURLOperation *)self dataProvider];
  v11 = [v10 biometricAuthenticationContext];
  LODWORD(v8) = [v11 didAuthenticate];
  if (v8 && [v11 didFallbackToPassword])
  {
    v12 = [v11 accountIdentifier];
    [(ISStoreURLOperation *)self setAuthenticatedDSID:v12];
    v13 = [(ISOperation *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __64__ISStoreURLOperation__shouldRetryForTouchIDChallengeWithError___block_invoke;
      v15[3] = &unk_27A670890;
      v16 = v13;
      v17 = self;
      v18 = v12;
      [(ISOperation *)self delegateDispatch:v15];
    }

    [v11 setChallenge:0];
    [v11 setSignature:0];
  }

  [(ISStoreURLOperation *)self setBiometricAuthenticationContext:v11];

LABEL_13:
  return v8;
}

- (id)_urlBagForContext:(id)a3
{
  v4 = a3;
  v5 = +[ISURLBagCache sharedCache];
  v6 = [v5 URLBagForContext:v4];

  if (!v6)
  {
    if ([(ISStoreURLOperation *)self isURLBagRequest])
    {
      v6 = 0;
    }

    else
    {
      v7 = [[ISLoadURLBagOperation alloc] initWithBagContext:v4];
      v6 = 0;
      if ([(ISOperation *)self runSubOperation:v7 returningError:0])
      {
        v6 = [(ISLoadURLBagOperation *)v7 URLBag];
      }
    }
  }

  return v6;
}

+ (void)_handleResponseHeaders:(id)a3 response:(id)a4 request:(id)a5 account:(id)a6 performsMachineDataActions:(BOOL)a7 shouldRetry:(BOOL *)a8
{
  v9 = a7;
  v138 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v126 = a6;
  v127 = v14;
  v16 = [v14 allHeaderFields];
  v17 = ISDictionaryValueForCaseInsensitiveString(v16, *MEMORY[0x277D6A1D0]);
  v18 = 0x277CCA000;
  v124 = v13;
  v125 = v16;
  if (v17)
  {
    v19 = [v13 delegate];
    if ((objc_opt_respondsToSelector() & 1) == 0 || [v19 operation:v13 shouldSetStoreFrontID:v17])
    {
      v20 = [MEMORY[0x277D69B38] sharedAccountsConfig];
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
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = v22;
      }

      else
      {
        v24 = v22 & 2;
      }

      if (v24)
      {
        v120 = v19;
        v25 = a8;
        v26 = objc_opt_class();
        v121 = v26;
        [v127 URL];
        v27 = v123 = v15;
        v28 = [v126 accountName];
        SSHashIfNeeded();
        v29 = v122 = v9;
        v30 = SSHashIfNeeded();
        v130 = 138544130;
        v131 = v26;
        a8 = v25;
        v19 = v120;
        v132 = 2114;
        v133 = v27;
        v134 = 2114;
        v135 = v29;
        v136 = 2114;
        v137 = v30;
        LODWORD(v119) = 42;
        v117 = &v130;
        v31 = _os_log_send_and_compose_impl();

        v9 = v122;
        v15 = v123;

        v18 = 0x277CCA000uLL;
        if (v31)
        {
          v32 = [MEMORY[0x277CCACA8] stringWithCString:v31 encoding:{4, &v130, v119}];
          free(v31);
          v117 = v32;
          SSFileLog();
        }
      }

      else
      {

        v18 = 0x277CCA000;
      }

      v33 = [MEMORY[0x277D69A80] currentDevice];
      [v33 setStoreFrontIdentifier:v17 forRequest:v15 response:v127 account:v126];

      v13 = v124;
      v16 = v125;
    }
  }

  v34 = ISDictionaryValueForCaseInsensitiveString(v16, @"X-Apple-Partner");

  if (v34)
  {
    v35 = +[ISClient currentClient];
    [v35 setPartnerHeader:v34];
  }

  if (v9)
  {
    v36 = [objc_alloc(MEMORY[0x277D69B58]) initWithURLResponse:v127];
    if (!v36)
    {
LABEL_37:

      goto LABEL_38;
    }

    v37 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!v37)
    {
      v37 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v38 = [v37 shouldLog];
    if ([v37 shouldLogToDisk])
    {
      v38 |= 2u;
    }

    v39 = [v37 OSLogObject];
    if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      v40 = v38;
    }

    else
    {
      v40 = v38 & 2;
    }

    if (v40)
    {
      v41 = v15;
      if (v13)
      {
        v42 = objc_opt_class();
      }

      else
      {
        v42 = @"ISStoreURLOperation";
      }

      v43 = [v36 actionName];
      v130 = 138412546;
      v131 = v42;
      v132 = 2112;
      v133 = v43;
      LODWORD(v119) = 22;
      v117 = &v130;
      v44 = _os_log_send_and_compose_impl();

      v15 = v41;
      if (!v44)
      {
        goto LABEL_36;
      }

      v39 = [MEMORY[0x277CCACA8] stringWithCString:v44 encoding:{4, &v130, v119}];
      free(v44);
      v117 = v39;
      SSFileLog();
    }

LABEL_36:
    v45 = [v126 uniqueIdentifier];
    [v36 setAccountIdentifier:v45];

    [v36 setWaitsForPurchaseOperations:{+[ISStoreURLOperation _operationWaitsForPurchases:](ISStoreURLOperation, "_operationWaitsForPurchases:", v13)}];
    v46 = [v13 _requestProperties];
    [ISStoreURLOperation _performMachineDataRequest:v36 requestProperties:v46 completion:0];

    v16 = v125;
    v18 = 0x277CCA000uLL;
    goto LABEL_37;
  }

LABEL_38:
  v47 = ISDictionaryValueForCaseInsensitiveString(v16, *MEMORY[0x277D6A198]);

  v48 = *(v18 + 3240);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {
    goto LABEL_84;
  }

  if (![v47 isEqualToString:@"RP"])
  {
    if (![v47 isEqualToString:@"EP"])
    {
      goto LABEL_84;
    }

    v59 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!v59)
    {
      v59 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v60 = [v59 shouldLog];
    if ([v59 shouldLogToDisk])
    {
      v60 |= 2u;
    }

    v61 = [v59 OSLogObject];
    if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
    {
      v62 = v60;
    }

    else
    {
      v62 = v60 & 2;
    }

    if (v62)
    {
      v63 = objc_opt_class();
      v130 = 138412290;
      v131 = v63;
      v64 = v63;
      LODWORD(v119) = 12;
      v118 = &v130;
      v65 = _os_log_send_and_compose_impl();

      if (!v65)
      {
LABEL_63:

        v52 = objc_opt_new();
        [v52 setPromptUser:1];
        v66 = [v13 _buyParams];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v67 = v15;
          v68 = [MEMORY[0x277CBEBC0] copyDictionaryForQueryString:v66 unescapedValues:1];
          v69 = [v68 objectForKey:@"mtTopic"];
          if (v69)
          {
            [v52 setTopicName:v69];
          }

          v15 = v67;
        }

        v70 = [v13 authenticationContext];
        v71 = [v70 HTTPHeaders];
        v54 = [v71 objectForKey:*MEMORY[0x277D6A130]];

        v18 = 0x277CCA000uLL;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v52 setUserAgent:v54];
        }

        [v13 runSubOperation:v52 returningError:0];
        goto LABEL_82;
      }

      v61 = [MEMORY[0x277CCACA8] stringWithCString:v65 encoding:{4, &v130, v119}];
      free(v65);
      v118 = v61;
      SSFileLog();
    }

    goto LABEL_63;
  }

  v50 = [v13 shouldCancelBiometricTokenUpdate];
  v51 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  v52 = v51;
  if ((v50 & 1) == 0)
  {
    if (!v51)
    {
      v52 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v72 = [v52 shouldLog];
    if ([v52 shouldLogToDisk])
    {
      v72 |= 2u;
    }

    v73 = [v52 OSLogObject];
    if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
    {
      v74 = v72;
    }

    else
    {
      v74 = v72 & 2;
    }

    if (v74)
    {
      v75 = objc_opt_class();
      v130 = 138412290;
      v131 = v75;
      v76 = v75;
      LODWORD(v119) = 12;
      v117 = &v130;
      v77 = _os_log_send_and_compose_impl();

      if (!v77)
      {
LABEL_81:

        v52 = [v13 authenticatedAccountDSID];
        v54 = [[ISBiometricUpdateTouchIDSettingsOperation alloc] initWithAccountIdentifier:v52];
        v78 = +[ISOperationQueue mainQueue];
        [v78 addOperation:v54];

        v18 = 0x277CCA000uLL;
        goto LABEL_82;
      }

      v73 = [MEMORY[0x277CCACA8] stringWithCString:v77 encoding:{4, &v130, v119}];
      free(v77);
      v117 = v73;
      SSFileLog();
    }

    goto LABEL_81;
  }

  if (!v51)
  {
    v52 = [MEMORY[0x277D69B38] sharedConfig];
  }

  v53 = [v52 shouldLog];
  if ([v52 shouldLogToDisk])
  {
    v53 |= 2u;
  }

  v54 = [v52 OSLogObject];
  if (os_log_type_enabled(&v54->super.super.super, OS_LOG_TYPE_DEFAULT))
  {
    v55 = v53;
  }

  else
  {
    v55 = v53 & 2;
  }

  if (!v55)
  {
    goto LABEL_82;
  }

  v56 = objc_opt_class();
  v130 = 138543362;
  v131 = v56;
  v57 = v56;
  LODWORD(v119) = 12;
  v117 = &v130;
  v58 = _os_log_send_and_compose_impl();

  if (v58)
  {
    v54 = [*(v18 + 3240) stringWithCString:v58 encoding:{4, &v130, v119}];
    free(v58);
    v117 = v54;
    SSFileLog();
LABEL_82:
  }

  v16 = v125;
LABEL_84:
  v79 = ISDictionaryValueForCaseInsensitiveString(v16, *MEMORY[0x277D6A1A0]);

  v80 = *(v18 + 3240);
  objc_opt_class();
  if (isKindOfClass & 1 | ((objc_opt_isKindOfClass() & 1) == 0))
  {
    goto LABEL_95;
  }

  v81 = [v13 _account];
  v82 = [v81 accountName];

  v83 = [v13 biometricAuthenticationContext];
  v84 = [v13 authenticationContext];
  v85 = [v84 requiredUniqueIdentifier];
  [v83 setAccountIdentifier:v85];

  [v83 setAccountName:v82];
  [v83 setChallenge:v79];
  [v83 setSignature:0];
  v86 = ISDictionaryValueForCaseInsensitiveString(v16, *MEMORY[0x277D6A1B0]);
  v87 = *(v18 + 3240);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v88 = v15;
    v89 = [v86 uppercaseString];
    if ([v89 isEqualToString:@"EXT"])
    {
LABEL_87:
      [v83 setIsExtendedAction:{1, v117}];
    }
  }

  else
  {
    v91 = v18;
    v88 = v15;
    v90 = ISDictionaryValueForCaseInsensitiveString(v16, *MEMORY[0x277D6A1C8]);

    v92 = *(v91 + 3240);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_92;
    }

    v89 = [v90 uppercaseString];
    v86 = v90;
    if ([v89 isEqualToString:@"PK"])
    {
      goto LABEL_87;
    }
  }

  v90 = v86;
LABEL_92:
  [v13 setBiometricAuthenticationContext:{v83, v117}];
  v93 = ISError(22, 0, 0);
  v94 = *MEMORY[0x277D6A100];
  v95 = SSErrorBySettingUserInfoValue();

  [v13 setError:v95];
  v96 = [v13 dataProvider];
  if (objc_opt_respondsToSelector())
  {
    v97 = [v13 biometricAuthenticationContext];
    [v96 setBiometricAuthenticationContext:v97];
  }

  v15 = v88;
  v16 = v125;
LABEL_95:
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __110__ISStoreURLOperation__handleResponseHeaders_response_request_account_performsMachineDataActions_shouldRetry___block_invoke;
  block[3] = &unk_27A670818;
  v98 = v127;
  v129 = v98;
  if (_handleResponseHeaders_response_request_account_performsMachineDataActions_shouldRetry__sEnvironmentOnce != -1)
  {
    dispatch_once(&_handleResponseHeaders_response_request_account_performsMachineDataActions_shouldRetry__sEnvironmentOnce, block);
  }

  v99 = +[ISStoreURLOperation _authKitSession];
  [v99 handleResponse:v98 forRequest:v15 shouldRetry:a8];

  v100 = *MEMORY[0x277D6A148];
  v101 = ISDictionaryValueForCaseInsensitiveString(v16, *MEMORY[0x277D6A148]);

  if (a8 && !*a8 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v102 = [v101 integerValue];
    v103 = [MEMORY[0x277D69B38] sharedStoreServicesConfig];
    if (!v103)
    {
      v103 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v104 = [v103 shouldLog];
    if ([v103 shouldLogToDisk])
    {
      v104 |= 2u;
    }

    v105 = [v103 OSLogObject];
    if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
    {
      v106 = v104;
    }

    else
    {
      v106 = v104 & 2;
    }

    if (v106)
    {
      v107 = objc_opt_class();
      v130 = 138543618;
      v131 = v107;
      v132 = 2048;
      v133 = v102;
      v108 = v107;
      LODWORD(v119) = 22;
      v109 = _os_log_send_and_compose_impl();

      if (!v109)
      {
        goto LABEL_111;
      }

      v105 = [MEMORY[0x277CCACA8] stringWithCString:v109 encoding:{4, &v130, v119}];
      free(v109);
      SSFileLog();
    }

LABEL_111:
    v110 = v102 == 1001;
    v16 = v125;
    if (v110)
    {
      v111 = [v124 _requestProperties];
      [v111 setShouldDisableReversePush:1];
      v112 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", 1];
      [v111 setValue:v112 forHTTPHeaderField:v100];
      [v124 _activeURLRequest];
      v114 = v113 = v15;
      v115 = [v114 mutableCopy];

      v15 = v113;
      [v115 setValue:v112 forHTTPHeaderField:v100];
      v16 = v125;
      [v124 _setActiveURLRequest:v115];
      *a8 = 1;
    }
  }

  v116 = *MEMORY[0x277D85DE8];
}

void __110__ISStoreURLOperation__handleResponseHeaders_response_request_account_performsMachineDataActions_shouldRetry___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 32) _iTunesStore_valueForHTTPHeader:@"X-Apple-Application-Site"];
  if (v1)
  {
    v2 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!v2)
    {
      v2 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v3 = [v2 shouldLog];
    if ([v2 shouldLogToDisk])
    {
      v4 = v3 | 2;
    }

    else
    {
      v4 = v3;
    }

    v5 = [v2 OSLogObject];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v4;
    }

    else
    {
      v6 = v4 & 2;
    }

    if (v6)
    {
      v10 = 138412290;
      v11 = v1;
      LODWORD(v9) = 12;
      v7 = _os_log_send_and_compose_impl();

      if (!v7)
      {
LABEL_14:

        goto LABEL_15;
      }

      v5 = [MEMORY[0x277CCACA8] stringWithCString:v7 encoding:{4, &v10, v9}];
      free(v7);
      SSFileLog();
    }

    goto LABEL_14;
  }

LABEL_15:

  v8 = *MEMORY[0x277D85DE8];
}

+ (BOOL)_operationWaitsForPurchases:(id)a3
{
  if (!a3)
  {
    return 1;
  }

  v3 = [a3 parentOperation];
  if (!v3)
  {
    return 1;
  }

  v4 = v3;
  do
  {
    v5 = [v4 uniqueKey];
    v6 = [v5 isEqualToString:@"com.apple.itunesstored.PurchaseOperation"];

    if (v6)
    {
      break;
    }

    v7 = [v4 parentOperation];

    v4 = v7;
  }

  while (v7);
  v8 = v6 ^ 1;

  return v8;
}

+ (void)_performMachineDataRequest:(id)a3 requestProperties:(id)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  [v7 setAllowsBootstrapCellularData:{objc_msgSend(v8, "allowsBootstrapCellularData")}];
  if (SSIsDaemon())
  {
    v10 = [objc_alloc(NSClassFromString(&cfstr_Ismachinedataa.isa)) initWithMachineDataRequest:v7];
    v11 = [v8 HTTPHeaders];
    v12 = [v11 objectForKey:*MEMORY[0x277D6A130]];
    [v10 setUserAgent:v12];

    if (v9)
    {
      v14 = MEMORY[0x277D85DD0];
      v15 = 3221225472;
      v16 = __79__ISStoreURLOperation__performMachineDataRequest_requestProperties_completion___block_invoke_2;
      v17 = &unk_27A670BD8;
      v18 = v9;
      [v10 setResultBlock:&v14];
    }

    v13 = [ISOperationQueue mainQueue:v14];
    [v13 addOperation:v10];
  }

  else
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __79__ISStoreURLOperation__performMachineDataRequest_requestProperties_completion___block_invoke;
    v19[3] = &unk_27A670BB0;
    v20 = v9;
    [v7 startWithCompletionBlock:v19];
    v10 = v20;
  }
}

uint64_t __79__ISStoreURLOperation__performMachineDataRequest_requestProperties_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2 == 0, a2);
  }

  return result;
}

+ (id)_storeFrontIdentifierForAccount:(id)a3
{
  v57 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v50 = SSGenerateLogCorrelationString();
  v4 = [MEMORY[0x277D69B38] sharedAccountsStorefrontConfig];
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
  if (!os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v6 &= 2u;
  }

  if (v6)
  {
    v8 = objc_opt_class();
    v9 = v8;
    v10 = [v3 accountName];
    SSHashIfNeeded();
    v12 = v11 = v3;
    v51 = 138543874;
    v52 = v8;
    v53 = 2114;
    v54 = v50;
    v55 = 2114;
    v56 = v12;
    LODWORD(v49) = 32;
    v48 = &v51;
    v13 = _os_log_send_and_compose_impl();

    v3 = v11;
    if (!v13)
    {
      goto LABEL_12;
    }

    v7 = [MEMORY[0x277CCACA8] stringWithCString:v13 encoding:{4, &v51, v49}];
    free(v13);
    v48 = v7;
    SSFileLog();
  }

LABEL_12:
  v14 = [v3 storeFrontIdentifier];
  if ([v14 length])
  {
    v15 = [MEMORY[0x277D69B38] sharedAccountsStorefrontConfig];
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
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = v17;
    }

    else
    {
      v19 = v17 & 2;
    }

    if (v19)
    {
      v20 = objc_opt_class();
      v21 = v20;
      v22 = SSHashIfNeeded();
      v51 = 138543874;
      v52 = v20;
      v53 = 2114;
      v54 = v50;
      v55 = 2114;
      v56 = v22;
      LODWORD(v49) = 32;
      v23 = _os_log_send_and_compose_impl();

      if (!v23)
      {
LABEL_25:

        v24 = v14;
        goto LABEL_54;
      }

      v18 = [MEMORY[0x277CCACA8] stringWithCString:v23 encoding:{4, &v51, v49}];
      free(v23);
      SSFileLog();
    }

    goto LABEL_25;
  }

  v25 = [MEMORY[0x277D69A80] currentDevice];
  v26 = [v25 storeFrontIdentifier];

  v27 = [v26 length];
  v28 = [MEMORY[0x277D69B38] sharedAccountsStorefrontConfig];
  v29 = v28;
  if (!v27)
  {
    if (!v28)
    {
      v29 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v39 = [v29 shouldLog];
    if ([v29 shouldLogToDisk])
    {
      v40 = v39 | 2;
    }

    else
    {
      v40 = v39;
    }

    v41 = [v29 OSLogObject];
    if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
    {
      v42 = v40;
    }

    else
    {
      v42 = v40 & 2;
    }

    if (v42)
    {
      v43 = objc_opt_class();
      v51 = 138543618;
      v52 = v43;
      v53 = 2114;
      v54 = v50;
      v44 = v43;
      LODWORD(v49) = 22;
      v45 = _os_log_send_and_compose_impl();

      if (!v45)
      {
LABEL_52:

        v24 = 0;
        goto LABEL_53;
      }

      v41 = [MEMORY[0x277CCACA8] stringWithCString:v45 encoding:{4, &v51, v49}];
      free(v45);
      SSFileLog();
    }

    goto LABEL_52;
  }

  if (!v28)
  {
    v29 = [MEMORY[0x277D69B38] sharedConfig];
  }

  v30 = [v29 shouldLog];
  if ([v29 shouldLogToDisk])
  {
    v31 = v30 | 2;
  }

  else
  {
    v31 = v30;
  }

  v32 = [v29 OSLogObject];
  if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
  {
    v33 = v31;
  }

  else
  {
    v33 = v31 & 2;
  }

  if (!v33)
  {
    goto LABEL_38;
  }

  v34 = objc_opt_class();
  v35 = v34;
  SSHashIfNeeded();
  v37 = v36 = v3;
  v51 = 138543874;
  v52 = v34;
  v53 = 2114;
  v54 = v50;
  v55 = 2114;
  v56 = v37;
  LODWORD(v49) = 32;
  v38 = _os_log_send_and_compose_impl();

  v3 = v36;
  if (v38)
  {
    v32 = [MEMORY[0x277CCACA8] stringWithCString:v38 encoding:{4, &v51, v49}];
    free(v38);
    SSFileLog();
LABEL_38:
  }

  v24 = v26;
LABEL_53:

LABEL_54:
  v46 = *MEMORY[0x277D85DE8];

  return v24;
}

- (ISBiometricSessionDelegate)biometricSessionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_biometricSessionDelegate);

  return WeakRetained;
}

@end