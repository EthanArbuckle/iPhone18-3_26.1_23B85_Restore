@interface PurchaseOperation
+ (double)_randomDouble;
+ (void)reportAnonymousPings:(id)pings;
- (BOOL)_clientIsViewService;
- (BOOL)_shouldDisableReversePush;
- (BOOL)_shouldSendKeyBagSyncData;
- (BOOL)_shouldSendSBSyncData;
- (BOOL)_shouldUseClientAuthentication;
- (BOOL)isBackgroundPurchase;
- (BOOL)isMoveToiOS;
- (BOOL)isPlaybackRequest;
- (BOOL)useRemoteAuthentication;
- (ISURLRequestPerformance)requestPerformanceMetrics;
- (NSDictionary)tidHeaders;
- (NSNumber)originalProductOwnerAccountDSID;
- (NSString)affiliateIdentifier;
- (NSString)clientIdentifier;
- (NSString)clientIdentifierHeader;
- (NSString)deviceScore;
- (NSString)logKey;
- (NSString)urlBagKey;
- (PurchaseOperation)initWithPurchase:(id)purchase;
- (SSAuthenticationContext)authenticationContext;
- (SSURLConnectionResponse)URLResponse;
- (id)_URLBagContext;
- (id)_account;
- (id)_accountWithUniqueIdentifier:(id)identifier;
- (id)_buyParamProductType;
- (id)_countryCode;
- (id)_deviceScoreMetricsParam;
- (id)_fairPlaySubscriptionController;
- (id)_newPurchaseRequestOperation;
- (id)_newRequestParameters;
- (id)_priceFromBuyParams;
- (id)_recordEngagementEventWithResult:(id)result error:(id)error;
- (id)authenticatedAccountDSID;
- (int64_t)_purchaseType;
- (void)_addFairPlayToRequestProperties:(id)properties withAccountIdentifier:(unint64_t)identifier;
- (void)_continueTouchIDSessionWithDialog:(id)dialog;
- (void)_handleFailureForOperation:(id)operation;
- (void)_performApplePayClassicCheck;
- (void)_performAutoEnrollmentCheck;
- (void)_performDelayedGotoForOperation:(id)operation;
- (void)_performMachineDataActionForURLResponse:(id)response;
- (void)_runDialogOperationForDialog:(id)dialog;
- (void)_runPurchaseRequest;
- (void)_scoreDevice;
- (void)_scoreDeviceRetryFailedV2Score;
- (void)_setChangedBuyParameters:(id)parameters fromDataProvider:(id)provider;
- (void)_setMoveToiOS;
- (void)operation:(id)operation didAuthenticateWithDSID:(id)d;
- (void)operation:(id)operation shouldAuthenticateWithContext:(id)context responseHandler:(id)handler;
- (void)operation:(id)operation willSendRequest:(id)request;
- (void)run;
- (void)sender:(id)sender willSendChallenge:(id)challenge andSignature:(id)signature andPaymentTokenData:(id)data andFpanID:(id)d isExtendedAction:(BOOL)action isPayment:(BOOL)payment additionalHeaders:(id)self0;
- (void)setAffiliateIdentifier:(id)identifier;
- (void)setAuthenticationContext:(id)context;
- (void)setBackgroundPurchase:(BOOL)purchase;
- (void)setClientIdentifier:(id)identifier;
- (void)setClientIdentifierHeader:(id)header;
- (void)setOriginalProductOwnerAccountDSID:(id)d;
- (void)setPlaybackRequest:(BOOL)request;
- (void)setUrlBagKey:(id)key;
- (void)setUseRemoteAuthentication:(BOOL)authentication;
@end

@implementation PurchaseOperation

- (PurchaseOperation)initWithPurchase:(id)purchase
{
  purchaseCopy = purchase;
  v39.receiver = self;
  v39.super_class = PurchaseOperation;
  v5 = [(PurchaseOperation *)&v39 init];
  if (v5)
  {
    affiliateIdentifier = [purchaseCopy affiliateIdentifier];
    affiliateIdentifier = v5->_affiliateIdentifier;
    v5->_affiliateIdentifier = affiliateIdentifier;

    v8 = [SSAuthenticationContext alloc];
    accountIdentifier = [purchaseCopy accountIdentifier];
    v10 = [v8 initWithAccountIdentifier:accountIdentifier];
    authenticationContext = v5->_authenticationContext;
    v5->_authenticationContext = v10;

    v12 = objc_alloc_init(SSBiometricAuthenticationContext);
    biometricAuthenticationContext = v5->_biometricAuthenticationContext;
    v5->_biometricAuthenticationContext = v12;

    buyParameters = [purchaseCopy buyParameters];
    buyParameters = v5->_buyParameters;
    v5->_buyParameters = buyParameters;

    v16 = [purchaseCopy valueForDownloadProperty:SSDownloadPropertyKind];
    downloadKind = v5->_downloadKind;
    v5->_downloadKind = v16;

    v5->_didConsumeScore = 0;
    v5->_displaysOnLockScreen = [purchaseCopy displaysOnLockScreen];
    v5->_ignoresForcedPasswordRestriction = [purchaseCopy ignoresForcedPasswordRestriction];
    v5->_isBackgroundPurchase = [purchaseCopy isBackgroundPurchase];
    v5->_isPlaybackRequest = [purchaseCopy isPlaybackRequest];
    logUUID = [(SSAuthenticationContext *)v5->_authenticationContext logUUID];
    logKey = v5->_logKey;
    v5->_logKey = logUUID;

    v20 = +[SSDevice currentDevice];
    storeFrontIdentifier = [v20 storeFrontIdentifier];
    originatingStorefront = v5->_originatingStorefront;
    v5->_originatingStorefront = storeFrontIdentifier;

    v5->_preauthenticated = [purchaseCopy isPreauthenticated];
    requestProperties = [purchaseCopy requestProperties];
    v24 = [requestProperties copy];
    requestProperties = v5->_requestProperties;
    v5->_requestProperties = v24;

    v26 = [purchaseCopy valueForDownloadProperty:SSDownloadPropertyShouldSuppressErrorDialogs];
    v5->_suppressDialogs = [v26 BOOLValue];

    v5->_silentAuthCount = 0;
    v5->_shouldCancelBiometricTokenUpdate = +[ISBiometricStore tokenUpdateState]== 1;
    tidHeaders = [purchaseCopy tidHeaders];
    if (tidHeaders)
    {
      [(SSBiometricAuthenticationContext *)v5->_biometricAuthenticationContext setIsPayment:1];
      [(SSBiometricAuthenticationContext *)v5->_biometricAuthenticationContext setShouldContinueTouchIDSession:1];
      v28 = [tidHeaders objectForKeyedSubscript:SSHTTPHeaderXAppleTouchIDChallenge];
      v29 = [tidHeaders objectForKeyedSubscript:SSHTTPHeaderXAppleTouchIDSignature];
      v30 = [tidHeaders objectForKeyedSubscript:SSHTTPHeaderXAppleTouchIDAction];
      if (v28)
      {
        [(SSBiometricAuthenticationContext *)v5->_biometricAuthenticationContext setChallenge:v28];
      }

      if (v29)
      {
        [(SSBiometricAuthenticationContext *)v5->_biometricAuthenticationContext setSignature:v29];
      }

      uppercaseString = [v30 uppercaseString];
      v32 = [uppercaseString isEqualToString:@"FB"];

      if (v32)
      {
        [(SSBiometricAuthenticationContext *)v5->_biometricAuthenticationContext setDidFallbackToPassword:1];
      }
    }

    [(PurchaseOperation *)v5 setPowerAssertionIdentifier:@"com.apple.itunesstored.purchase"];
    [(PurchaseOperation *)v5 _setMoveToiOS];
    if (!v5->_moveToiOS)
    {
      v33 = [AMSPurchaseShim alloc];
      clientAuditTokenData = [(PurchaseOperation *)v5 clientAuditTokenData];
      clientIdentifier = [(PurchaseOperation *)v5 clientIdentifier];
      v36 = [(AMSPurchaseShim *)v33 initWithPurchase:purchaseCopy auditTokenData:clientAuditTokenData clientIdentifier:clientIdentifier];
      shim = v5->_shim;
      v5->_shim = v36;
    }
  }

  return v5;
}

+ (void)reportAnonymousPings:(id)pings
{
  pingsCopy = pings;
  iSWeakLinkedClassForString() = [ISWeakLinkedClassForString() sharedConnection];
  isAppAnalyticsAllowed = [iSWeakLinkedClassForString() isAppAnalyticsAllowed];

  if (isAppAnalyticsAllowed)
  {
    v6 = +[ISOperationQueue mainQueue];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v16 = pingsCopy;
    v7 = pingsCopy;
    v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      do
      {
        v11 = 0;
        do
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v17 + 1) + 8 * v11);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v13 = [[NSURL alloc] initWithString:v12];
            v14 = objc_alloc_init(ISURLOperation);
            [v14 setQueuePriority:-4];
            [v14 _setUsesPrivateCookieStore:0];
            v15 = [[SSMutableURLRequestProperties alloc] initWithURL:v13];
            [v15 setAllowedRetryCount:0];
            [v15 setITunesStoreRequest:0];
            [v15 setTimeoutInterval:20.0];
            [v14 setRequestProperties:v15];
            [v6 addOperation:v14];
          }

          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v9);
    }

    pingsCopy = v16;
  }
}

- (NSString)affiliateIdentifier
{
  [(PurchaseOperation *)self lock];
  v3 = self->_affiliateIdentifier;
  [(PurchaseOperation *)self unlock];

  return v3;
}

- (SSAuthenticationContext)authenticationContext
{
  [(PurchaseOperation *)self lock];
  v3 = self->_authenticationContext;
  [(PurchaseOperation *)self unlock];

  return v3;
}

- (NSString)clientIdentifier
{
  [(PurchaseOperation *)self lock];
  v3 = self->_clientIdentifier;
  [(PurchaseOperation *)self unlock];

  return v3;
}

- (NSString)clientIdentifierHeader
{
  [(PurchaseOperation *)self lock];
  v3 = self->_clientIdentifierHeader;
  [(PurchaseOperation *)self unlock];

  return v3;
}

- (NSString)deviceScore
{
  [(PurchaseOperation *)self lock];
  v3 = [(NSString *)self->_deviceScore copy];
  [(PurchaseOperation *)self unlock];

  return v3;
}

- (BOOL)isBackgroundPurchase
{
  [(PurchaseOperation *)self lock];
  isBackgroundPurchase = self->_isBackgroundPurchase;
  [(PurchaseOperation *)self unlock];
  return isBackgroundPurchase;
}

- (BOOL)isPlaybackRequest
{
  [(PurchaseOperation *)self lock];
  isPlaybackRequest = self->_isPlaybackRequest;
  [(PurchaseOperation *)self unlock];
  return isPlaybackRequest;
}

- (BOOL)isMoveToiOS
{
  [(PurchaseOperation *)self lock];
  moveToiOS = self->_moveToiOS;
  [(PurchaseOperation *)self unlock];
  return moveToiOS;
}

- (NSString)logKey
{
  authenticationContext = [(PurchaseOperation *)self authenticationContext];
  logUUID = [authenticationContext logUUID];

  if (logUUID)
  {
    authenticationContext2 = [(PurchaseOperation *)self authenticationContext];
    logUUID2 = [authenticationContext2 logUUID];
  }

  else
  {
    logUUID2 = self->_logKey;
  }

  return logUUID2;
}

- (NSNumber)originalProductOwnerAccountDSID
{
  [(PurchaseOperation *)self lock];
  v3 = self->_originalProductOwnerAccountDSID;
  [(PurchaseOperation *)self unlock];

  return v3;
}

- (ISURLRequestPerformance)requestPerformanceMetrics
{
  [(PurchaseOperation *)self lock];
  v3 = self->_requestPerformanceMetrics;
  [(PurchaseOperation *)self unlock];

  return v3;
}

- (void)setAffiliateIdentifier:(id)identifier
{
  identifierCopy = identifier;
  [(PurchaseOperation *)self lock];
  if (self->_affiliateIdentifier != identifierCopy)
  {
    v4 = [(NSString *)identifierCopy copy];
    affiliateIdentifier = self->_affiliateIdentifier;
    self->_affiliateIdentifier = v4;
  }

  [(PurchaseOperation *)self unlock];
}

- (void)setAuthenticationContext:(id)context
{
  contextCopy = context;
  [(PurchaseOperation *)self lock];
  if (self->_authenticationContext != contextCopy)
  {
    v4 = [(SSAuthenticationContext *)contextCopy copy];
    authenticationContext = self->_authenticationContext;
    self->_authenticationContext = v4;
  }

  [(PurchaseOperation *)self unlock];
}

- (void)setBackgroundPurchase:(BOOL)purchase
{
  [(PurchaseOperation *)self lock];
  self->_isBackgroundPurchase = purchase;

  [(PurchaseOperation *)self unlock];
}

- (void)setPlaybackRequest:(BOOL)request
{
  [(PurchaseOperation *)self lock];
  self->_isPlaybackRequest = request;

  [(PurchaseOperation *)self unlock];
}

- (void)setClientIdentifier:(id)identifier
{
  identifierCopy = identifier;
  [(PurchaseOperation *)self lock];
  if (self->_clientIdentifier != identifierCopy)
  {
    objc_storeStrong(&self->_clientIdentifier, identifier);
  }

  [(PurchaseOperation *)self unlock];
}

- (void)setClientIdentifierHeader:(id)header
{
  headerCopy = header;
  [(PurchaseOperation *)self lock];
  if (self->_clientIdentifierHeader != headerCopy)
  {
    v4 = [(NSString *)headerCopy copy];
    clientIdentifierHeader = self->_clientIdentifierHeader;
    self->_clientIdentifierHeader = v4;
  }

  [(PurchaseOperation *)self unlock];
}

- (void)setOriginalProductOwnerAccountDSID:(id)d
{
  dCopy = d;
  [(PurchaseOperation *)self lock];
  if (self->_originalProductOwnerAccountDSID != dCopy)
  {
    v4 = [(NSNumber *)dCopy copy];
    originalProductOwnerAccountDSID = self->_originalProductOwnerAccountDSID;
    self->_originalProductOwnerAccountDSID = v4;
  }

  [(PurchaseOperation *)self unlock];
}

- (void)setUrlBagKey:(id)key
{
  keyCopy = key;
  [(PurchaseOperation *)self lock];
  if (self->_urlBagKey != keyCopy)
  {
    v4 = [(NSString *)keyCopy copy];
    urlBagKey = self->_urlBagKey;
    self->_urlBagKey = v4;
  }

  [(PurchaseOperation *)self unlock];
}

- (void)setUseRemoteAuthentication:(BOOL)authentication
{
  [(PurchaseOperation *)self lock];
  self->_useRemoteAuthentication = authentication;

  [(PurchaseOperation *)self unlock];
}

- (NSDictionary)tidHeaders
{
  [(PurchaseOperation *)self lock];
  v3 = objc_alloc_init(NSMutableDictionary);
  challenge = [(SSBiometricAuthenticationContext *)self->_biometricAuthenticationContext challenge];
  signature = [(SSBiometricAuthenticationContext *)self->_biometricAuthenticationContext signature];
  didFallbackToPassword = [(SSBiometricAuthenticationContext *)self->_biometricAuthenticationContext didFallbackToPassword];
  if (challenge)
  {
    v7 = signature == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    [v3 setObject:challenge forKey:SSHTTPHeaderXAppleTouchIDChallenge];
    [v3 setObject:signature forKey:SSHTTPHeaderXAppleTouchIDSignature];
  }

  if (didFallbackToPassword)
  {
    [v3 setObject:@"FB" forKey:SSHTTPHeaderXAppleTouchIDAction];
  }

  [(PurchaseOperation *)self unlock];
  if ([v3 count])
  {
    v8 = [v3 copy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSString)urlBagKey
{
  [(PurchaseOperation *)self lock];
  v3 = self->_urlBagKey;
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = @"buyProduct";
  }

  [(PurchaseOperation *)self unlock];

  return v4;
}

- (BOOL)useRemoteAuthentication
{
  [(PurchaseOperation *)self lock];
  useRemoteAuthentication = self->_useRemoteAuthentication;
  [(PurchaseOperation *)self unlock];
  return useRemoteAuthentication;
}

- (SSURLConnectionResponse)URLResponse
{
  [(PurchaseOperation *)self lock];
  v3 = self->_urlResponse;
  [(PurchaseOperation *)self unlock];

  return v3;
}

- (id)authenticatedAccountDSID
{
  [(PurchaseOperation *)self lock];
  requiredUniqueIdentifier = self->_accountID;
  if (!requiredUniqueIdentifier)
  {
    requiredUniqueIdentifier = [(SSAuthenticationContext *)self->_authenticationContext requiredUniqueIdentifier];
  }

  [(PurchaseOperation *)self unlock];

  return requiredUniqueIdentifier;
}

- (void)run
{
  shim = self->_shim;
  if (shim)
  {
    v128 = 0;
    v4 = [(AMSPurchaseShim *)shim runPurchase:&v128];
    v5 = v128;
    v6 = v5;
    if (!v5)
    {
LABEL_63:
      [(PurchaseOperation *)self setSuccess:v6 == 0, v119];
      goto LABEL_180;
    }

    v7 = v5;
    v8 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v8)
    {
      v8 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v8 shouldLog];
    if ([v8 shouldLogToDisk])
    {
      v10 = shouldLog | 2;
    }

    else
    {
      v10 = shouldLog;
    }

    oSLogObject = [v8 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v12 = v10;
    }

    else
    {
      v12 = v10 & 2;
    }

    if (v12)
    {
      v13 = objc_opt_class();
      v14 = v13;
      v15 = AMSLogKey();
      v129 = 138543874;
      v130 = v13;
      v131 = 2114;
      v132 = v15;
      v133 = 2114;
      v6 = v7;
      v134 = v7;
      LODWORD(v121) = 32;
      v119 = &v129;
      v16 = _os_log_send_and_compose_impl();

      if (!v16)
      {
LABEL_62:

        [(PurchaseOperation *)self setError:v6];
        goto LABEL_63;
      }

      oSLogObject = [NSString stringWithCString:v16 encoding:4, &v129, v121];
      free(v16);
      v119 = oSLogObject;
      SSFileLog();
    }

    else
    {
      v6 = v7;
    }

    goto LABEL_62;
  }

  buyParameters = [(PurchaseOperation *)self buyParameters];
  v18 = [NSURL copyDictionaryForQueryString:buyParameters unescapedValues:1];

  v124 = v18;
  v125 = [v18 objectForKey:@"salableAdamId"];
  v19 = &CFDictionaryGetValue_ptr;
  v20 = +[SSLogConfig sharedDaemonConfig];
  if (!v20)
  {
    v20 = +[SSLogConfig sharedConfig];
  }

  shouldLog2 = [v20 shouldLog];
  if ([v20 shouldLogToDisk])
  {
    v22 = shouldLog2 | 2;
  }

  else
  {
    v22 = shouldLog2;
  }

  oSLogObject2 = [v20 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
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
    logKey = [(PurchaseOperation *)self logKey];
    v129 = 138543874;
    v130 = v25;
    v131 = 2114;
    v132 = logKey;
    v133 = 2112;
    v134 = v125;
    LODWORD(v121) = 32;
    v119 = &v129;
    v28 = _os_log_send_and_compose_impl();

    v19 = &CFDictionaryGetValue_ptr;
    if (!v28)
    {
      goto LABEL_26;
    }

    oSLogObject2 = [NSString stringWithCString:v28 encoding:4, &v129, v121];
    free(v28);
    v119 = oSLogObject2;
    SSFileLog();
  }

LABEL_26:
  _URLBagContext = [(PurchaseOperation *)self _URLBagContext];
  clientAuditTokenData = [(PurchaseOperation *)self clientAuditTokenData];
  [_URLBagContext setClientAuditTokenData:clientAuditTokenData];

  v127 = 0;
  v123 = _URLBagContext;
  v31 = [(PurchaseOperation *)self loadURLBagWithContext:_URLBagContext returningError:&v127];
  v32 = v127;
  if (v31)
  {
    goto LABEL_40;
  }

  v33 = +[SSLogConfig sharedDaemonConfig];
  if (!v33)
  {
    v33 = +[SSLogConfig sharedConfig];
  }

  shouldLog3 = [v33 shouldLog];
  if ([v33 shouldLogToDisk])
  {
    v35 = shouldLog3 | 2;
  }

  else
  {
    v35 = shouldLog3;
  }

  oSLogObject3 = [v33 OSLogObject];
  if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
  {
    v37 = v35;
  }

  else
  {
    v37 = v35 & 2;
  }

  if (!v37)
  {
    goto LABEL_38;
  }

  v38 = objc_opt_class();
  v129 = 138412546;
  v130 = v38;
  v131 = 2112;
  v132 = v32;
  v39 = v38;
  LODWORD(v121) = 22;
  v119 = &v129;
  v40 = _os_log_send_and_compose_impl();

  if (v40)
  {
    oSLogObject3 = [NSString stringWithCString:v40 encoding:4, &v129, v121];
    free(v40);
    v119 = oSLogObject3;
    SSFileLog();
LABEL_38:
  }

  [(PurchaseOperation *)self setError:v32];
  v19 = &CFDictionaryGetValue_ptr;
LABEL_40:
  v41 = objc_alloc_init(PurchaseResponseInfo);
  responseInfo = self->_responseInfo;
  self->_responseInfo = v41;

  v122 = v32;
  if (+[ISBiometricStore shouldUseApplePayClassic])
  {
    [(PurchaseOperation *)self _performApplePayClassicCheck];
  }

  else if (+[ISBiometricStore shouldUseAutoEnrollment])
  {
    [(PurchaseOperation *)self _performAutoEnrollmentCheck];
  }

  if (!+[DeviceScorer deviceScoringSupported])
  {
    goto LABEL_70;
  }

  _purchaseType = [(PurchaseOperation *)self _purchaseType];
  buyParameters2 = +[SSLogConfig sharedDaemonConfig];
  if (!buyParameters2)
  {
    buyParameters2 = +[SSLogConfig sharedConfig];
  }

  shouldLog4 = [buyParameters2 shouldLog];
  if ([buyParameters2 shouldLogToDisk])
  {
    v46 = shouldLog4 | 2;
  }

  else
  {
    v46 = shouldLog4;
  }

  oSLogObject4 = [buyParameters2 OSLogObject];
  if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_INFO))
  {
    v48 = v46;
  }

  else
  {
    v48 = v46 & 2;
  }

  if (v48)
  {
    logKey2 = [(PurchaseOperation *)self logKey];
    v50 = [NSNumber numberWithInteger:_purchaseType];
    v129 = 138543618;
    v130 = logKey2;
    v131 = 2114;
    v132 = v50;
    LODWORD(v121) = 22;
    v120 = &v129;
    v51 = _os_log_send_and_compose_impl();

    if (!v51)
    {
      goto LABEL_57;
    }

    oSLogObject4 = [NSString stringWithCString:v51 encoding:4, &v129, v121, v122];
    free(v51);
    v120 = oSLogObject4;
    SSFileLog();
  }

LABEL_57:
  if (_purchaseType != 3 && _purchaseType)
  {
    v52 = 0;
  }

  else
  {
    buyParameters2 = [(PurchaseOperation *)self buyParameters];
    v52 = [buyParameters2 containsString:@"STDRDL"] ^ 1;
  }

  v19 = &CFDictionaryGetValue_ptr;
  if (_purchaseType == 3 || !_purchaseType)
  {
  }

  if (v52)
  {
    [(PurchaseOperation *)self _scoreDevice];
  }

LABEL_70:
  if (!v31)
  {
    goto LABEL_157;
  }

  HIDWORD(v121) = 0;
  while (1)
  {
    v53 = [(PurchaseResponseInfo *)self->_responseInfo dialog:v120];
    [(PurchaseResponseInfo *)self->_responseInfo reset];
    [(PurchaseOperation *)self setError:0];
    if (v53)
    {
      [(PurchaseOperation *)self _runDialogOperationForDialog:v53];
    }

    else
    {
      [(PurchaseOperation *)self _runPurchaseRequest];
    }

    changedBuyParameters = [(PurchaseResponseInfo *)self->_responseInfo changedBuyParameters];
    if (([(PurchaseOperation *)self success]& 1) != 0 || ([(PurchaseOperation *)self isCancelled]& 1) != 0)
    {
      break;
    }

    dialog = [(PurchaseResponseInfo *)self->_responseInfo dialog];

    if (dialog)
    {
      sharedDaemonConfig = [v19[412] sharedDaemonConfig];
      if (!sharedDaemonConfig)
      {
        sharedDaemonConfig = [v19[412] sharedConfig];
      }

      shouldLog5 = [sharedDaemonConfig shouldLog];
      if ([sharedDaemonConfig shouldLogToDisk])
      {
        shouldLog5 |= 2u;
      }

      oSLogObject5 = [sharedDaemonConfig OSLogObject];
      if (!os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_INFO))
      {
        shouldLog5 &= 2u;
      }

      if (shouldLog5)
      {
        goto LABEL_85;
      }

      goto LABEL_87;
    }

    if ([(PurchaseResponseInfo *)self->_responseInfo shouldRetryForDelayedGoto])
    {
      delayedGotoRetryCount = [(PurchaseResponseInfo *)self->_responseInfo delayedGotoRetryCount];
      if (delayedGotoRetryCount > 4)
      {
        break;
      }

      v63 = delayedGotoRetryCount;
      sharedDaemonConfig2 = [v19[412] sharedDaemonConfig];
      if (!sharedDaemonConfig2)
      {
        sharedDaemonConfig2 = [v19[412] sharedConfig];
      }

      shouldLog6 = [sharedDaemonConfig2 shouldLog];
      if ([sharedDaemonConfig2 shouldLogToDisk])
      {
        shouldLog6 |= 2u;
      }

      oSLogObject6 = [sharedDaemonConfig2 OSLogObject];
      if (!os_log_type_enabled(oSLogObject6, OS_LOG_TYPE_INFO))
      {
        shouldLog6 &= 2u;
      }

      if (shouldLog6)
      {
        v67 = objc_opt_class();
        v129 = 138412290;
        v130 = v67;
        v68 = v67;
        LODWORD(v121) = 12;
        v120 = &v129;
        v69 = _os_log_send_and_compose_impl();

        if (v69)
        {
          oSLogObject6 = [NSString stringWithCString:v69 encoding:4, &v129, v121];
          free(v69);
          v120 = oSLogObject6;
          SSFileLog();
          goto LABEL_100;
        }
      }

      else
      {
LABEL_100:
      }

      if (changedBuyParameters)
      {
        [(PurchaseOperation *)self setBuyParameters:changedBuyParameters];
      }

      [(PurchaseResponseInfo *)self->_responseInfo setDelayedGotoRetryCount:v63 + 1, v120];
      v19 = &CFDictionaryGetValue_ptr;
      goto LABEL_116;
    }

    if (changedBuyParameters)
    {
      sharedDaemonConfig3 = [v19[412] sharedDaemonConfig];
      if (!sharedDaemonConfig3)
      {
        sharedDaemonConfig3 = [v19[412] sharedConfig];
      }

      shouldLog7 = [sharedDaemonConfig3 shouldLog];
      if ([sharedDaemonConfig3 shouldLogToDisk])
      {
        shouldLog7 |= 2u;
      }

      oSLogObject7 = [sharedDaemonConfig3 OSLogObject];
      if (!os_log_type_enabled(oSLogObject7, OS_LOG_TYPE_INFO))
      {
        shouldLog7 &= 2u;
      }

      if (shouldLog7)
      {
        v73 = objc_opt_class();
        v129 = 138412290;
        v130 = v73;
        v74 = v73;
        LODWORD(v121) = 12;
        v120 = &v129;
        v75 = _os_log_send_and_compose_impl();

        v19 = &CFDictionaryGetValue_ptr;
        if (v75)
        {
          oSLogObject7 = [NSString stringWithCString:v75 encoding:4, &v129, v121];
          free(v75);
          v120 = oSLogObject7;
          SSFileLog();
          goto LABEL_114;
        }
      }

      else
      {
LABEL_114:
      }

      [(PurchaseOperation *)self setBuyParameters:changedBuyParameters];
      goto LABEL_116;
    }

    machineDataSyncState = [(PurchaseResponseInfo *)self->_responseInfo machineDataSyncState];

    if (machineDataSyncState)
    {
      sharedDaemonConfig = [v19[412] sharedDaemonConfig];
      if (!sharedDaemonConfig)
      {
        sharedDaemonConfig = [v19[412] sharedConfig];
      }

      shouldLog8 = [sharedDaemonConfig shouldLog];
      if ([sharedDaemonConfig shouldLogToDisk])
      {
        shouldLog8 |= 2u;
      }

      oSLogObject5 = [sharedDaemonConfig OSLogObject];
      if (!os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_INFO))
      {
        shouldLog8 &= 2u;
      }

      if (shouldLog8)
      {
LABEL_85:
        v59 = objc_opt_class();
        v129 = 138412290;
        v130 = v59;
        v60 = v59;
        LODWORD(v121) = 12;
        v120 = &v129;
        v61 = _os_log_send_and_compose_impl();

        v19 = &CFDictionaryGetValue_ptr;
        if (v61)
        {
          oSLogObject5 = [NSString stringWithCString:v61 encoding:4];
          free(v61);
          v120 = oSLogObject5;
          SSFileLog();
          goto LABEL_87;
        }

LABEL_88:

        goto LABEL_116;
      }

LABEL_87:

      goto LABEL_88;
    }

    shouldRetryForMachineData = [(PurchaseResponseInfo *)self->_responseInfo shouldRetryForMachineData];
    v79 = self->_responseInfo;
    if (shouldRetryForMachineData)
    {
      machineDataRetryCount = [(PurchaseResponseInfo *)v79 machineDataRetryCount];
      if (machineDataRetryCount > 0)
      {
        break;
      }

      v81 = machineDataRetryCount;
      sharedDaemonConfig4 = [v19[412] sharedDaemonConfig];
      if (!sharedDaemonConfig4)
      {
        sharedDaemonConfig4 = [v19[412] sharedConfig];
      }

      shouldLog9 = [sharedDaemonConfig4 shouldLog];
      if ([sharedDaemonConfig4 shouldLogToDisk])
      {
        shouldLog9 |= 2u;
      }

      oSLogObject8 = [sharedDaemonConfig4 OSLogObject];
      if (!os_log_type_enabled(oSLogObject8, OS_LOG_TYPE_INFO))
      {
        shouldLog9 &= 2u;
      }

      if (shouldLog9)
      {
        v85 = objc_opt_class();
        v129 = 138412290;
        v130 = v85;
        v86 = v85;
        LODWORD(v121) = 12;
        v120 = &v129;
        v87 = _os_log_send_and_compose_impl();

        v19 = &CFDictionaryGetValue_ptr;
        if (v87)
        {
          oSLogObject8 = [NSString stringWithCString:v87 encoding:4, &v129, v121];
          free(v87);
          v120 = oSLogObject8;
          SSFileLog();
          goto LABEL_138;
        }
      }

      else
      {
LABEL_138:
      }

      [(PurchaseResponseInfo *)self->_responseInfo setMachineDataRetryCount:v81 + 1];
      goto LABEL_116;
    }

    if (![(PurchaseResponseInfo *)v79 shouldRetryWithOriginalProductOwnerAccount]|| (self->_originalProductOwnerAccountDSID == 0) | BYTE4(v121) & 1)
    {
      break;
    }

    v88 = [[SSMutableAuthenticationContext alloc] initWithAccountIdentifier:self->_originalProductOwnerAccountDSID];
    logKey3 = [(PurchaseOperation *)self logKey];
    [v88 setLogUUID:logKey3];

    authenticationContext = self->_authenticationContext;
    self->_authenticationContext = v88;

    HIDWORD(v121) = 1;
LABEL_116:
    if (self->_silentAuthCount >= 3)
    {
      sharedDaemonConfig5 = [v19[412] sharedDaemonConfig];
      if (!sharedDaemonConfig5)
      {
        sharedDaemonConfig5 = [v19[412] sharedConfig];
      }

      shouldLog10 = [sharedDaemonConfig5 shouldLog];
      if ([sharedDaemonConfig5 shouldLogToDisk])
      {
        v93 = shouldLog10 | 2;
      }

      else
      {
        v93 = shouldLog10;
      }

      oSLogObject9 = [sharedDaemonConfig5 OSLogObject];
      if (os_log_type_enabled(oSLogObject9, OS_LOG_TYPE_ERROR))
      {
        v95 = v93;
      }

      else
      {
        v95 = v93 & 2;
      }

      if (v95)
      {
        v96 = objc_opt_class();
        v129 = 138543362;
        v130 = v96;
        v97 = v96;
        LODWORD(v121) = 12;
        v120 = &v129;
        v98 = _os_log_send_and_compose_impl();

        if (v98)
        {
          oSLogObject9 = [NSString stringWithCString:v98 encoding:4, &v129, v121];
          free(v98);
          v120 = oSLogObject9;
          SSFileLog();
          goto LABEL_154;
        }
      }

      else
      {
LABEL_154:
      }

      v19 = &CFDictionaryGetValue_ptr;
      break;
    }
  }

LABEL_157:
  rawOutput = [(PurchaseOperation *)self rawOutput];
  error = [(PurchaseOperation *)self error];
  v101 = [(PurchaseOperation *)self _recordEngagementEventWithResult:rawOutput error:error];

  v126[0] = _NSConcreteStackBlock;
  v126[1] = 3221225472;
  v126[2] = sub_1000A2E10;
  v126[3] = &unk_100327110;
  v126[4] = self;
  [v101 addSuccessBlock:v126];
  error2 = [(PurchaseOperation *)self error];

  sharedDaemonConfig6 = [v19[412] sharedDaemonConfig];
  sharedConfig = sharedDaemonConfig6;
  if (error2)
  {
    if (!sharedDaemonConfig6)
    {
      sharedConfig = [v19[412] sharedConfig];
    }

    shouldLog11 = [sharedConfig shouldLog];
    if ([sharedConfig shouldLogToDisk])
    {
      shouldLog11 |= 2u;
    }

    oSLogObject10 = [sharedConfig OSLogObject];
    if (!os_log_type_enabled(oSLogObject10, OS_LOG_TYPE_ERROR))
    {
      shouldLog11 &= 2u;
    }

    if (shouldLog11)
    {
      v107 = objc_opt_class();
      v108 = v107;
      logKey4 = [(PurchaseOperation *)self logKey];
      error3 = [(PurchaseOperation *)self error];
      v129 = 138543874;
      v130 = v107;
      v131 = 2114;
      v132 = logKey4;
      v133 = 2114;
      v134 = error3;
      LODWORD(v121) = 32;
      v111 = _os_log_send_and_compose_impl();

      goto LABEL_174;
    }

LABEL_176:
  }

  else
  {
    if (!sharedDaemonConfig6)
    {
      sharedConfig = [v19[412] sharedConfig];
    }

    shouldLog12 = [sharedConfig shouldLog];
    if ([sharedConfig shouldLogToDisk])
    {
      shouldLog12 |= 2u;
    }

    oSLogObject10 = [sharedConfig OSLogObject];
    if (!os_log_type_enabled(oSLogObject10, OS_LOG_TYPE_DEFAULT))
    {
      shouldLog12 &= 2u;
    }

    if (!shouldLog12)
    {
      goto LABEL_176;
    }

    v113 = objc_opt_class();
    v114 = v113;
    logKey5 = [(PurchaseOperation *)self logKey];
    v129 = 138543618;
    v130 = v113;
    v131 = 2114;
    v132 = logKey5;
    LODWORD(v121) = 22;
    v111 = _os_log_send_and_compose_impl();

LABEL_174:
    if (v111)
    {
      oSLogObject10 = [NSString stringWithCString:v111 encoding:4, &v129, v121];
      free(v111);
      SSFileLog();
      goto LABEL_176;
    }
  }

  context = [(DeviceScorer *)self->_deviceScorer context];
  serverEndpoint = [context serverEndpoint];

  if (serverEndpoint == 2)
  {
    [(DeviceScorer *)self->_deviceScorer didConsumeDeviceScore:[(PurchaseOperation *)self didConsumeScore]];
  }

  v118 = self->_responseInfo;
  self->_responseInfo = 0;

  v6 = v124;
LABEL_180:
}

- (void)operation:(id)operation didAuthenticateWithDSID:(id)d
{
  operationCopy = operation;
  dCopy = d;
  _requestProperties = [operationCopy _requestProperties];
  [_requestProperties URLBagType];
  if (!SSAccountScopeForURLBagType())
  {
    v9 = +[SSAccountStore defaultStore];
    v10 = [v9 accountWithUniqueIdentifier:dCopy scope:0];
    goto LABEL_5;
  }

  v8 = [ACAccountStore ams_sharedAccountStoreForMediaType:AMSAccountMediaTypeAppStoreSandbox];
  v9 = [v8 ams_iTunesAccountWithDSID:dCopy];

  if (v9)
  {
    v10 = [[SSAccount alloc] initWithBackingAccount:v9];
LABEL_5:
    v11 = v10;
    goto LABEL_7;
  }

  v11 = 0;
LABEL_7:

  if (dCopy)
  {
    -[PurchaseOperation _addFairPlayToRequestProperties:withAccountIdentifier:](self, "_addFairPlayToRequestProperties:withAccountIdentifier:", _requestProperties, [dCopy unsignedLongLongValue]);
  }

  popBiometricToken = [v11 popBiometricToken];
  if (!popBiometricToken)
  {
    [operationCopy setIgnorePreexistingSecureToken:0];
  }

  [(PurchaseOperation *)self lock];
  v13 = [popBiometricToken base64EncodedStringWithOptions:0];
  objc_storeStrong(&self->_mToken, v13);
  [(PurchaseResponseInfo *)self->_responseInfo setDidPasswordAuthenticate:[(SSBiometricAuthenticationContext *)self->_biometricAuthenticationContext didFallbackToPassword]];
  [(PurchaseOperation *)self unlock];
  [_requestProperties setValue:v13 forHTTPHeaderField:SSHTTPHeaderXToken];
  v14 = [NSNumber numberWithBool:1];
  [_requestProperties setValue:v14 forRequestParameter:@"hasBeenAuthedForBuy"];

  [(PurchaseOperation *)self lock];
  authenticationContext = self->_authenticationContext;
  if (authenticationContext)
  {
    requiredUniqueIdentifier = [(SSAuthenticationContext *)authenticationContext requiredUniqueIdentifier];

    v17 = 0;
    if (!requiredUniqueIdentifier && v11)
    {
      v17 = [(SSAuthenticationContext *)self->_authenticationContext mutableCopy];
      [v17 setValuesWithAccount:v11];
      v18 = [v17 copy];
      v19 = self->_authenticationContext;
      self->_authenticationContext = v18;
    }
  }

  else
  {
    v17 = 0;
  }

  self->_didAuthenticate = 1;
  [(PurchaseOperation *)self unlock];
  if (v17)
  {
    [operationCopy setAuthenticationContext:v17];
  }
}

- (void)operation:(id)operation shouldAuthenticateWithContext:(id)context responseHandler:(id)handler
{
  contextCopy = context;
  handlerCopy = handler;
  if (![(PurchaseOperation *)self useRemoteAuthentication])
  {
    v8 = SSError();
    handlerCopy[2](handlerCopy, 0, v8);
  }

  remoteAuthenticationHandler = [(PurchaseOperation *)self remoteAuthenticationHandler];
  v10 = remoteAuthenticationHandler;
  if (remoteAuthenticationHandler)
  {
    (*(remoteAuthenticationHandler + 16))(remoteAuthenticationHandler, contextCopy, handlerCopy);
  }

  else
  {
    v11 = SSError();
    handlerCopy[2](handlerCopy, 0, v11);
  }
}

- (void)operation:(id)operation willSendRequest:(id)request
{
  operationCopy = operation;
  requestCopy = request;
  v8 = [requestCopy valueForHTTPHeaderField:SSHTTPHeaderXAppleMD];

  if (!v8)
  {
    _accountIdentifier = [operationCopy _accountIdentifier];
    if (_accountIdentifier)
    {
LABEL_3:
      [_accountIdentifier unsignedLongLongValue];
      SSVAnisetteAddHeadersToURLRequest();

      goto LABEL_4;
    }

    urlBagKey = self->_urlBagKey;
    if (urlBagKey)
    {
      if ([(NSString *)urlBagKey isEqualToString:@"downloadProduct"])
      {
        v11 = +[SSLogConfig sharedDaemonConfig];
        if (!v11)
        {
          v11 = +[SSLogConfig sharedConfig];
        }

        shouldLog = [v11 shouldLog];
        if ([v11 shouldLogToDisk])
        {
          v13 = shouldLog | 2;
        }

        else
        {
          v13 = shouldLog;
        }

        oSLogObject = [v11 OSLogObject];
        if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
        {
          v13 &= 2u;
        }

        if (v13)
        {
          LODWORD(v19) = 138543362;
          *(&v19 + 4) = objc_opt_class();
          v15 = *(&v19 + 4);
          LODWORD(v18) = 12;
          v17 = &v19;
          v16 = _os_log_send_and_compose_impl();

          if (!v16)
          {
LABEL_18:

            _accountIdentifier = &off_10034BC88;
            goto LABEL_3;
          }

          oSLogObject = [NSString stringWithCString:v16 encoding:4, &v19, v18, v19];
          free(v16);
          v17 = oSLogObject;
          SSFileLog();
        }

        goto LABEL_18;
      }
    }
  }

LABEL_4:
}

- (void)sender:(id)sender willSendChallenge:(id)challenge andSignature:(id)signature andPaymentTokenData:(id)data andFpanID:(id)d isExtendedAction:(BOOL)action isPayment:(BOOL)payment additionalHeaders:(id)self0
{
  actionCopy = action;
  senderCopy = sender;
  challengeCopy = challenge;
  signatureCopy = signature;
  dataCopy = data;
  dCopy = d;
  headersCopy = headers;
  if (challengeCopy)
  {
    [(SSBiometricAuthenticationContext *)self->_biometricAuthenticationContext setChallenge:challengeCopy];
  }

  if (signatureCopy)
  {
    [(SSBiometricAuthenticationContext *)self->_biometricAuthenticationContext setSignature:signatureCopy];
  }

  if (dataCopy)
  {
    [(SSBiometricAuthenticationContext *)self->_biometricAuthenticationContext setPaymentTokenData:dataCopy];
  }

  if (dCopy)
  {
    [(SSBiometricAuthenticationContext *)self->_biometricAuthenticationContext setFpanID:dCopy];
  }

  [(SSBiometricAuthenticationContext *)self->_biometricAuthenticationContext setIsExtendedAction:actionCopy];
  [(SSBiometricAuthenticationContext *)self->_biometricAuthenticationContext setIsPayment:payment];
  if (headersCopy)
  {
    v21 = [headersCopy objectForKeyedSubscript:SSHTTPHeaderXAppleAMD];
    if (v21)
    {
      [(SSBiometricAuthenticationContext *)self->_biometricAuthenticationContext setXAppleAMDHeader:v21];
    }

    v22 = [headersCopy objectForKeyedSubscript:SSHTTPHeaderXAppleAMDM];
    if (v22)
    {
      [(SSBiometricAuthenticationContext *)self->_biometricAuthenticationContext setXAppleAMDMHeader:v22];
    }
  }
}

- (id)_account
{
  v3 = +[SSAccountStore defaultStore];
  authenticationContext = [(PurchaseOperation *)self authenticationContext];
  requiredUniqueIdentifier = [authenticationContext requiredUniqueIdentifier];
  if (requiredUniqueIdentifier)
  {
    uniqueIdentifier = requiredUniqueIdentifier;
  }

  else
  {
    activeAccount = [v3 activeAccount];
    uniqueIdentifier = [activeAccount uniqueIdentifier];

    if (!uniqueIdentifier)
    {
      v10 = 0;
      goto LABEL_8;
    }
  }

  accountScope = [authenticationContext accountScope];
  if (!accountScope || ([v3 accountWithUniqueIdentifier:uniqueIdentifier scope:accountScope], (v9 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v9 = [v3 accountWithUniqueIdentifier:uniqueIdentifier];
  }

  v10 = v9;
LABEL_8:

  return v10;
}

- (id)_accountWithUniqueIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    authenticationContext = [(PurchaseOperation *)self authenticationContext];
    accountScope = [authenticationContext accountScope];
    if (!accountScope || (v7 = accountScope, +[SSAccountStore defaultStore](SSAccountStore, "defaultStore"), v8 = objc_claimAutoreleasedReturnValue(), [v8 accountWithUniqueIdentifier:identifierCopy scope:v7], v9 = objc_claimAutoreleasedReturnValue(), v8, !v9))
    {
      v10 = +[SSAccountStore defaultStore];
      v9 = [v10 accountWithUniqueIdentifier:identifierCopy];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_addFairPlayToRequestProperties:(id)properties withAccountIdentifier:(unint64_t)identifier
{
  propertiesCopy = properties;
  if ([(PurchaseOperation *)self _shouldSendKeyBagSyncData])
  {
    v7 = sub_1000B18E8(identifier, 1);
    v8 = [(__CFData *)v7 base64EncodedStringWithOptions:0];
    if (v8)
    {
      [propertiesCopy setValue:v8 forRequestParameter:@"kbsync"];
    }
  }

  v9 = [NSNumber numberWithUnsignedLongLong:identifier];
  MachineDataAddHeadersToRequestProperties();

  v30 = 0;
  v31 = 0;
  v29 = 0;
  sub_1002442DC(-1, &v31, &v29 + 4, &v30, &v29);
  if (v10)
  {
    v11 = v10;
    v12 = +[SSLogConfig sharedDaemonConfig];
    if (!v12)
    {
      v12 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v12 shouldLog];
    if ([v12 shouldLogToDisk])
    {
      v14 = shouldLog | 2;
    }

    else
    {
      v14 = shouldLog;
    }

    oSLogObject = [v12 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
    {
      v16 = v14;
    }

    else
    {
      v16 = v14 & 2;
    }

    if (v16)
    {
      v32 = 134217984;
      v33 = v11;
      LODWORD(v26) = 12;
      v17 = _os_log_send_and_compose_impl();

      if (!v17)
      {
        goto LABEL_35;
      }

      oSLogObject = [NSString stringWithCString:v17 encoding:4, &v32, v26];
      free(v17);
      SSFileLog();
    }

    goto LABEL_34;
  }

  if (HIDWORD(v29))
  {
    v18 = [NSData alloc];
    v12 = [v18 initWithBytesNoCopy:v31 length:HIDWORD(v29) freeWhenDone:0];
  }

  else
  {
    v12 = 0;
  }

  if ([(PurchaseOperation *)self _shouldSendSBSyncData])
  {
    _fairPlaySubscriptionController = [(PurchaseOperation *)self _fairPlaySubscriptionController];
    v27 = 0;
    v28 = 0;
    [_fairPlaySubscriptionController generateSubscriptionBagRequestWithAccountUniqueIdentifier:identifier transactionType:312 machineIDData:v12 returningSubscriptionBagData:&v28 error:&v27];
    v20 = v28;
    v21 = v27;
    if (!v21)
    {
      v22 = [v20 base64EncodedStringWithOptions:0];
      if (v22)
      {
        [propertiesCopy setValue:v22 forRequestParameter:@"sbsync"];
      }
    }
  }

  if (v12)
  {
    v23 = [v12 base64EncodedStringWithOptions:0];
    if (v23)
    {
      [propertiesCopy setValue:v23 forHTTPHeaderField:SSHTTPHeaderXAppleAMDM];
    }
  }

  if (v30)
  {
    v24 = [NSData alloc];
    oSLogObject = [v24 initWithBytesNoCopy:v30 length:v29 freeWhenDone:0];
    v25 = [oSLogObject base64EncodedStringWithOptions:0];
    if (v25)
    {
      [propertiesCopy setValue:v25 forHTTPHeaderField:SSHTTPHeaderXAppleAMD];
    }

LABEL_34:
  }

LABEL_35:

  if (v31)
  {
    sub_100255DC4(v31);
  }

  if (v30)
  {
    sub_100255DC4(v30);
  }
}

- (id)_buyParamProductType
{
  buyParameters = [(PurchaseOperation *)self buyParameters];
  v4 = [NSURL copyDictionaryForQueryString:buyParameters unescapedValues:1];

  v5 = [v4 objectForKeyedSubscript:@"productType"];
  if (![(__CFString *)v5 length]&& [(PurchaseOperation *)self microPayment])
  {

    v5 = @"A";
  }

  if (![(__CFString *)v5 length])
  {
    v6 = +[SSLogConfig sharedDaemonConfig];
    if (!v6)
    {
      v6 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v6 shouldLog];
    if ([v6 shouldLogToDisk])
    {
      v8 = shouldLog | 2;
    }

    else
    {
      v8 = shouldLog;
    }

    oSLogObject = [v6 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v8 &= 2u;
    }

    if (v8)
    {
      LODWORD(v14) = 138543362;
      *(&v14 + 4) = objc_opt_class();
      v10 = *(&v14 + 4);
      LODWORD(v13) = 12;
      v11 = _os_log_send_and_compose_impl();

      if (!v11)
      {
LABEL_16:

        goto LABEL_17;
      }

      oSLogObject = [NSString stringWithCString:v11 encoding:4, &v14, v13, v14];
      free(v11);
      SSFileLog();
    }

    goto LABEL_16;
  }

LABEL_17:

  return v5;
}

- (BOOL)_clientIsViewService
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [&off_10034CC68 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(&off_10034CC68);
        }

        v7 = *(*(&v10 + 1) + 8 * v6);
        clientIdentifier = [(PurchaseOperation *)self clientIdentifier];
        LOBYTE(v7) = [v7 isEqualToString:clientIdentifier];

        if (v7)
        {
          LOBYTE(v3) = 1;
          return v3;
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v3 = [&off_10034CC68 countByEnumeratingWithState:&v10 objects:v14 count:16];
      v4 = v3;
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  return v3;
}

- (void)_continueTouchIDSessionWithDialog:(id)dialog
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  buttons = [dialog buttons];
  v5 = [buttons countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(buttons);
        }

        dictionary = [*(*(&v11 + 1) + 8 * v8) dictionary];
        v10 = [dictionary objectForKey:@"tidContinue"];

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v10 BOOLValue])
        {

          [(SSBiometricAuthenticationContext *)self->_biometricAuthenticationContext setShouldContinueTouchIDSession:1];
          return;
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [buttons countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }
}

- (id)_countryCode
{
  v2 = [ISLoadURLBagOperation alloc];
  v3 = [SSURLBagContext contextWithBagType:0];
  v4 = [v2 initWithBagContext:v3];

  [v4 start];
  uRLBag = [v4 URLBag];
  v6 = uRLBag;
  if (!uRLBag)
  {
    v9 = +[SSLogConfig sharedDaemonConfig];
    if (!v9)
    {
      v9 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v9 shouldLog];
    if ([v9 shouldLogToDisk])
    {
      v16 = shouldLog | 2;
    }

    else
    {
      v16 = shouldLog;
    }

    oSLogObject = [v9 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v16 &= 2u;
    }

    if (v16)
    {
      *v22 = 138543362;
      *&v22[4] = objc_opt_class();
      v18 = *&v22[4];
      LODWORD(v21) = 12;
      v19 = _os_log_send_and_compose_impl();

      if (!v19)
      {
LABEL_24:
        uppercaseString = 0;
        goto LABEL_25;
      }

      oSLogObject = [NSString stringWithCString:v19 encoding:4, v22, v21, *v22, *&v22[8]];
      free(v19);
      SSFileLog();
    }

    goto LABEL_24;
  }

  v7 = [uRLBag valueForKey:@"countryCode"];
  uppercaseString = [v7 uppercaseString];

  v9 = +[SSLogConfig sharedDaemonConfig];
  if (!v9)
  {
    v9 = +[SSLogConfig sharedConfig];
  }

  shouldLog2 = [v9 shouldLog];
  if ([v9 shouldLogToDisk])
  {
    v11 = shouldLog2 | 2;
  }

  else
  {
    v11 = shouldLog2;
  }

  oSLogObject2 = [v9 OSLogObject];
  if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
  {
    v11 &= 2u;
  }

  if (v11)
  {
    *v22 = 138543618;
    *&v22[4] = objc_opt_class();
    *&v22[12] = 2114;
    *&v22[14] = uppercaseString;
    v13 = *&v22[4];
    LODWORD(v21) = 22;
    v14 = _os_log_send_and_compose_impl();

    if (!v14)
    {
      goto LABEL_25;
    }

    oSLogObject2 = [NSString stringWithCString:v14 encoding:4, v22, v21, *v22, *&v22[16]];
    free(v14);
    SSFileLog();
  }

LABEL_25:

  return uppercaseString;
}

- (id)_deviceScoreMetricsParam
{
  if (+[DeviceScorer deviceScoringSupported])
  {
    deviceScore = [(PurchaseOperation *)self deviceScore];
    v4 = [deviceScore length];
    v5 = @"true";
    if (!v4)
    {
      v5 = @"false";
    }

    v6 = v5;
  }

  else
  {
    v6 = @"disabled";
  }

  return v6;
}

- (id)_fairPlaySubscriptionController
{
  [(PurchaseOperation *)self lock];
  if (!self->_fairPlaySubscriptionController)
  {
    v3 = objc_alloc_init(SSVFairPlaySubscriptionController);
    fairPlaySubscriptionController = self->_fairPlaySubscriptionController;
    self->_fairPlaySubscriptionController = v3;
  }

  [(PurchaseOperation *)self unlock];
  v5 = self->_fairPlaySubscriptionController;

  return v5;
}

- (void)_handleFailureForOperation:(id)operation
{
  operationCopy = operation;
  dataProvider = [operationCopy dataProvider];
  output = [dataProvider output];
  v96 = dataProvider;
  redirectActionParameters = [dataProvider redirectActionParameters];
  v8 = [output objectForKey:kISDialogKey];
  v9 = [output objectForKey:kISFailureTypeKey];
  v10 = &selRef_parser_foundUnparsedEntityDeclarationWithName_publicID_systemID_notationName_;
  if ([v9 integerValue] == 3800 && self->_originalProductOwnerAccountDSID)
  {
    [(PurchaseResponseInfo *)self->_responseInfo setShouldRetryWithOriginalProductOwnerAccount:1];
    goto LABEL_90;
  }

  if (redirectActionParameters)
  {
    buyParameters = [(PurchaseOperation *)self buyParameters];
    v12 = [redirectActionParameters isEqualToString:buyParameters];

    if ((v12 & 1) == 0)
    {
      v52 = +[SSLogConfig sharedDaemonConfig];
      if (!v52)
      {
        v52 = +[SSLogConfig sharedConfig];
      }

      v95 = v9;
      shouldLog = [v52 shouldLog];
      if ([v52 shouldLogToDisk])
      {
        v54 = shouldLog | 2;
      }

      else
      {
        v54 = shouldLog;
      }

      oSLogObject = [v52 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
      {
        v56 = v54;
      }

      else
      {
        v56 = v54 & 2;
      }

      if (v56)
      {
        v57 = v8;
        v58 = redirectActionParameters;
        v59 = objc_opt_class();
        v90 = output;
        v60 = v59;
        logKey = [(PurchaseOperation *)self logKey];
        v102 = 138543874;
        v103 = v59;
        redirectActionParameters = v58;
        v8 = v57;
        v104 = 2114;
        v105 = logKey;
        v106 = 2112;
        v107 = redirectActionParameters;
        LODWORD(v82) = 32;
        v81 = &v102;
        v62 = _os_log_send_and_compose_impl();

        output = v90;
        if (v62)
        {
          v63 = [NSString stringWithCString:v62 encoding:4, &v102, v82];
          free(v62);
          v81 = v63;
          SSFileLog();
        }
      }

      else
      {
      }

      [(PurchaseOperation *)self _setChangedBuyParameters:redirectActionParameters fromDataProvider:v96];
      v9 = v95;
      goto LABEL_89;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = [[ISDialog alloc] initWithDialogDictionary:v8];
    authenticationContext = [operationCopy authenticationContext];
    [v13 setAuthenticationContext:authenticationContext];

    v15 = [output objectForKey:@"metrics"];
    v16 = [SSAuthorizationMetricsController dialogIdForMetricsDictionary:v15];
    paymentSheet = [v13 paymentSheet];
    [paymentSheet setDialogId:v16];

    [(PurchaseOperation *)self _continueTouchIDSessionWithDialog:v13];
    if ([v13 kind] == 1)
    {
LABEL_88:

LABEL_89:
      v10 = &selRef_parser_foundUnparsedEntityDeclarationWithName_publicID_systemID_notationName_;
      goto LABEL_90;
    }

    v85 = v15;
    v87 = operationCopy;
    v91 = redirectActionParameters;
    buttons = [v13 buttons];
    v97 = 0u;
    v98 = 0u;
    v99 = 0u;
    v100 = 0u;
    v19 = [buttons countByEnumeratingWithState:&v97 objects:v101 count:16];
    v84 = v16;
    v89 = output;
    v93 = v9;
    if (v19)
    {
      v20 = v19;
      v21 = 0;
      v22 = 0;
      v23 = *v98;
      do
      {
        for (i = 0; i != v20; i = i + 1)
        {
          if (*v98 != v23)
          {
            objc_enumerationMutation(buttons);
          }

          actionType = [*(*(&v97 + 1) + 8 * i) actionType];
          if (actionType == 1)
          {
            v21 = 1;
          }

          else if (actionType == 11 || actionType == 3)
          {
            v22 = 1;
          }
        }

        v20 = [buttons countByEnumeratingWithState:&v97 objects:v101 count:16];
      }

      while (v20);
      v9 = v93;
      if (v22)
      {
        v27 = +[SSLogConfig sharedDaemonConfig];
        if (!v27)
        {
          v27 = +[SSLogConfig sharedConfig];
        }

        shouldLog2 = [v27 shouldLog];
        if ([v27 shouldLogToDisk])
        {
          shouldLog2 |= 2u;
        }

        oSLogObject2 = [v27 OSLogObject];
        if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
        {
          v30 = shouldLog2;
        }

        else
        {
          v30 = shouldLog2 & 2;
        }

        if (v30)
        {
          v31 = objc_opt_class();
          v32 = v31;
          buyParameters2 = [(PurchaseOperation *)self buyParameters];
          v102 = 138412546;
          v103 = v31;
          v104 = 2112;
          v105 = buyParameters2;
          LODWORD(v82) = 22;
          v81 = &v102;
          v34 = _os_log_send_and_compose_impl();

          operationCopy = v87;
          v9 = v93;
          if (!v34)
          {
LABEL_72:

            [(PurchaseResponseInfo *)self->_responseInfo setDialog:v13];
LABEL_87:

            output = v89;
            redirectActionParameters = v91;
            v16 = v84;
            v15 = v85;
            goto LABEL_88;
          }

          oSLogObject2 = [NSString stringWithCString:v34 encoding:4, &v102, v82];
          free(v34);
          v81 = oSLogObject2;
          SSFileLog();
        }

        else
        {
          operationCopy = v87;
          v9 = v93;
        }

        goto LABEL_72;
      }
    }

    else
    {
      v21 = 0;
    }

    error = [(PurchaseOperation *)self error];

    if (!error)
    {
      if (v21)
      {
        v65 = ISError();
        [(PurchaseOperation *)self setError:v65];
      }

      else
      {
        v65 = [output objectForKey:@"customerMessage"];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {

          v65 = 0;
        }

        if (v9)
        {
          [v9 integerValue];
        }

        v66 = SSError();
        [(PurchaseOperation *)self setError:v66];
      }
    }

    v67 = +[SSLogConfig sharedDaemonConfig];
    if (!v67)
    {
      v67 = +[SSLogConfig sharedConfig];
    }

    shouldLog3 = [v67 shouldLog];
    if ([v67 shouldLogToDisk])
    {
      shouldLog3 |= 2u;
    }

    oSLogObject3 = [v67 OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
    {
      v70 = shouldLog3;
    }

    else
    {
      v70 = shouldLog3 & 2;
    }

    if (v70)
    {
      v71 = objc_opt_class();
      v83 = v71;
      buyParameters3 = [(PurchaseOperation *)self buyParameters];
      error2 = [(PurchaseOperation *)self error];
      v102 = 138412802;
      v103 = v71;
      v104 = 2112;
      v105 = buyParameters3;
      v106 = 2112;
      v107 = error2;
      LODWORD(v82) = 32;
      v81 = &v102;
      v74 = _os_log_send_and_compose_impl();

      v9 = v93;
      if (!v74)
      {
LABEL_86:

        [(PurchaseOperation *)self setDisplayedErrorDialog:1];
        v75 = objc_alloc_init(NSUUID);
        uUIDString = [v75 UUIDString];

        v77 = +[ISBiometricStore sharedInstance];
        [v77 addContextToCache:self->_biometricAuthenticationContext withToken:uUIDString];

        [v13 setTouchIDContinueToken:uUIDString];
        v78 = [[DaemonDialogOperation alloc] initWithDialog:v13];
        [(DaemonDialogOperation *)v78 setDisplaysOnLockscreen:self->_displaysOnLockScreen];
        v79 = +[ISOperationQueue mainQueue];
        [v79 addOperation:v78];

        operationCopy = v87;
        goto LABEL_87;
      }

      oSLogObject3 = [NSString stringWithCString:v74 encoding:4, &v102, v82];
      free(v74);
      v81 = oSLogObject3;
      SSFileLog();
    }

    goto LABEL_86;
  }

  v35 = [output objectForKey:@"customerMessage"];
  objc_opt_class();
  v92 = redirectActionParameters;
  v94 = v9;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v36 = [NSBundle bundleForClass:objc_opt_class()];
    v37 = [v36 localizedStringForKey:@"GENERIC_PURCHASE_ERROR" value:&stru_10033CC30 table:0];

    v35 = v37;
  }

  v88 = v35;
  v38 = ISError();
  [(PurchaseOperation *)self setError:v38];

  v39 = +[SSLogConfig sharedDaemonConfig];
  if (!v39)
  {
    v39 = +[SSLogConfig sharedConfig];
  }

  shouldLog4 = [v39 shouldLog];
  if ([v39 shouldLogToDisk])
  {
    v41 = shouldLog4 | 2;
  }

  else
  {
    v41 = shouldLog4;
  }

  oSLogObject4 = [v39 OSLogObject];
  if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
  {
    v43 = v41;
  }

  else
  {
    v43 = v41 & 2;
  }

  if (v43)
  {
    v44 = objc_opt_class();
    v86 = v44;
    logKey2 = [(PurchaseOperation *)self logKey];
    [(PurchaseOperation *)self buyParameters];
    v46 = output;
    v47 = v8;
    v49 = v48 = operationCopy;
    v102 = 138544130;
    v103 = v44;
    v104 = 2114;
    v105 = logKey2;
    v106 = 2112;
    v9 = v94;
    v107 = v94;
    v108 = 2112;
    v109 = v49;
    LODWORD(v82) = 42;
    v81 = &v102;
    v50 = _os_log_send_and_compose_impl();

    operationCopy = v48;
    v8 = v47;
    output = v46;
    v10 = &selRef_parser_foundUnparsedEntityDeclarationWithName_publicID_systemID_notationName_;

    if (v50)
    {
      v51 = [NSString stringWithCString:v50 encoding:4, &v102, v82];
      free(v50);
      v81 = v51;
      SSFileLog();
    }
  }

  else
  {

    v9 = v94;
  }

  redirectActionParameters = v92;
LABEL_90:
  [*&self->ISOperation_opaque[*(v10 + 261)] setMachineDataSyncState:{0, v81}];
  response = [operationCopy response];
  [(PurchaseOperation *)self _performMachineDataActionForURLResponse:response];
}

- (id)_newPurchaseRequestOperation
{
  v3 = objc_alloc_init(ISStoreURLOperation);
  [v3 setDelegate:self];
  logKey = [(PurchaseOperation *)self logKey];
  [v3 setLogKey:logKey];

  [v3 setMachineDataStyle:0];
  [v3 setShouldCancelBiometricTokenUpdate:self->_shouldCancelBiometricTokenUpdate];
  [v3 setShouldSendXTokenHeader:1];
  [v3 setTracksPerformanceMetrics:1];
  [v3 setUseUserSpecificURLBag:1];
  authenticationContext = [(PurchaseOperation *)self authenticationContext];
  v6 = [authenticationContext mutableCopy];

  if (!v6)
  {
    v7 = [SSMutableAuthenticationContext alloc];
    v8 = +[SSAccountStore defaultStore];
    activeAccount = [v8 activeAccount];
    v6 = [v7 initWithAccount:activeAccount];

    logKey2 = [(PurchaseOperation *)self logKey];
    [v6 setLogUUID:logKey2];
  }

  [v6 setAllowsBootstrapCellularData:{-[PurchaseOperation allowsBootstrapCellularData](self, "allowsBootstrapCellularData")}];
  [v6 setDisplaysOnLockScreen:self->_displaysOnLockScreen];
  urlBagKey = [(PurchaseOperation *)self urlBagKey];
  v12 = [urlBagKey isEqualToString:@"updateProduct"];

  if (v12)
  {
    [v6 setCanSetActiveAccount:0];
  }

  if ([(PurchaseOperation *)self isMoveToiOS])
  {
    v13 = +[SSLogConfig sharedAccountsAuthenticationConfig];
    if (!v13)
    {
      v13 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v13 shouldLog];
    if ([v13 shouldLogToDisk])
    {
      v15 = shouldLog | 2;
    }

    else
    {
      v15 = shouldLog;
    }

    oSLogObject = [v13 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v17 = v15;
    }

    else
    {
      v17 = v15 & 2;
    }

    if (v17)
    {
      v18 = objc_opt_class();
      v136 = 138543362;
      v137 = v18;
      LODWORD(v124) = 12;
      v120 = &v136;
      v19 = _os_log_send_and_compose_impl();

      if (!v19)
      {
LABEL_18:

        [v6 setShouldIgnoreAccountConversion:1];
        goto LABEL_19;
      }

      oSLogObject = [NSString stringWithCString:v19 encoding:4, &v136, v124];
      free(v19);
      v120 = oSLogObject;
      SSFileLog();
    }

    goto LABEL_18;
  }

LABEL_19:
  clientIdentifier = SSClientIdentifierForDownloadKind();
  if (!clientIdentifier)
  {
    if ([(PurchaseOperation *)self _clientIsViewService])
    {
      clientIdentifier = [(PurchaseOperation *)self clientIdentifier];
    }

    else
    {
      clientIdentifier = 0;
    }
  }

  v132 = clientIdentifier;
  [v6 setPreferredITunesStoreClient:{clientIdentifier, v120}];
  buyParameters = [(PurchaseOperation *)self buyParameters];
  v134 = v6;
  v135 = v3;
  if (buyParameters)
  {
    v22 = buyParameters;
    v23 = [[NSDictionary alloc] initWithObjectsAndKeys:{buyParameters, @"product", 0}];
    [v6 setSignupRequestParameters:v23];
    [(PurchaseOperation *)self lock];
    paymentTokenData = [(SSBiometricAuthenticationContext *)self->_biometricAuthenticationContext paymentTokenData];
    [(PurchaseOperation *)self unlock];
    if (!paymentTokenData)
    {
      goto LABEL_38;
    }

    v25 = +[SSLogConfig sharedDaemonConfig];
    if (!v25)
    {
      v25 = +[SSLogConfig sharedConfig];
    }

    shouldLog2 = [v25 shouldLog];
    if ([v25 shouldLogToDisk])
    {
      v27 = shouldLog2 | 2;
    }

    else
    {
      v27 = shouldLog2;
    }

    oSLogObject2 = [v25 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v29 = v27;
    }

    else
    {
      v29 = v27 & 2;
    }

    if (v29)
    {
      v30 = objc_opt_class();
      v136 = 138543362;
      v137 = v30;
      LODWORD(v124) = 12;
      v122 = &v136;
      v31 = _os_log_send_and_compose_impl();

      if (!v31)
      {
LABEL_37:

        [paymentTokenData bytes];
        [paymentTokenData length];
        v32 = ISCopyEncodedBase64();
        v33 = [NSURL copyDictionaryForQueryString:v22 unescapedValues:1];
        [v33 setObject:v32 forKeyedSubscript:@"pkPayment"];
        v34 = [NSURL queryStringForDictionary:v33 escapedValues:1];

        [(PurchaseOperation *)self lock];
        [(PurchaseOperation *)self setBuyParameters:v34];
        [(PurchaseOperation *)self unlock];

        v22 = v34;
        v3 = v135;
LABEL_38:
        fpanID = [(SSBiometricAuthenticationContext *)self->_biometricAuthenticationContext fpanID];
        if (!fpanID)
        {
LABEL_52:

          v6 = v134;
          goto LABEL_53;
        }

        v36 = +[SSLogConfig sharedDaemonConfig];
        if (!v36)
        {
          v36 = +[SSLogConfig sharedConfig];
        }

        shouldLog3 = [v36 shouldLog];
        if ([v36 shouldLogToDisk])
        {
          v38 = shouldLog3 | 2;
        }

        else
        {
          v38 = shouldLog3;
        }

        oSLogObject3 = [v36 OSLogObject];
        if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
        {
          v40 = v38;
        }

        else
        {
          v40 = v38 & 2;
        }

        if (v40)
        {
          v41 = objc_opt_class();
          v136 = 138543362;
          v137 = v41;
          LODWORD(v124) = 12;
          v121 = &v136;
          v42 = _os_log_send_and_compose_impl();

          if (!v42)
          {
LABEL_51:

            v43 = [NSURL copyDictionaryForQueryString:v22 unescapedValues:1];
            [v43 setObject:fpanID forKeyedSubscript:@"fpanID"];
            v44 = [NSURL queryStringForDictionary:v43 escapedValues:1];

            [(PurchaseOperation *)self lock];
            [(PurchaseOperation *)self setBuyParameters:v44];
            [(PurchaseOperation *)self unlock];

            v22 = v44;
            v3 = v135;
            goto LABEL_52;
          }

          oSLogObject3 = [NSString stringWithCString:v42 encoding:4, &v136, v124];
          free(v42);
          v121 = oSLogObject3;
          SSFileLog();
        }

        goto LABEL_51;
      }

      oSLogObject2 = [NSString stringWithCString:v31 encoding:4, &v136, v124];
      free(v31);
      v122 = oSLogObject2;
      SSFileLog();
    }

    goto LABEL_37;
  }

LABEL_53:
  hTTPHeaders = [(SSURLRequestProperties *)self->_requestProperties HTTPHeaders];
  v46 = SSHTTPHeaderUserAgent;
  v47 = [hTTPHeaders objectForKey:SSHTTPHeaderUserAgent];

  if (v47)
  {
    [v6 setValue:v47 forHTTPHeaderField:v46];
  }

  ShouldRequirePasswordImmediately = SSRestrictionsShouldRequirePasswordImmediately();
  requestParameters = [v6 requestParameters];
  v50 = [requestParameters mutableCopy];

  if (!v50)
  {
    v50 = objc_alloc_init(NSMutableDictionary);
  }

  v131 = v47;
  v51 = [NSNumber numberWithBool:ShouldRequirePasswordImmediately];
  [v50 setObject:v51 forKey:@"requirePasswordImmediately"];

  [v6 setRequestParameters:v50];
  [(PurchaseOperation *)self lock];
  v52 = [(PurchaseOperation *)self isPreauthenticated]|| self->_didAuthenticate;
  [(PurchaseOperation *)self unlock];
  [v3 setNeedsAuthentication:{-[PurchaseOperation _shouldUseClientAuthentication](self, "_shouldUseClientAuthentication")}];
  if (self->_requiresAuthentication && !v52)
  {
    [v3 setNeedsAuthentication:1];
  }

  if (self->_suppressDialogs)
  {
    v53 = 1000;
LABEL_65:
    [v6 setPromptStyle:{v53, v123}];
    goto LABEL_67;
  }

  if (!v52 && !self->_ignoresForcedPasswordRestriction && ((ShouldRequirePasswordImmediately ^ 1) & 1) == 0)
  {
    v110 = +[SSLogConfig sharedDaemonConfig];
    if (!v110)
    {
      v110 = +[SSLogConfig sharedConfig];
    }

    shouldLog4 = [v110 shouldLog];
    if ([v110 shouldLogToDisk])
    {
      v112 = shouldLog4 | 2;
    }

    else
    {
      v112 = shouldLog4;
    }

    oSLogObject4 = [v110 OSLogObject];
    if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_INFO))
    {
      v114 = v112;
    }

    else
    {
      v114 = v112 & 2;
    }

    if (v114)
    {
      v115 = objc_opt_class();
      v136 = 138412290;
      v137 = v115;
      LODWORD(v124) = 12;
      v123 = &v136;
      v116 = _os_log_send_and_compose_impl();

      if (!v116)
      {
LABEL_134:

        v53 = 1;
        [v3 setNeedsAuthentication:1];
        goto LABEL_65;
      }

      oSLogObject4 = [NSString stringWithCString:v116 encoding:4, &v136, v124];
      free(v116);
      v123 = oSLogObject4;
      SSFileLog();
    }

    goto LABEL_134;
  }

LABEL_67:
  _newRequestParameters = [(PurchaseOperation *)self _newRequestParameters];
  v54 = [_newRequestParameters objectForKey:@"disableTouchID"];
  bOOLValue = [v54 BOOLValue];

  v56 = &selRef_parser_foundUnparsedEntityDeclarationWithName_publicID_systemID_notationName_;
  if (bOOLValue || [(PurchaseResponseInfo *)self->_responseInfo didPasswordAuthenticate]|| [(PurchaseOperation *)self isPreauthenticated])
  {
    [v3 setIgnorePreexistingSecureToken:0];
  }

  else
  {
    v117 = objc_alloc_init(DaemonBiometricStore);
    if ([(DaemonBiometricStore *)v117 biometricState]== 2)
    {
      v118 = +[MCProfileConnection sharedConnection];
      if ([v118 isPasscodeSet])
      {
        identityMap = [(DaemonBiometricStore *)v117 identityMap];
        [v3 setIgnorePreexistingSecureToken:{objc_msgSend(identityMap, "count") != 0}];

        v56 = &selRef_parser_foundUnparsedEntityDeclarationWithName_publicID_systemID_notationName_;
      }

      else
      {
        [v3 setIgnorePreexistingSecureToken:0];
      }
    }

    else
    {
      [v3 setIgnorePreexistingSecureToken:0];
    }
  }

  v57 = objc_alloc_init(DaemonBiometricStore);
  identityMap2 = [(DaemonBiometricStore *)v57 identityMap];
  v129 = v57;
  if ([identityMap2 count])
  {
    biometricState = [(DaemonBiometricStore *)v57 biometricState];

    if (biometricState == 2)
    {
      didPasswordAuthenticate = [*&self->ISOperation_opaque[*(v56 + 261)] didPasswordAuthenticate];
      goto LABEL_76;
    }
  }

  else
  {
  }

  didPasswordAuthenticate = 0;
LABEL_76:
  biometricAuthenticationContext = [v3 biometricAuthenticationContext];
  [biometricAuthenticationContext setShouldSendFallbackHeader:didPasswordAuthenticate];

  [v3 setBiometricSessionDelegate:self];
  if ([(SSBiometricAuthenticationContext *)self->_biometricAuthenticationContext shouldContinueTouchIDSession])
  {
    challenge = [(SSBiometricAuthenticationContext *)self->_biometricAuthenticationContext challenge];
    signature = [(SSBiometricAuthenticationContext *)self->_biometricAuthenticationContext signature];
    didFallbackToPassword = [(SSBiometricAuthenticationContext *)self->_biometricAuthenticationContext didFallbackToPassword];
    isExtendedAction = [(SSBiometricAuthenticationContext *)self->_biometricAuthenticationContext isExtendedAction];
    isPayment = [(SSBiometricAuthenticationContext *)self->_biometricAuthenticationContext isPayment];
    biometricAuthenticationContext2 = [v3 biometricAuthenticationContext];
    [biometricAuthenticationContext2 setChallenge:challenge];

    biometricAuthenticationContext3 = [v135 biometricAuthenticationContext];
    [biometricAuthenticationContext3 setSignature:signature];

    biometricAuthenticationContext4 = [v135 biometricAuthenticationContext];
    [biometricAuthenticationContext4 setIsExtendedAction:isExtendedAction];

    v3 = v135;
    biometricAuthenticationContext5 = [v135 biometricAuthenticationContext];
    [biometricAuthenticationContext5 setIsPayment:isPayment];

    if (didFallbackToPassword)
    {
      biometricAuthenticationContext6 = [v135 biometricAuthenticationContext];
      [biometricAuthenticationContext6 setDidFallbackToPassword:1];

      biometricAuthenticationContext7 = [v135 biometricAuthenticationContext];
      [biometricAuthenticationContext7 setShouldSendFallbackHeader:1];
    }

    v6 = v134;
    v56 = &selRef_parser_foundUnparsedEntityDeclarationWithName_publicID_systemID_notationName_;
  }

  v130 = v50;
  _buyParamProductType = [(PurchaseOperation *)self _buyParamProductType];
  v74 = [_buyParamProductType isEqualToString:@"A"];

  if (v74)
  {
    biometricAuthenticationContext8 = [v3 biometricAuthenticationContext];
    [biometricAuthenticationContext8 setTouchIDDelayEnabled:1];
  }

  v76 = objc_alloc_init(PurchaseProtocolDataProvider);
  [(PurchaseProtocolDataProvider *)v76 setAuthenticationContext:v6];
  [(PurchaseProtocolDataProvider *)v76 setBiometricSessionDelegate:v3];
  [(PurchaseProtocolDataProvider *)v76 setShouldProcessDialogs:0];
  [(PurchaseProtocolDataProvider *)v76 setShouldTriggerDownloads:0];
  [(PurchaseProtocolDataProvider *)v76 setBiometricAuthenticationContext:self->_biometricAuthenticationContext];
  [v3 setDataProvider:v76];
  v77 = [(SSURLRequestProperties *)self->_requestProperties mutableCopy];
  if (!v77)
  {
    v77 = objc_alloc_init(SSMutableURLRequestProperties);
  }

  [v77 setAllowedRetryCount:0];
  [v77 setAllowsBootstrapCellularData:{-[PurchaseOperation allowsBootstrapCellularData](self, "allowsBootstrapCellularData")}];
  [v77 setCachePolicy:1];
  clientAuditTokenData = [(PurchaseOperation *)self clientAuditTokenData];
  [v77 setClientAuditTokenData:clientAuditTokenData];

  [v77 setHTTPMethod:@"POST"];
  [v77 setRequestParameters:_newRequestParameters];
  [v77 setShouldDecodeResponse:0];
  [v77 setShouldDisableReversePush:{-[PurchaseOperation _shouldDisableReversePush](self, "_shouldDisableReversePush")}];
  [v77 setShouldDisableReversePushSampling:1];
  [v77 setURLBagType:{-[PurchaseOperation bagType](self, "bagType")}];
  [v77 setValue:@"application/x-apple-plist" forHTTPHeaderField:@"Content-Type"];
  v79 = +[ApplicationWorkspace defaultWorkspace];
  isMultiUser = [v79 isMultiUser];

  if (isMultiUser)
  {
    [v77 setValue:@"true" forHTTPHeaderField:SSHTTPHeaderXAppleMMeMultiUser];
  }

  v81 = objc_alloc_init(NSMutableDictionary);
  _deviceScoreMetricsParam = [(PurchaseOperation *)self _deviceScoreMetricsParam];
  if ([_deviceScoreMetricsParam length])
  {
    [v81 setObject:_deviceScoreMetricsParam forKeyedSubscript:@"deviceScore"];
  }

  _buyParamProductType2 = [(PurchaseOperation *)self _buyParamProductType];
  if ([_buyParamProductType2 length])
  {
    [v81 setObject:_buyParamProductType2 forKeyedSubscript:@"purchaseProductType"];
  }

  if ([v81 count])
  {
    [v77 setAdditionalMetrics:v81];
  }

  v127 = _deviceScoreMetricsParam;
  v128 = v81;
  v84 = *(v56 + 261);
  redirectURL = [*&self->ISOperation_opaque[v84] redirectURL];
  if (redirectURL)
  {
    [v77 setURL:redirectURL];
  }

  v125 = redirectURL;
  clientIdentifier2 = [v77 clientIdentifier];

  if (!clientIdentifier2)
  {
    clientIdentifierHeader = [(PurchaseOperation *)self clientIdentifierHeader];
    [v77 setClientIdentifier:clientIdentifierHeader];
  }

  if (([v77 canBeResolved] & 1) == 0)
  {
    urlBagKey2 = [(PurchaseOperation *)self urlBagKey];
    [v77 setURLBagKey:urlBagKey2];
  }

  _account = [(PurchaseOperation *)self _account];
  v90 = _account;
  if (_account)
  {
    uniqueIdentifier = [_account uniqueIdentifier];
    -[PurchaseOperation _addFairPlayToRequestProperties:withAccountIdentifier:](self, "_addFairPlayToRequestProperties:withAccountIdentifier:", v77, [uniqueIdentifier unsignedLongLongValue]);
  }

  v126 = _buyParamProductType2;
  v92 = +[WiFiManager sharedWiFiManager];
  iPAddress = [v92 IPAddress];

  if (iPAddress)
  {
    [v77 setValue:iPAddress forHTTPHeaderField:@"X-Apple-Client-Address"];
  }

  if (+[SSDevice deviceIsInternalBuild])
  {
    v94 = +[NSUUID UUID];
    uUIDString = [v94 UUIDString];
    [v77 setValue:uUIDString forHTTPHeaderField:@"X-Apple-Purchase-UUID"];
  }

  hTTPHeaders2 = [v77 HTTPHeaders];
  v97 = SSHTTPHeaderXAppleTADevice;
  v98 = [hTTPHeaders2 objectForKeyedSubscript:SSHTTPHeaderXAppleTADevice];

  if (!v98)
  {
    v99 = +[SSDevice currentDevice];
    thinnedApplicationVariantIdentifier = [v99 thinnedApplicationVariantIdentifier];

    if (thinnedApplicationVariantIdentifier)
    {
      [v77 setValue:thinnedApplicationVariantIdentifier forHTTPHeaderField:v97];
    }
  }

  machineDataSyncState = [*&self->ISOperation_opaque[v84] machineDataSyncState];
  if (machineDataSyncState)
  {
    _shouldSendSBSyncData = [(PurchaseOperation *)self _shouldSendSBSyncData];
    v103 = &SSHTTPHeaderXAppleAMDS;
    if (!_shouldSendSBSyncData)
    {
      v103 = &SSHTTPHeaderXAppleMDS;
    }

    [v77 setValue:machineDataSyncState forHTTPHeaderField:*v103];
  }

  [(PurchaseOperation *)self lock];
  mToken = self->_mToken;
  v105 = v134;
  if (mToken)
  {
    [v77 setValue:mToken forHTTPHeaderField:SSHTTPHeaderXToken];
  }

  [(PurchaseOperation *)self unlock];
  [v135 setAuthenticationContext:v134];
  [v135 setRequestProperties:v77];
  if ([(PurchaseOperation *)self isMoveToiOS])
  {
    [v135 setNeedsTermsAndConditionsAcceptance:1];
    v106 = +[SSAccountStore defaultStore];
    activeAccount2 = [v106 activeAccount];

    if (!activeAccount2 || ([activeAccount2 isAuthenticated] & 1) == 0)
    {
      [v135 setNeedsAuthentication:1];
    }

    v105 = v134;
  }

  v108 = v135;

  return v108;
}

- (id)_newRequestParameters
{
  buyParameters = [(PurchaseOperation *)self buyParameters];
  v4 = [NSURL copyDictionaryForQueryString:buyParameters unescapedValues:1];

  [v4 removeObjectForKey:@"isUpdateAll"];
  v5 = +[ISDevice sharedInstance];
  guid = [v5 guid];

  if (guid)
  {
    [v4 setObject:guid forKey:@"guid"];
  }

  if ([(PurchaseOperation *)self requiresSerialNumber])
  {
    v7 = +[ISDevice sharedInstance];
    serialNumber = [v7 serialNumber];

    if (serialNumber)
    {
      [v4 setObject:serialNumber forKey:@"serialNumber"];
      guid = serialNumber;
    }

    else
    {
      guid = 0;
    }
  }

  if ([(PurchaseOperation *)self isBackgroundPurchase])
  {
    [v4 setObject:@"1" forKey:@"is-background"];
  }

  affiliateIdentifier = [(PurchaseOperation *)self affiliateIdentifier];

  if ([affiliateIdentifier length])
  {
    [v4 setObject:affiliateIdentifier forKey:@"caller"];
  }

  v10 = [v4 objectForKey:@"generateBuyParams"];

  if (v10)
  {
    v11 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v10 BOOLValue]);
    [v4 setObject:v11 forKey:@"generateBuyParams"];
  }

  if ([(PurchaseOperation *)self isPlaybackRequest])
  {
    [v4 setObject:@"1" forKey:@"playback"];
  }

  if (qword_100383DB8 != -1)
  {
    sub_100271EDC();
  }

  if ((byte_100383DB0 & 1) == 0)
  {
    ISWeakLinkerLoadLibrary();
    v12 = objc_alloc_init(ACAccountStore);
    aa_primaryAppleAccount = [v12 aa_primaryAppleAccount];
    if ([aa_primaryAppleAccount isEnabledForDataclass:kAccountDataclassBackup])
    {
      [v4 setObject:@"1" forKey:@"icloud-backup-enabled"];
    }
  }

  _account = [(PurchaseOperation *)self _account];
  creditsString = [_account creditsString];

  if ([creditsString length])
  {
    [v4 setObject:creditsString forKey:@"creditDisplay"];
  }

  deviceScore = [(PurchaseOperation *)self deviceScore];

  if (deviceScore)
  {
    v43 = creditsString;
    context = [(DeviceScorer *)self->_deviceScorer context];
    serverEndpoint = [context serverEndpoint];

    v19 = @"afds";
    if (serverEndpoint == 2)
    {
      v19 = @"afdsv2";
    }

    v20 = v19;
    deviceScore2 = [(PurchaseOperation *)self deviceScore];
    [v4 setObject:deviceScore2 forKey:v20];

    [(PurchaseOperation *)self setDidConsumeScore:1];
    v22 = +[SSLogConfig sharedDaemonConfig];
    if (!v22)
    {
      v22 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v22 shouldLog];
    if ([v22 shouldLogToDisk])
    {
      v24 = shouldLog | 2;
    }

    else
    {
      v24 = shouldLog;
    }

    oSLogObject = [v22 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
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
      v40 = v27;
      v28 = SSHashIfNeeded();
      [NSNumber numberWithInteger:serverEndpoint];
      v29 = v41 = v20;
      [(PurchaseOperation *)self deviceScore];
      v30 = v42 = _account;
      v31 = SSHashIfNeeded();
      v46 = 138544130;
      v47 = v27;
      v48 = 2114;
      v49 = v28;
      v32 = v28;
      v50 = 2114;
      v51 = v29;
      v52 = 2114;
      v53 = v31;
      LODWORD(v39) = 42;
      v38 = &v46;
      v33 = _os_log_send_and_compose_impl();

      _account = v42;
      v20 = v41;

      if (v33)
      {
        v34 = [NSString stringWithCString:v33 encoding:4, &v46, v39];
        free(v33);
        v38 = v34;
        SSFileLog();
      }
    }

    else
    {
    }

    creditsString = v43;
  }

  requestParameters = [(SSURLRequestProperties *)self->_requestProperties requestParameters];
  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = sub_1000A68B4;
  v44[3] = &unk_100327658;
  v36 = v4;
  v45 = v36;
  [requestParameters enumerateKeysAndObjectsUsingBlock:v44];

  return v36;
}

- (void)_performDelayedGotoForOperation:(id)operation
{
  dataProvider = [operation dataProvider];
  output = [dataProvider output];
  v5 = [DelayedGotoSemaphore alloc];
  v6 = [output objectForKey:@"DelayedGoto"];
  v7 = [(DelayedGotoSemaphore *)v5 initWithDelayedGoto:v6];

  [(DelayedGotoSemaphore *)v7 wait];
  bodyDictionary = [(DelayedGotoSemaphore *)v7 bodyDictionary];
  if (bodyDictionary)
  {
    v9 = [NSURL queryStringForDictionary:bodyDictionary escapedValues:0];
    [(PurchaseOperation *)self _setChangedBuyParameters:v9 fromDataProvider:dataProvider];
  }

  v10 = [(DelayedGotoSemaphore *)v7 URL];
  if (v10)
  {
    [(PurchaseResponseInfo *)self->_responseInfo setRedirectURL:v10];
  }

  [(PurchaseResponseInfo *)self->_responseInfo setShouldRetryForDelayedGoto:1];
}

- (void)_performMachineDataActionForURLResponse:(id)response
{
  responseCopy = response;
  v5 = [[SSMachineDataRequest alloc] initWithURLResponse:responseCopy];

  if (!v5)
  {
    goto LABEL_23;
  }

  authenticatedAccountDSID = [(PurchaseOperation *)self authenticatedAccountDSID];
  [v5 setAccountIdentifier:authenticatedAccountDSID];
  [v5 setAllowsBootstrapCellularData:{-[PurchaseOperation allowsBootstrapCellularData](self, "allowsBootstrapCellularData")}];
  v7 = [[ISMachineDataActionOperation alloc] initWithMachineDataRequest:v5];
  [v7 setBlocksPurchaseRequests:0];
  [v7 setHidesServerDrivenDialogs:self->_suppressDialogs];
  hTTPHeaders = [(SSURLRequestProperties *)self->_requestProperties HTTPHeaders];
  v9 = [hTTPHeaders objectForKey:SSHTTPHeaderUserAgent];
  [v7 setUserAgent:v9];

  actionName = [v5 actionName];
  v11 = +[SSLogConfig sharedDaemonConfig];
  if (!v11)
  {
    v11 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v11 shouldLog];
  if ([v11 shouldLogToDisk])
  {
    v13 = shouldLog | 2;
  }

  else
  {
    v13 = shouldLog;
  }

  oSLogObject = [v11 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
  {
    v15 = v13;
  }

  else
  {
    v15 = v13 & 2;
  }

  v25 = authenticatedAccountDSID;
  if (!v15)
  {
    goto LABEL_13;
  }

  v26 = 138412802;
  v27 = objc_opt_class();
  v28 = 2112;
  v29 = actionName;
  v30 = 2112;
  v31 = authenticatedAccountDSID;
  v16 = v27;
  LODWORD(v24) = 32;
  v23 = &v26;
  v17 = _os_log_send_and_compose_impl();

  if (v17)
  {
    oSLogObject = [NSString stringWithCString:v17 encoding:4, &v26, v24];
    free(v17);
    v23 = oSLogObject;
    SSFileLog();
LABEL_13:
  }

  [(PurchaseOperation *)self runSubOperation:v7 returningError:0];
  success = [v7 success];
  syncState = [v7 syncState];
  [(PurchaseResponseInfo *)self->_responseInfo setMachineDataSyncState:syncState];
  [(PurchaseResponseInfo *)self->_responseInfo setShouldRetryForMachineData:(syncState != 0) | (success & 1), v23];
  if ([(PurchaseResponseInfo *)self->_responseInfo shouldRetryForMachineData])
  {
    challenge = [(SSBiometricAuthenticationContext *)self->_biometricAuthenticationContext challenge];
    signature = [(SSBiometricAuthenticationContext *)self->_biometricAuthenticationContext signature];
    v22 = signature;
    if (challenge && signature)
    {
      [(SSBiometricAuthenticationContext *)self->_biometricAuthenticationContext setShouldContinueTouchIDSession:1];
    }
  }

  if ((success & 1) != 0 && [actionName isEqualToString:@"RP"])
  {
    [(PurchaseResponseInfo *)self->_responseInfo setMachineDataRetryCount:-1];
  }

LABEL_23:
}

- (void)_performApplePayClassicCheck
{
  _countryCode = [(PurchaseOperation *)self _countryCode];
  v4 = &CFDictionaryGetValue_ptr;
  if (_countryCode)
  {
    v5 = +[ISBiometricStore applePayClassicNetworks];
    if (v5)
    {
      v6 = [NSSet setWithArray:v5];
      v7 = +[ISBiometricStore sharedInstance];
      biometricState = [v7 biometricState];

      if (biometricState == 2)
      {
        v72 = v6;
        v73 = _countryCode;
        v9 = objc_alloc_init(SSBiometricAuthenticationContext);
        authenticatedAccountDSID = [(PurchaseOperation *)self authenticatedAccountDSID];
        [v9 setAccountIdentifier:authenticatedAccountDSID];

        [v9 setIsPayment:1];
        v11 = +[DaemonBiometricKeychain sharedInstance];
        v71 = v9;
        v12 = [v11 copyAccessControlListForPrivateKeyWithBiometricAuthenticationContext:v9 error:0];

        v13 = &CFDictionaryGetValue_ptr;
        v14 = [AMSBiometrics isActionSupported:4 withAccessControl:v12];
        v15 = +[SSLogConfig sharedDaemonConfig];
        if (!v15)
        {
          v15 = +[SSLogConfig sharedConfig];
        }

        shouldLog = [v15 shouldLog];
        if ([v15 shouldLogToDisk])
        {
          v17 = shouldLog | 2;
        }

        else
        {
          v17 = shouldLog;
        }

        oSLogObject = [v15 OSLogObject];
        if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
        {
          v19 = v17;
        }

        else
        {
          v19 = v17 & 2;
        }

        if (v19)
        {
          v20 = v12;
          v21 = objc_opt_class();
          v22 = v21;
          v23 = [NSNumber numberWithBool:v14];
          v74 = 138543618;
          v75 = v21;
          v12 = v20;
          v4 = &CFDictionaryGetValue_ptr;
          v76 = 2114;
          v77 = v23;
          LODWORD(v70) = 22;
          v68 = &v74;
          v24 = _os_log_send_and_compose_impl();

          v13 = &CFDictionaryGetValue_ptr;
          if (v24)
          {
            v25 = [NSString stringWithCString:v24 encoding:4, &v74, v70];
            free(v24);
            v68 = v25;
            SSFileLog();
          }
        }

        else
        {
        }

        if (v14)
        {
          v6 = v72;
          if (v12)
          {
            CFRelease(v12);
          }

          sharedDaemonConfig = [v4[412] sharedDaemonConfig];
          if (!sharedDaemonConfig)
          {
            sharedDaemonConfig = [v4[412] sharedConfig];
          }

          shouldLog2 = [sharedDaemonConfig shouldLog];
          if ([sharedDaemonConfig shouldLogToDisk])
          {
            shouldLog2 |= 2u;
          }

          oSLogObject2 = [sharedDaemonConfig OSLogObject];
          if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
          {
            v47 = shouldLog2;
          }

          else
          {
            v47 = shouldLog2 & 2;
          }

          if (v47)
          {
            v48 = objc_opt_class();
            v49 = v48;
            v50 = [NSNumber numberWithBool:0];
            v74 = 138543618;
            v75 = v48;
            v76 = 2114;
            v77 = v50;
            LODWORD(v70) = 22;
            v69 = &v74;
            v51 = _os_log_send_and_compose_impl();

            _countryCode = v73;
            if (!v51)
            {
              goto LABEL_78;
            }

            oSLogObject2 = [NSString stringWithCString:v51 encoding:4, &v74, v70];
            free(v51);
            v69 = oSLogObject2;
            SSFileLog();
          }

          else
          {
            _countryCode = v73;
          }

LABEL_78:
          sharedDaemonConfig2 = [v4[412] sharedDaemonConfig];
          if (!sharedDaemonConfig2)
          {
            sharedDaemonConfig2 = [v4[412] sharedConfig];
          }

          shouldLog3 = [sharedDaemonConfig2 shouldLog];
          if ([sharedDaemonConfig2 shouldLogToDisk])
          {
            v62 = shouldLog3 | 2;
          }

          else
          {
            v62 = shouldLog3;
          }

          oSLogObject3 = [sharedDaemonConfig2 OSLogObject];
          if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
          {
            v64 = v62;
          }

          else
          {
            v64 = v62 & 2;
          }

          if (v64)
          {
            v65 = objc_opt_class();
            v74 = 138543362;
            v75 = v65;
            v66 = v65;
            LODWORD(v70) = 12;
            v67 = _os_log_send_and_compose_impl();

            if (!v67)
            {
LABEL_95:

              goto LABEL_96;
            }

            oSLogObject3 = [NSString stringWithCString:v67 encoding:4, &v74, v70];
            free(v67);
            SSFileLog();
          }

          goto LABEL_95;
        }

        sharedDaemonConfig2 = [v13[212] ACLVersionForAccessControl:v12];
        sharedDaemonConfig3 = [v4[412] sharedDaemonConfig];
        if (!sharedDaemonConfig3)
        {
          sharedDaemonConfig3 = [v4[412] sharedConfig];
        }

        shouldLog4 = [sharedDaemonConfig3 shouldLog];
        if ([sharedDaemonConfig3 shouldLogToDisk])
        {
          v55 = shouldLog4 | 2;
        }

        else
        {
          v55 = shouldLog4;
        }

        oSLogObject4 = [sharedDaemonConfig3 OSLogObject];
        if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
        {
          v57 = v55;
        }

        else
        {
          v57 = v55 & 2;
        }

        if (v57)
        {
          v58 = objc_opt_class();
          v74 = 138543618;
          v75 = v58;
          v76 = 2114;
          v77 = sharedDaemonConfig2;
          v59 = v58;
          LODWORD(v70) = 22;
          v60 = _os_log_send_and_compose_impl();

          v6 = v72;
          if (!v60)
          {
LABEL_92:

            if (v12)
            {
              CFRelease(v12);
            }

            _countryCode = v73;
            goto LABEL_95;
          }

          oSLogObject4 = [NSString stringWithCString:v60 encoding:4, &v74, v70];
          free(v60);
          SSFileLog();
        }

        else
        {
          v6 = v72;
        }

        goto LABEL_92;
      }

      oSLogObject6 = +[SSLogConfig sharedDaemonConfig];
      if (!oSLogObject6)
      {
        oSLogObject6 = +[SSLogConfig sharedConfig];
      }

      shouldLog5 = [oSLogObject6 shouldLog];
      if ([oSLogObject6 shouldLogToDisk])
      {
        v39 = shouldLog5 | 2;
      }

      else
      {
        v39 = shouldLog5;
      }

      oSLogObject5 = [oSLogObject6 OSLogObject];
      if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_ERROR))
      {
        v41 = v39;
      }

      else
      {
        v41 = v39 & 2;
      }

      if (!v41)
      {
        goto LABEL_49;
      }

      v74 = 138543362;
      v75 = objc_opt_class();
      v42 = v75;
      LODWORD(v70) = 12;
      v43 = _os_log_send_and_compose_impl();

      if (v43)
      {
        oSLogObject5 = [NSString stringWithCString:v43 encoding:4, &v74, v70];
        free(v43);
        SSFileLog();
LABEL_49:
      }
    }

    else
    {
      v6 = +[SSLogConfig sharedDaemonConfig];
      if (!v6)
      {
        v6 = +[SSLogConfig sharedConfig];
      }

      shouldLog6 = [v6 shouldLog];
      if ([v6 shouldLogToDisk])
      {
        v33 = shouldLog6 | 2;
      }

      else
      {
        v33 = shouldLog6;
      }

      oSLogObject6 = [v6 OSLogObject];
      if (os_log_type_enabled(oSLogObject6, OS_LOG_TYPE_ERROR))
      {
        v35 = v33;
      }

      else
      {
        v35 = v33 & 2;
      }

      if (v35)
      {
        v74 = 138543362;
        v75 = objc_opt_class();
        v36 = v75;
        LODWORD(v70) = 12;
        v37 = _os_log_send_and_compose_impl();

        if (!v37)
        {
LABEL_96:

          goto LABEL_97;
        }

        oSLogObject6 = [NSString stringWithCString:v37 encoding:4, &v74, v70];
        free(v37);
        SSFileLog();
      }
    }

    goto LABEL_96;
  }

  v5 = +[SSLogConfig sharedDaemonConfig];
  if (!v5)
  {
    v5 = +[SSLogConfig sharedConfig];
  }

  shouldLog7 = [v5 shouldLog];
  if ([v5 shouldLogToDisk])
  {
    v27 = shouldLog7 | 2;
  }

  else
  {
    v27 = shouldLog7;
  }

  oSLogObject7 = [v5 OSLogObject];
  if (os_log_type_enabled(oSLogObject7, OS_LOG_TYPE_ERROR))
  {
    v29 = v27;
  }

  else
  {
    v29 = v27 & 2;
  }

  if (!v29)
  {
    goto LABEL_26;
  }

  v74 = 138543362;
  v75 = objc_opt_class();
  v30 = v75;
  LODWORD(v70) = 12;
  v31 = _os_log_send_and_compose_impl();

  if (v31)
  {
    oSLogObject7 = [NSString stringWithCString:v31 encoding:4, &v74, v70];
    free(v31);
    SSFileLog();
LABEL_26:
  }

LABEL_97:
}

- (void)_performAutoEnrollmentCheck
{
  v3 = +[ISBiometricStore sharedInstance];
  biometricState = [v3 biometricState];

  if (biometricState == 2)
  {
    _countryCode = [(PurchaseOperation *)self _countryCode];
    v6 = +[SSLogConfig sharedDaemonConfig];
    oSLogObject2 = v6;
    if (_countryCode)
    {
      if (!v6)
      {
        oSLogObject2 = +[SSLogConfig sharedConfig];
      }

      shouldLog = [oSLogObject2 shouldLog];
      if ([oSLogObject2 shouldLogToDisk])
      {
        v9 = shouldLog | 2;
      }

      else
      {
        v9 = shouldLog;
      }

      oSLogObject = [oSLogObject2 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
      {
        v11 = v9;
      }

      else
      {
        v11 = v9 & 2;
      }

      if (!v11)
      {
        goto LABEL_36;
      }

      v47 = 138543618;
      v48 = objc_opt_class();
      v49 = 2114;
      v50 = _countryCode;
      v12 = v48;
      LODWORD(v46) = 22;
      v44 = &v47;
    }

    else
    {
      if (!v6)
      {
        oSLogObject2 = +[SSLogConfig sharedConfig];
      }

      shouldLog2 = [oSLogObject2 shouldLog];
      if ([oSLogObject2 shouldLogToDisk])
      {
        v19 = shouldLog2 | 2;
      }

      else
      {
        v19 = shouldLog2;
      }

      oSLogObject = [oSLogObject2 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
      {
        v20 = v19;
      }

      else
      {
        v20 = v19 & 2;
      }

      if (!v20)
      {
        goto LABEL_36;
      }

      v47 = 138543362;
      v48 = objc_opt_class();
      v12 = v48;
      LODWORD(v46) = 12;
      v44 = &v47;
    }

    v21 = _os_log_send_and_compose_impl();

    if (v21)
    {
      oSLogObject = [NSString stringWithCString:v21 encoding:4, &v47, v46];
      free(v21);
      v44 = oSLogObject;
      SSFileLog();
LABEL_36:
    }
  }

  else
  {
    _countryCode = +[SSLogConfig sharedDaemonConfig];
    if (!_countryCode)
    {
      _countryCode = +[SSLogConfig sharedConfig];
    }

    shouldLog3 = [_countryCode shouldLog];
    if ([_countryCode shouldLogToDisk])
    {
      v14 = shouldLog3 | 2;
    }

    else
    {
      v14 = shouldLog3;
    }

    oSLogObject2 = [_countryCode OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v14;
    }

    else
    {
      v15 = v14 & 2;
    }

    if (v15)
    {
      v47 = 138543362;
      v48 = objc_opt_class();
      v16 = v48;
      LODWORD(v46) = 12;
      v44 = &v47;
      v17 = _os_log_send_and_compose_impl();

      if (!v17)
      {
        goto LABEL_38;
      }

      oSLogObject2 = [NSString stringWithCString:v17 encoding:4, &v47, v46];
      free(v17);
      v44 = oSLogObject2;
      SSFileLog();
    }
  }

LABEL_38:
  v22 = objc_alloc_init(SSBiometricAuthenticationContext);
  authenticatedAccountDSID = [(PurchaseOperation *)self authenticatedAccountDSID];
  [v22 setAccountIdentifier:authenticatedAccountDSID];

  [v22 setIsPayment:1];
  v24 = +[DaemonBiometricKeychain sharedInstance];
  v25 = [v24 copyAccessControlListForPrivateKeyWithBiometricAuthenticationContext:v22 error:0];

  v26 = [AMSBiometrics isActionSupported:3 withAccessControl:v25];
  v27 = +[SSLogConfig sharedDaemonConfig];
  if (!v27)
  {
    v27 = +[SSLogConfig sharedConfig];
  }

  shouldLog4 = [v27 shouldLog];
  if ([v27 shouldLogToDisk])
  {
    v29 = shouldLog4 | 2;
  }

  else
  {
    v29 = shouldLog4;
  }

  oSLogObject3 = [v27 OSLogObject];
  if (!os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
  {
    v29 &= 2u;
  }

  if (v29)
  {
    v31 = objc_opt_class();
    v32 = v31;
    v33 = [NSNumber numberWithBool:v26];
    v47 = 138543618;
    v48 = v31;
    v49 = 2114;
    v50 = v33;
    LODWORD(v46) = 22;
    v45 = &v47;
    v34 = _os_log_send_and_compose_impl();

    if (!v34)
    {
      goto LABEL_49;
    }

    oSLogObject3 = [NSString stringWithCString:v34 encoding:4, &v47, v46];
    free(v34);
    v45 = oSLogObject3;
    SSFileLog();
  }

LABEL_49:
  v35 = [AMSBiometrics ACLVersionForAccessControl:v25];
  v36 = +[SSLogConfig sharedDaemonConfig];
  if (!v36)
  {
    v36 = +[SSLogConfig sharedConfig];
  }

  shouldLog5 = [v36 shouldLog];
  if ([v36 shouldLogToDisk])
  {
    v38 = shouldLog5 | 2;
  }

  else
  {
    v38 = shouldLog5;
  }

  oSLogObject4 = [v36 OSLogObject];
  if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
  {
    v40 = v38;
  }

  else
  {
    v40 = v38 & 2;
  }

  if (v40)
  {
    v41 = objc_opt_class();
    v47 = 138543618;
    v48 = v41;
    v49 = 2114;
    v50 = v35;
    v42 = v41;
    LODWORD(v46) = 22;
    v43 = _os_log_send_and_compose_impl();

    if (!v43)
    {
      goto LABEL_61;
    }

    oSLogObject4 = [NSString stringWithCString:v43 encoding:4, &v47, v46];
    free(v43);
    SSFileLog();
  }

LABEL_61:
  if (v25)
  {
    CFRelease(v25);
  }
}

- (id)_priceFromBuyParams
{
  buyParameters = [(PurchaseOperation *)self buyParameters];
  v3 = [NSURL copyDictionaryForQueryString:buyParameters unescapedValues:1];

  v4 = [v3 objectForKeyedSubscript:@"price"];
  if (v4)
  {
    v5 = qword_100383DC0;
    if (!qword_100383DC0)
    {
      v6 = objc_alloc_init(NSNumberFormatter);
      v7 = qword_100383DC0;
      qword_100383DC0 = v6;

      [qword_100383DC0 setNumberStyle:1];
      v5 = qword_100383DC0;
    }

    v8 = [v5 numberFromString:v4];
  }

  else
  {
    v8 = &off_10034BCA0;
  }

  return v8;
}

- (int64_t)_purchaseType
{
  urlBagKey = [(PurchaseOperation *)self urlBagKey];
  if ([urlBagKey isEqualToString:@"backgroundUpdateProduct"])
  {
    v3 = 1;
  }

  else if ([urlBagKey isEqualToString:@"buyProduct"])
  {
    v3 = 0;
  }

  else if ([urlBagKey isEqualToString:@"downloadProduct"])
  {
    v3 = 2;
  }

  else if ([urlBagKey isEqualToString:@"p2-in-app-buy"])
  {
    v3 = 3;
  }

  else if ([urlBagKey isEqualToString:@"updateProduct"])
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_recordEngagementEventWithResult:(id)result error:(id)error
{
  errorCopy = error;
  resultCopy = result;
  initForEngagement = [[AMSMetricsEvent alloc] initForEngagement];
  [initForEngagement setProperty:@"purchase" forBodyKey:@"eventType"];
  [initForEngagement setProperty:@"AMS" forBodyKey:@"source"];
  v9 = [NSNumber numberWithBool:errorCopy == 0];
  [initForEngagement setProperty:v9 forBodyKey:@"success"];

  v10 = [NSNumber numberWithInteger:[(PurchaseOperation *)self _purchaseType]];
  [initForEngagement setProperty:v10 forBodyKey:@"purchaseType"];

  buyParameters = [(PurchaseOperation *)self buyParameters];
  v12 = [NSURL copyDictionaryForQueryString:buyParameters unescapedValues:1];

  [initForEngagement setProperty:v12 forBodyKey:@"buyParameters"];
  authenticatedAccountDSID = [(PurchaseOperation *)self authenticatedAccountDSID];
  [initForEngagement setProperty:authenticatedAccountDSID forBodyKey:@"accountId"];

  [initForEngagement setProperty:resultCopy forBodyKey:@"responseDictionary"];
  if (errorCopy)
  {
    v45[0] = @"code";
    v14 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [errorCopy code]);
    v46[0] = v14;
    v45[1] = @"domain";
    domain = [errorCopy domain];
    v16 = domain;
    if (domain)
    {
      v17 = domain;
    }

    else
    {
      v17 = &stru_10033CC30;
    }

    v46[1] = v17;
    v45[2] = @"title";
    ams_title = [errorCopy ams_title];
    v19 = ams_title;
    if (ams_title)
    {
      v20 = ams_title;
    }

    else
    {
      v20 = &stru_10033CC30;
    }

    v46[2] = v20;
    v45[3] = @"message";
    ams_message = [errorCopy ams_message];
    v22 = ams_message;
    if (ams_message)
    {
      v23 = ams_message;
    }

    else
    {
      v23 = &stru_10033CC30;
    }

    v46[3] = v23;
    v24 = [NSDictionary dictionaryWithObjects:v46 forKeys:v45 count:4];

    [initForEngagement setProperty:v24 forBodyKey:@"error"];
  }

  v25 = +[AMSLogConfig sharedConfig];
  if (!v25)
  {
    v25 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v25 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v27 = objc_opt_class();
    v28 = AMSLogKey();
    *buf = 138543874;
    v40 = v27;
    v41 = 2114;
    v42 = v28;
    v43 = 1024;
    v44 = errorCopy == 0;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Recording engagement event. success: %d", buf, 0x1Cu);
  }

  v29 = objc_alloc_init(AMSEngagement);
  underlyingDictionary = [initForEngagement underlyingDictionary];
  v31 = [v29 enqueueData:underlyingDictionary];

  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_1000A84B0;
  v36[3] = &unk_1003276A8;
  v32 = objc_alloc_init(AMSBinaryPromise);
  v37 = v32;
  selfCopy = self;
  [v31 addFinishBlock:v36];
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_1000A88A0;
  v35[3] = &unk_1003276D0;
  v35[4] = self;
  [v32 addErrorBlock:v35];
  v33 = v32;

  return v32;
}

- (void)_runDialogOperationForDialog:(id)dialog
{
  dialogCopy = dialog;
  selfCopy = self;
  if (![(PurchaseOperation *)self skipsConfirmationDialogs])
  {
    goto LABEL_25;
  }

  obj = [dialogCopy buttons];
  v137 = 0u;
  v138 = 0u;
  v135 = 0u;
  v136 = 0u;
  v4 = [obj countByEnumeratingWithState:&v135 objects:v149 count:16];
  if (!v4)
  {

    goto LABEL_25;
  }

  v5 = *v136;
  v6 = 1;
  do
  {
    for (i = 0; i != v4; i = i + 1)
    {
      if (*v136 != v5)
      {
        objc_enumerationMutation(obj);
      }

      v8 = *(*(&v135 + 1) + 8 * i);
      if ([v8 actionType] == 3)
      {
        v9 = +[SSLogConfig sharedDaemonConfig];
        if (!v9)
        {
          v9 = +[SSLogConfig sharedConfig];
        }

        shouldLog = [v9 shouldLog];
        if ([v9 shouldLogToDisk])
        {
          shouldLog |= 2u;
        }

        oSLogObject = [v9 OSLogObject];
        if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
        {
          v12 = shouldLog;
        }

        else
        {
          v12 = shouldLog & 2;
        }

        if (v12)
        {
          v13 = objc_opt_class();
          v14 = v13;
          parameter = [v8 parameter];
          *v145 = 138412546;
          *&v145[4] = v13;
          *&v145[12] = 2112;
          *&v145[14] = parameter;
          LODWORD(v115) = 22;
          v112 = v145;
          v16 = _os_log_send_and_compose_impl();

          if (v16)
          {
            oSLogObject = [NSString stringWithCString:v16 encoding:4, v145, v115];
            free(v16);
            v112 = oSLogObject;
            SSFileLog();
            goto LABEL_18;
          }
        }

        else
        {
LABEL_18:
        }

        responseInfo = selfCopy->_responseInfo;
        parameter2 = [v8 parameter];
        [(PurchaseResponseInfo *)responseInfo setChangedBuyParameters:parameter2];

        v6 = 0;
        continue;
      }
    }

    v4 = [obj countByEnumeratingWithState:&v135 objects:v149 count:16];
  }

  while (v4);

  if ((v6 & 1) == 0)
  {
    goto LABEL_134;
  }

LABEL_25:
  v19 = +[SSLogConfig sharedDaemonConfig];
  if (!v19)
  {
    v19 = +[SSLogConfig sharedConfig];
  }

  shouldLog2 = [v19 shouldLog];
  if ([v19 shouldLogToDisk])
  {
    shouldLog2 |= 2u;
  }

  oSLogObject2 = [v19 OSLogObject];
  if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
  {
    shouldLog2 &= 2u;
  }

  if (shouldLog2)
  {
    v22 = objc_opt_class();
    *v145 = 138412290;
    *&v145[4] = v22;
    v23 = v22;
    LODWORD(v115) = 12;
    v113 = v145;
    v24 = _os_log_send_and_compose_impl();

    if (v24)
    {
      oSLogObject2 = [NSString stringWithCString:v24 encoding:4, v145, v115];
      free(v24);
      v113 = oSLogObject2;
      SSFileLog();
      goto LABEL_34;
    }
  }

  else
  {
LABEL_34:
  }

  paymentSheet = [dialogCopy paymentSheet];
  if (!paymentSheet)
  {
    v50 = [[DaemonDialogOperation alloc] initWithDialog:dialogCopy];
    [(DaemonDialogOperation *)v50 setDisplaysOnLockscreen:selfCopy->_displaysOnLockScreen];
    *v145 = 0;
    *&v145[8] = v145;
    *&v145[16] = 0x3032000000;
    v146 = sub_1000A9D8C;
    v147 = sub_1000A9D9C;
    v148 = 0;
    v122[0] = _NSConcreteStackBlock;
    v122[1] = 3221225472;
    v122[2] = sub_1000AA284;
    v122[3] = &unk_100327748;
    v124 = v145;
    v51 = dialogCopy;
    v123 = v51;
    [(DaemonDialogOperation *)v50 setOutputBlock:v122];
    v121 = 0;
    v52 = [(PurchaseOperation *)selfCopy runSubOperation:v50 returningError:&v121];
    v53 = v121;
    obja = v53;
    if ((v52 & 1) == 0)
    {
      [(PurchaseOperation *)selfCopy setError:v53];
LABEL_132:

      _Block_object_dispose(v145, 8);
      goto LABEL_133;
    }

    v54 = *(*&v145[8] + 40);
    if (v54)
    {
      if ([v54 actionType] == 3)
      {
        v55 = +[SSLogConfig sharedDaemonConfig];
        if (!v55)
        {
          v55 = +[SSLogConfig sharedConfig];
        }

        shouldLog3 = [v55 shouldLog];
        shouldLogToDisk = [v55 shouldLogToDisk];
        oSLogObject3 = [v55 OSLogObject];
        v115 = oSLogObject3;
        if (shouldLogToDisk)
        {
          shouldLog3 |= 2u;
        }

        if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_INFO))
        {
          v60 = shouldLog3;
        }

        else
        {
          v60 = shouldLog3 & 2;
        }

        if (v60)
        {
          v61 = objc_opt_class();
          buyParameters = [(PurchaseOperation *)selfCopy buyParameters];
          *v141 = 138412546;
          *&v141[4] = v61;
          *&v141[12] = 2112;
          *&v141[14] = buyParameters;
          LODWORD(v115) = 22;
          v63 = _os_log_send_and_compose_impl();

          if (!v63)
          {
LABEL_75:

            v64 = selfCopy->_responseInfo;
            parameter3 = [*(*&v145[8] + 40) parameter];
            [(PurchaseResponseInfo *)v64 setChangedBuyParameters:parameter3];
LABEL_131:

            goto LABEL_132;
          }

          v115 = [NSString stringWithCString:v63 encoding:4, v141, v115];
          free(v63);
          SSFileLog();
        }

        goto LABEL_75;
      }

      v54 = *(*&v145[8] + 40);
    }

    if ([v54 actionType] == 11)
    {
      parameter4 = [*(*&v145[8] + 40) parameter];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v67 = [NSURL URLWithString:parameter4];

        parameter4 = v67;
      }

      v68 = +[SSLogConfig sharedDaemonConfig];
      if (!v68)
      {
        v68 = +[SSLogConfig sharedConfig];
      }

      shouldLog4 = [v68 shouldLog];
      shouldLogToDisk2 = [v68 shouldLogToDisk];
      oSLogObject4 = [v68 OSLogObject];
      v1153 = oSLogObject4;
      if (shouldLogToDisk2)
      {
        shouldLog4 |= 2u;
      }

      if (!os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_INFO))
      {
        shouldLog4 &= 2u;
      }

      if (shouldLog4)
      {
        v73 = objc_opt_class();
        *v141 = 138412546;
        *&v141[4] = v73;
        *&v141[12] = 2112;
        *&v141[14] = parameter4;
        v74 = v73;
        LODWORD(v115) = 22;
        v114 = v141;
        v75 = _os_log_send_and_compose_impl();

        if (!v75)
        {
LABEL_91:

          v76 = [AskPermissionActionOperation alloc];
          _account = [(PurchaseOperation *)selfCopy _account];
          v78 = [(AskPermissionActionOperation *)v76 initWithURL:parameter4 account:_account];

          v120 = obja;
          [(PurchaseOperation *)selfCopy runSubOperation:v78 returningError:&v120];
          v79 = v120;

          v80 = SSError();
          [(PurchaseOperation *)selfCopy setError:v80];

          [(PurchaseOperation *)selfCopy setSuccess:0];
          obja = v79;
          v97 = selfCopy;
LABEL_117:
          authenticationContext = [(PurchaseOperation *)v97 authenticationContext];
          v99 = [authenticationContext tokenType] == 1;

          if (!v99)
          {
            goto LABEL_132;
          }

          [(PurchaseOperation *)selfCopy lock];
          didAuthenticate = selfCopy->_didAuthenticate;
          [(PurchaseOperation *)selfCopy unlock];
          if (!didAuthenticate)
          {
            goto LABEL_132;
          }

          parameter3 = [(PurchaseOperation *)selfCopy _account];
          [parameter3 setSecureToken:0];
          v101 = +[SSLogConfig sharedAccountsConfig];
          if (!v101)
          {
            v101 = +[SSLogConfig sharedConfig];
          }

          shouldLog5 = [v101 shouldLog];
          shouldLogToDisk3 = [v101 shouldLogToDisk];
          oSLogObject5 = [v101 OSLogObject];
          v1152 = oSLogObject5;
          if (shouldLogToDisk3)
          {
            shouldLog5 |= 2u;
          }

          if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_DEFAULT))
          {
            v106 = shouldLog5;
          }

          else
          {
            v106 = shouldLog5 & 2;
          }

          if (v106)
          {
            v107 = objc_opt_class();
            accountName = [parameter3 accountName];
            v109 = SSHashIfNeeded();
            *v141 = 138543618;
            *&v141[4] = v107;
            *&v141[12] = 2114;
            *&v141[14] = v109;
            LODWORD(v115) = 22;
            v110 = _os_log_send_and_compose_impl();

            if (!v110)
            {
LABEL_130:

              v111 = +[SSAccountStore defaultStore];
              [v111 saveAccount:parameter3 completion:0];

              goto LABEL_131;
            }

            v1152 = [NSString stringWithCString:v110 encoding:4, v141, v115];
            free(v110);
            SSFileLog();
          }

          goto LABEL_130;
        }

        v1153 = [NSString stringWithCString:v75 encoding:4, v141, v115];
        free(v75);
        v114 = v1153;
        SSFileLog();
      }

      goto LABEL_91;
    }

    v81 = +[SSLogConfig sharedDaemonConfig];
    if (!v81)
    {
      v81 = +[SSLogConfig sharedConfig];
    }

    shouldLog6 = [v81 shouldLog];
    shouldLogToDisk4 = [v81 shouldLogToDisk];
    oSLogObject6 = [v81 OSLogObject];
    v1154 = oSLogObject6;
    if (shouldLogToDisk4)
    {
      shouldLog6 |= 2u;
    }

    if (os_log_type_enabled(oSLogObject6, OS_LOG_TYPE_DEFAULT))
    {
      v86 = shouldLog6;
    }

    else
    {
      v86 = shouldLog6 & 2;
    }

    if (v86)
    {
      v87 = objc_opt_class();
      buyParameters2 = [(PurchaseOperation *)selfCopy buyParameters];
      *v141 = 138412546;
      *&v141[4] = v87;
      *&v141[12] = 2112;
      *&v141[14] = buyParameters2;
      LODWORD(v115) = 22;
      v114 = v141;
      v89 = _os_log_send_and_compose_impl();

      if (!v89)
      {
LABEL_103:

        [*(*&v145[8] + 40) performDefaultActionForDialog:v51];
        v90 = SSError();
        [(PurchaseOperation *)selfCopy setError:v90];

        v97 = selfCopy;
        [(PurchaseOperation *)selfCopy setSuccess:0];
        goto LABEL_117;
      }

      v1154 = [NSString stringWithCString:v89 encoding:4, v141, v115];
      free(v89);
      v114 = v1154;
      SSFileLog();
    }

    goto LABEL_103;
  }

  v131 = 0;
  v132 = &v131;
  v133 = 0x2020000000;
  v134 = 0;
  *v145 = 0;
  *&v145[8] = v145;
  *&v145[16] = 0x3032000000;
  v146 = sub_1000A9D8C;
  v147 = sub_1000A9D9C;
  v148 = 0;
  v26 = [NSString stringWithFormat:@"%@", objc_opt_class()];
  v27 = [[DisplayPaymentSheetOperation alloc] initWithPaymentSheet:paymentSheet];
  dialogId = [paymentSheet dialogId];
  [(DisplayPaymentSheetOperation *)v27 setDialogId:dialogId];

  accountName2 = [(SSAuthenticationContext *)selfCopy->_authenticationContext accountName];
  [(DisplayPaymentSheetOperation *)v27 setAccountName:accountName2];

  v127[0] = _NSConcreteStackBlock;
  v127[1] = 3221225472;
  v127[2] = sub_1000A9DA4;
  v127[3] = &unk_1003276F8;
  v30 = v26;
  v128 = v30;
  v129 = v145;
  v130 = &v131;
  [(DisplayPaymentSheetOperation *)v27 setCompletionHandler:v127];
  v31 = [[DisplayPaymentSheetContainerOperation alloc] initWithDisplayPaymentSheetOperation:v27];
  v126 = 0;
  LODWORD(accountName2) = [(PurchaseOperation *)selfCopy runSubOperation:v31 returningError:&v126];
  v32 = v126;
  if (!accountName2 || (v132[3] & 1) == 0)
  {
    [(PurchaseOperation *)selfCopy setError:v32];
    [(PurchaseOperation *)selfCopy setSuccess:0];
    v43 = +[SSLogConfig sharedConfig];
    shouldLog7 = [v43 shouldLog];
    shouldLogToDisk5 = [v43 shouldLogToDisk];
    oSLogObject7 = [v43 OSLogObject];
    v1155 = oSLogObject7;
    if (shouldLogToDisk5)
    {
      shouldLog7 |= 2u;
    }

    if (os_log_type_enabled(oSLogObject7, OS_LOG_TYPE_ERROR))
    {
      v48 = shouldLog7;
    }

    else
    {
      v48 = shouldLog7 & 2;
    }

    if (v48)
    {
      *v141 = 138543618;
      *&v141[4] = v30;
      *&v141[12] = 2114;
      *&v141[14] = v32;
      LODWORD(v115) = 22;
      v49 = _os_log_send_and_compose_impl();

      if (!v49)
      {
LABEL_60:

        goto LABEL_116;
      }

      v1155 = [NSString stringWithCString:v49 encoding:4, v141, v115];
      free(v49);
      SSFileLog();
    }

    goto LABEL_60;
  }

  *v141 = 0;
  *&v141[8] = v141;
  *&v141[16] = 0x3032000000;
  v142 = sub_1000A9D8C;
  v143 = sub_1000A9D9C;
  v144 = 0;
  buttons = [dialogCopy buttons];
  v125[0] = _NSConcreteStackBlock;
  v125[1] = 3221225472;
  v125[2] = sub_1000AA208;
  v125[3] = &unk_100327720;
  v125[4] = v141;
  [buttons enumerateObjectsUsingBlock:v125];

  if (*(*&v141[8] + 40))
  {
    v34 = +[SSLogConfig sharedDaemonConfig];
    if (!v34)
    {
      v34 = +[SSLogConfig sharedConfig];
    }

    shouldLog8 = [v34 shouldLog];
    shouldLogToDisk6 = [v34 shouldLogToDisk];
    oSLogObject8 = [v34 OSLogObject];
    v1156 = oSLogObject8;
    if (shouldLogToDisk6)
    {
      shouldLog8 |= 2u;
    }

    if (os_log_type_enabled(oSLogObject8, OS_LOG_TYPE_DEFAULT))
    {
      v39 = shouldLog8;
    }

    else
    {
      v39 = shouldLog8 & 2;
    }

    if (v39)
    {
      v139 = 138543362;
      v140 = v30;
      LODWORD(v115) = 12;
      v40 = _os_log_send_and_compose_impl();

      if (v40)
      {
        v1156 = [NSString stringWithCString:v40 encoding:4, &v139, v115];
        free(v40);
        SSFileLog();
        goto LABEL_49;
      }
    }

    else
    {
LABEL_49:
    }

    v41 = selfCopy->_responseInfo;
    parameter5 = [*(*&v141[8] + 40) parameter];
    [(PurchaseResponseInfo *)v41 setChangedBuyParameters:parameter5];
  }

  else
  {
    parameter5 = +[SSLogConfig sharedDaemonConfig];
    if (!parameter5)
    {
      parameter5 = +[SSLogConfig sharedConfig];
    }

    shouldLog9 = [parameter5 shouldLog];
    shouldLogToDisk7 = [parameter5 shouldLogToDisk];
    oSLogObject9 = [parameter5 OSLogObject];
    v1157 = oSLogObject9;
    if (shouldLogToDisk7)
    {
      shouldLog9 |= 2u;
    }

    if (os_log_type_enabled(oSLogObject9, OS_LOG_TYPE_ERROR))
    {
      v95 = shouldLog9;
    }

    else
    {
      v95 = shouldLog9 & 2;
    }

    if (v95)
    {
      v139 = 138412290;
      v140 = v30;
      LODWORD(v115) = 12;
      v96 = _os_log_send_and_compose_impl();

      if (!v96)
      {
        goto LABEL_115;
      }

      v1157 = [NSString stringWithCString:v96 encoding:4, &v139, v115];
      free(v96);
      SSFileLog();
    }
  }

LABEL_115:

  _Block_object_dispose(v141, 8);
LABEL_116:

  _Block_object_dispose(v145, 8);
  _Block_object_dispose(&v131, 8);
LABEL_133:

LABEL_134:
}

- (void)_runPurchaseRequest
{
  v3 = +[SSDevice currentDevice];
  storeFrontIdentifier = [v3 storeFrontIdentifier];

  if (!storeFrontIdentifier || (-[PurchaseOperation originatingStorefront](self, "originatingStorefront"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [storeFrontIdentifier isEqualToString:v5], v5, (v6 & 1) != 0))
  {
LABEL_19:
    v131 = storeFrontIdentifier;
    _newPurchaseRequestOperation = [(PurchaseOperation *)self _newPurchaseRequestOperation];
    dataProvider = [_newPurchaseRequestOperation dataProvider];
    v25 = +[SSLogConfig sharedDaemonConfig];
    if (!v25)
    {
      v25 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v25 shouldLog];
    if ([v25 shouldLogToDisk])
    {
      v27 = shouldLog | 2;
    }

    else
    {
      v27 = shouldLog;
    }

    oSLogObject = [v25 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v29 = v27;
    }

    else
    {
      v29 = v27 & 2;
    }

    if (v29)
    {
      v30 = objc_opt_class();
      v31 = v30;
      logKey = [(PurchaseOperation *)self logKey];
      buyParameters = [(PurchaseOperation *)self buyParameters];
      v134 = 138543874;
      v135 = v30;
      v136 = 2114;
      v137 = logKey;
      v138 = 2112;
      v139 = buyParameters;
      LODWORD(v121) = 32;
      v118 = &v134;
      v34 = _os_log_send_and_compose_impl();

      if (!v34)
      {
        goto LABEL_31;
      }

      oSLogObject = [NSString stringWithCString:v34 encoding:4, &v134, v121];
      free(v34);
      v118 = oSLogObject;
      SSFileLog();
    }

LABEL_31:
    v133 = 0;
    v35 = [(PurchaseOperation *)self runSubOperation:_newPurchaseRequestOperation returningError:&v133];
    v36 = v133;
    output = [dataProvider output];
    v38 = output;
    v132 = output;
    if ((v35 & 1) == 0)
    {
      [(PurchaseOperation *)self _handleFailureForOperation:_newPurchaseRequestOperation];
      [(PurchaseOperation *)self setError:v36];
      goto LABEL_126;
    }

    v39 = [output objectForKey:kISFailureTypeKey];

    if (v39)
    {
      [(PurchaseOperation *)self _handleFailureForOperation:_newPurchaseRequestOperation];
    }

    else
    {
      [dataProvider setShouldProcessDialogs:1];
      [dataProvider processDialogFromDictionary:v38 error:0];
      v40 = [v38 objectForKey:@"DelayedGoto"];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        [(PurchaseOperation *)self _performDelayedGotoForOperation:_newPurchaseRequestOperation];
      }

      else
      {
        [(PurchaseOperation *)self setSuccess:1];
      }
    }

    v42 = [v38 objectForKey:{@"keybag", v118}];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v42 length])
    {
      sub_1000B29AC(v42);
    }

    v43 = SSVSubscriptionBagForDictionary();
    if (v43)
    {
      _fairPlaySubscriptionController = [(PurchaseOperation *)self _fairPlaySubscriptionController];
      [_fairPlaySubscriptionController importSubscriptionKeyBagData:v43 returningError:0];
    }

    v45 = [v38 objectForKey:@"duAnonymousPings"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [objc_opt_class() reportAnonymousPings:v45];
    }

    v126 = v45;
    v127 = v43;
    v128 = v42;
    v46 = [v38 objectForKeyedSubscript:@"newsEntitlements"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      authenticatedAccountDSID = [(PurchaseOperation *)self authenticatedAccountDSID];
      [AppStoreUtility sendNewsSubscriptionEntitlementsWithDictionary:v46 forAccountID:authenticatedAccountDSID];
    }

    v125 = v46;
    v48 = [v38 objectForKeyedSubscript:@"appStoreEntitlements"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      authenticatedAccountDSID2 = [(PurchaseOperation *)self authenticatedAccountDSID];
      [AppStoreUtility sendAppStoreSubscriptionEntitlementsWithDictionary:v48 forAccountID:authenticatedAccountDSID2];
    }

    v50 = [v38 objectForKeyedSubscript:@"activityEntitlements"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      authenticatedAccountDSID3 = [(PurchaseOperation *)self authenticatedAccountDSID];
      [AppStoreUtility sendActivitySubscriptionEntitlementsWithDictionary:v50 forAccountID:authenticatedAccountDSID3];
    }

    if (!+[ISBiometricStore shouldUseAutoEnrollment]|| ([(PurchaseOperation *)self success]& 1) == 0 && ![(PurchaseOperation *)self isCancelled])
    {
LABEL_120:
      [(PurchaseOperation *)self lock];
      authenticatedAccountDSID4 = [_newPurchaseRequestOperation authenticatedAccountDSID];
      accountID = self->_accountID;
      self->_accountID = authenticatedAccountDSID4;

      if (self->_didAuthenticate)
      {
        self->_didAuthenticate = 1;
      }

      else
      {
        authenticatedAccountDSID5 = [dataProvider authenticatedAccountDSID];
        self->_didAuthenticate = authenticatedAccountDSID5 != 0;

        if (!self->_didAuthenticate)
        {
LABEL_125:
          [(PurchaseOperation *)self unlock];

          v38 = v132;
LABEL_126:
          [(PurchaseOperation *)self setRawOutput:v38, v118];
          if (v38)
          {
            v100 = [NSPropertyListSerialization dataWithPropertyList:v38 format:200 options:0 error:0];
          }

          else
          {
            v100 = 0;
          }

          [(PurchaseOperation *)self lock];
          performanceMetrics = [_newPurchaseRequestOperation performanceMetrics];
          requestPerformanceMetrics = self->_requestPerformanceMetrics;
          self->_requestPerformanceMetrics = performanceMetrics;

          v103 = [SSURLConnectionResponse alloc];
          response = [_newPurchaseRequestOperation response];
          v105 = [v103 initWithURLResponse:response bodyData:v100];
          urlResponse = self->_urlResponse;
          self->_urlResponse = v105;

          allHeaderFields = [(SSURLConnectionResponse *)self->_urlResponse allHeaderFields];
          v108 = [allHeaderFields objectForKey:@"x-apple-jingle-correlation-key"];

          if (![v108 length])
          {
            goto LABEL_142;
          }

          objc_storeStrong(&self->_storeCorrelationID, v108);
          v109 = +[SSLogConfig sharedDaemonConfig];
          if (!v109)
          {
            v109 = +[SSLogConfig sharedConfig];
          }

          shouldLog2 = [v109 shouldLog];
          if ([v109 shouldLogToDisk])
          {
            shouldLog2 |= 2u;
          }

          oSLogObject2 = [v109 OSLogObject];
          if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
          {
            v112 = shouldLog2;
          }

          else
          {
            v112 = shouldLog2 & 2;
          }

          if (v112)
          {
            v113 = objc_opt_class();
            storeCorrelationID = self->_storeCorrelationID;
            v134 = 138412546;
            v135 = v113;
            v136 = 2114;
            v137 = storeCorrelationID;
            v115 = v113;
            LODWORD(v121) = 22;
            v120 = &v134;
            v116 = _os_log_send_and_compose_impl();

            if (!v116)
            {
LABEL_141:

              v38 = v132;
LABEL_142:
              [(PurchaseOperation *)self unlock];
              [_newPurchaseRequestOperation setDelegate:0];

              storeFrontIdentifier = v131;
              goto LABEL_143;
            }

            oSLogObject2 = [NSString stringWithCString:v116 encoding:4, &v134, v121];
            free(v116);
            v120 = oSLogObject2;
            SSFileLog();
          }

          goto LABEL_141;
        }
      }

      if ([dataProvider authenticatedAccountCredentialSource] == 3)
      {
        ++self->_silentAuthCount;
      }

      goto LABEL_125;
    }

    buyParameters2 = [(PurchaseOperation *)self buyParameters];
    v53 = [NSURL copyDictionaryForQueryString:buyParameters2 unescapedValues:1];

    v54 = [v53 objectForKeyedSubscript:@"applePayPaymentServiceURL"];

    v124 = v53;
    v55 = [v53 objectForKeyedSubscript:@"pkPayment"];

    if (v54 && !v55)
    {
      v56 = +[SSLogConfig sharedDaemonConfig];
      if (!v56)
      {
        v56 = +[SSLogConfig sharedConfig];
      }

      shouldLog3 = [v56 shouldLog];
      if ([v56 shouldLogToDisk])
      {
        shouldLog3 |= 2u;
      }

      oSLogObject3 = [v56 OSLogObject];
      if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
      {
        v59 = shouldLog3;
      }

      else
      {
        v59 = shouldLog3 & 2;
      }

      if (v59)
      {
        v60 = objc_opt_class();
        v134 = 138543362;
        v135 = v60;
        v61 = v60;
        LODWORD(v121) = 12;
        v119 = &v134;
        v62 = _os_log_send_and_compose_impl();

        if (!v62)
        {
LABEL_119:

          goto LABEL_120;
        }

        oSLogObject3 = [NSString stringWithCString:v62 encoding:4, &v134, v121];
        free(v62);
        v119 = oSLogObject3;
        SSFileLog();
      }

      goto LABEL_119;
    }

    v63 = +[SSLogConfig sharedDaemonConfig];
    v56 = v63;
    if (!v54 || !v55)
    {
      if (!v63)
      {
        v56 = +[SSLogConfig sharedConfig];
      }

      shouldLog4 = [v56 shouldLog];
      if ([v56 shouldLogToDisk])
      {
        shouldLog4 |= 2u;
      }

      oSLogObject4 = [v56 OSLogObject];
      v73 = os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT);
      v74 = shouldLog4 & 2;
      if (v73)
      {
        v74 = shouldLog4;
      }

      if (v74)
      {
        HIDWORD(v121) = v55 != 0;
        v75 = objc_opt_class();
        v122 = v75;
        v76 = [NSNumber numberWithBool:v54 != 0];
        v77 = [NSNumber numberWithBool:HIDWORD(v121)];
        v134 = 138543874;
        v135 = v75;
        v136 = 2114;
        v137 = v76;
        v78 = v76;
        v138 = 2114;
        v139 = v77;
        LODWORD(v121) = 32;
        v119 = &v134;
        v79 = _os_log_send_and_compose_impl();

        if (!v79)
        {
          goto LABEL_119;
        }

        v121 = [NSString stringWithCString:v79 encoding:4, &v134, v121];
        free(v79);
        v119 = v121;
        SSFileLog();
      }

      else
      {
        v121 = oSLogObject4;
      }

      goto LABEL_119;
    }

    if (!v63)
    {
      v56 = +[SSLogConfig sharedConfig];
    }

    shouldLog5 = [v56 shouldLog];
    if ([v56 shouldLogToDisk])
    {
      shouldLog5 |= 2u;
    }

    oSLogObject5 = [v56 OSLogObject];
    if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_DEFAULT))
    {
      v66 = shouldLog5;
    }

    else
    {
      v66 = shouldLog5 & 2;
    }

    if (v66)
    {
      v67 = objc_opt_class();
      v134 = 138543362;
      v135 = v67;
      v68 = v67;
      LODWORD(v121) = 12;
      v119 = &v134;
      v69 = _os_log_send_and_compose_impl();

      v70 = &CFDictionaryGetValue_ptr;
      if (!v69)
      {
LABEL_93:

        v56 = [v132 objectForKeyedSubscript:@"need-apple-pay-auto-enroll-retry"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          lowercaseString = [v56 lowercaseString];
          v82 = [lowercaseString isEqualToString:@"true"];

          v70 = &CFDictionaryGetValue_ptr;
          if (v82)
          {
            v83 = +[SSLogConfig sharedDaemonConfig];
            if (!v83)
            {
              v83 = +[SSLogConfig sharedConfig];
            }

            shouldLog6 = [v83 shouldLog];
            if ([v83 shouldLogToDisk])
            {
              shouldLog6 |= 2u;
            }

            v129 = v83;
            oSLogObject6 = [v83 OSLogObject];
            if (os_log_type_enabled(oSLogObject6, OS_LOG_TYPE_DEFAULT))
            {
              v86 = shouldLog6;
            }

            else
            {
              v86 = shouldLog6 & 2;
            }

            if (v86)
            {
              v87 = objc_opt_class();
              v134 = 138543362;
              v135 = v87;
              v88 = v87;
              LODWORD(v121) = 12;
              v119 = &v134;
              v89 = _os_log_send_and_compose_impl();

              if (!v89)
              {
LABEL_106:

                +[AMSCardEnrollment clearAutoEnrollmentIdentifier];
                goto LABEL_119;
              }

              oSLogObject6 = [NSString stringWithCString:v89 encoding:4, &v134, v121];
              free(v89);
              v119 = oSLogObject6;
              SSFileLog();
            }

            goto LABEL_106;
          }
        }

        sharedDaemonConfig = [v70[412] sharedDaemonConfig];
        if (!sharedDaemonConfig)
        {
          sharedDaemonConfig = [v70[412] sharedConfig];
        }

        shouldLog7 = [sharedDaemonConfig shouldLog];
        if ([sharedDaemonConfig shouldLogToDisk])
        {
          shouldLog7 |= 2u;
        }

        v130 = sharedDaemonConfig;
        oSLogObject7 = [sharedDaemonConfig OSLogObject];
        if (os_log_type_enabled(oSLogObject7, OS_LOG_TYPE_DEFAULT))
        {
          v93 = shouldLog7;
        }

        else
        {
          v93 = shouldLog7 & 2;
        }

        if (v93)
        {
          v94 = objc_opt_class();
          v134 = 138543362;
          v135 = v94;
          v95 = v94;
          LODWORD(v121) = 12;
          v119 = &v134;
          v96 = _os_log_send_and_compose_impl();

          if (!v96)
          {
LABEL_118:

            +[AMSCardEnrollment updateAutoEnrollmentIdentifier];
            goto LABEL_119;
          }

          oSLogObject7 = [NSString stringWithCString:v96 encoding:4, &v134, v121];
          free(v96);
          v119 = oSLogObject7;
          SSFileLog();
        }

        goto LABEL_118;
      }

      oSLogObject5 = [NSString stringWithCString:v69 encoding:4, &v134, v121];
      free(v69);
      v119 = oSLogObject5;
      SSFileLog();
    }

    else
    {
      v70 = &CFDictionaryGetValue_ptr;
    }

    goto LABEL_93;
  }

  delegate = [(PurchaseOperation *)self delegate];
  if (!delegate || (v8 = delegate, [(PurchaseOperation *)self delegate], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_opt_respondsToSelector(), v9, v8, (v10 & 1) == 0))
  {
LABEL_18:
    objc_storeStrong(&self->_originatingStorefront, storeFrontIdentifier);
    goto LABEL_19;
  }

  v11 = +[SSLogConfig sharedDaemonConfig];
  if (!v11)
  {
    v11 = +[SSLogConfig sharedConfig];
  }

  shouldLog8 = [v11 shouldLog];
  if ([v11 shouldLogToDisk])
  {
    v13 = shouldLog8 | 2;
  }

  else
  {
    v13 = shouldLog8;
  }

  oSLogObject8 = [v11 OSLogObject];
  if (os_log_type_enabled(oSLogObject8, OS_LOG_TYPE_DEFAULT))
  {
    v15 = v13;
  }

  else
  {
    v15 = v13 & 2;
  }

  if (v15)
  {
    v16 = storeFrontIdentifier;
    v17 = objc_opt_class();
    v18 = v17;
    v19 = SSHashIfNeeded();
    v134 = 138543618;
    v135 = v17;
    storeFrontIdentifier = v16;
    v136 = 2114;
    v137 = v19;
    LODWORD(v121) = 22;
    v117 = &v134;
    v20 = _os_log_send_and_compose_impl();

    if (!v20)
    {
      goto LABEL_17;
    }

    oSLogObject8 = [NSString stringWithCString:v20 encoding:4, &v134, v121];
    free(v20);
    v117 = oSLogObject8;
    SSFileLog();
  }

LABEL_17:
  delegate2 = [(PurchaseOperation *)self delegate];
  v22 = [delegate2 purchaseOperation:self shouldContinueWithNewStorefront:storeFrontIdentifier];

  if (v22)
  {
    goto LABEL_18;
  }

  _newPurchaseRequestOperation = +[NSMutableDictionary dictionary];
  [_newPurchaseRequestOperation setObject:storeFrontIdentifier forKeyedSubscript:@"storefront"];
  v71 = [NSError errorWithDomain:SSErrorDomain code:156 userInfo:_newPurchaseRequestOperation];
  [(PurchaseOperation *)self setError:v71];

  [(PurchaseOperation *)self setSuccess:0];
LABEL_143:
}

- (void)_scoreDevice
{
  if (self->_deviceScorer)
  {
    goto LABEL_20;
  }

  _priceFromBuyParams = [(PurchaseOperation *)self _priceFromBuyParams];
  [_priceFromBuyParams floatValue];
  v5 = v4;

  if (v5 == 0.0)
  {
    v6 = 0;
  }

  else if (+[DeviceScorer deviceScoringSupportedV2])
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  v7 = +[SSLogConfig sharedDaemonConfig];
  if (!v7)
  {
    v7 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v7 shouldLog];
  v9 = [v7 shouldLogToDisk] ? shouldLog | 2 : shouldLog;
  oSLogObject = [v7 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT) ? v9 : v9 & 2)
  {
    v12 = objc_opt_class();
    v13 = v12;
    v14 = [NSNumber numberWithInteger:v6];
    *location = 138412546;
    *&location[4] = v12;
    v32 = 2114;
    v33 = v14;
    LODWORD(v28) = 22;
    v27 = location;
    v15 = _os_log_send_and_compose_impl();

    if (v15)
    {
      v16 = [NSString stringWithCString:v15 encoding:4, location, v28];
      free(v15);
      v27 = v16;
      SSFileLog();
    }
  }

  else
  {
  }

  v17 = [[DeviceScorer alloc] initWithServerEndpoint:v6];
  deviceScorer = self->_deviceScorer;
  self->_deviceScorer = v17;

  if (self->_deviceScorer)
  {
LABEL_20:
    objc_initWeak(location, self);
    v19 = self->_deviceScorer;
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_1000AB924;
    v29[3] = &unk_100327770;
    objc_copyWeak(&v30, location);
    v29[4] = self;
    [(DeviceScorer *)v19 deviceScoreWithNonce:0 completion:v29];
    objc_destroyWeak(&v30);
    objc_destroyWeak(location);
    return;
  }

  v20 = +[SSLogConfig sharedDaemonConfig];
  if (!v20)
  {
    v20 = +[SSLogConfig sharedConfig];
  }

  shouldLog2 = [v20 shouldLog];
  if ([v20 shouldLogToDisk])
  {
    v22 = shouldLog2 | 2;
  }

  else
  {
    v22 = shouldLog2;
  }

  oSLogObject2 = [v20 OSLogObject];
  if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
  {
    v22 &= 2u;
  }

  if (!v22)
  {
    goto LABEL_31;
  }

  v24 = objc_opt_class();
  *location = 138543362;
  *&location[4] = v24;
  v25 = v24;
  LODWORD(v28) = 12;
  v26 = _os_log_send_and_compose_impl();

  if (v26)
  {
    oSLogObject2 = [NSString stringWithCString:v26 encoding:4, location, v28];
    free(v26);
    SSFileLog();
LABEL_31:
  }
}

- (void)_scoreDeviceRetryFailedV2Score
{
  v3 = [[DeviceScorer alloc] initWithServerEndpoint:1];
  deviceScorer = self->_deviceScorer;
  self->_deviceScorer = v3;

  if (self->_deviceScorer)
  {
    objc_initWeak(location, self);
    v5 = self->_deviceScorer;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000ABE94;
    v14[3] = &unk_100327798;
    objc_copyWeak(&v15, location);
    [(DeviceScorer *)v5 deviceScoreWithNonce:0 completion:v14];
    objc_destroyWeak(&v15);
    objc_destroyWeak(location);
  }

  else
  {
    v6 = +[SSLogConfig sharedDaemonConfig];
    if (!v6)
    {
      v6 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v6 shouldLog];
    if ([v6 shouldLogToDisk])
    {
      v8 = shouldLog | 2;
    }

    else
    {
      v8 = shouldLog;
    }

    oSLogObject = [v6 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v8 &= 2u;
    }

    if (v8)
    {
      LODWORD(location[0]) = 138543362;
      *(location + 4) = objc_opt_class();
      v10 = *(location + 4);
      LODWORD(v13) = 12;
      v11 = _os_log_send_and_compose_impl();

      if (v11)
      {
        v12 = [NSString stringWithCString:v11 encoding:4, location, v13];
        free(v11);
        SSFileLog();
      }
    }

    else
    {
    }
  }
}

- (void)_setChangedBuyParameters:(id)parameters fromDataProvider:(id)provider
{
  parametersCopy = parameters;
  authenticatedAccountDSID = [provider authenticatedAccountDSID];
  if (authenticatedAccountDSID)
  {
    v7 = [(PurchaseOperation *)self _accountWithUniqueIdentifier:authenticatedAccountDSID];
    if (v7)
    {
      v8 = v7;
      popBiometricToken = [v7 popBiometricToken];
      [(PurchaseOperation *)self lock];
      self->_didAuthenticate = 1;
      v10 = [popBiometricToken base64EncodedStringWithOptions:0];
      mToken = self->_mToken;
      self->_mToken = v10;

      [(PurchaseResponseInfo *)self->_responseInfo setDidPasswordAuthenticate:[(SSBiometricAuthenticationContext *)self->_biometricAuthenticationContext didFallbackToPassword]];
      [(PurchaseOperation *)self unlock];
    }
  }

  [(PurchaseResponseInfo *)self->_responseInfo setChangedBuyParameters:parametersCopy];
}

- (BOOL)_shouldDisableReversePush
{
  v3 = [SSURLBagContext contextWithBagType:[(PurchaseOperation *)self bagType]];
  v4 = +[ISURLBagCache sharedCache];
  v5 = [v4 URLBagForContext:v3];

  _buyParamProductType = [(PurchaseOperation *)self _buyParamProductType];
  if (_buyParamProductType)
  {
    v7 = [v5 valueForKey:@"aps-allowed-product-type"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = v7;
      v29 = &off_10034CCE0;
      v8 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v22 = v5;
        v9 = objc_alloc_init(NSMutableDictionary);
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v11 = v7;
        v12 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v24;
          do
          {
            for (i = 0; i != v13; i = i + 1)
            {
              if (*v24 != v14)
              {
                objc_enumerationMutation(v11);
              }

              [v9 setObject:*(*(&v23 + 1) + 8 * i) forKey:&off_10034CCE0];
            }

            v13 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
          }

          while (v13);
        }

        v5 = v22;
LABEL_18:
        v16 = [v9 objectForKeyedSubscript:_buyParamProductType];
        if (objc_opt_respondsToSelector())
        {
          v17 = +[AMSDefaults reversePushEnabled];
          if (v17 != 2)
          {
            if (v17 == 1)
            {
              v10 = 0;
LABEL_25:

              goto LABEL_26;
            }

            [objc_opt_class() _randomDouble];
            if (v18 > 0.0)
            {
              v19 = v18;
              [v16 doubleValue];
              v10 = v19 > v20;
              goto LABEL_25;
            }
          }
        }

        v10 = 1;
        goto LABEL_25;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v9 = 0;
        goto LABEL_18;
      }

      v8 = v7;
    }

    v9 = v8;
    goto LABEL_18;
  }

  v10 = 1;
LABEL_26:

  return v10;
}

+ (double)_randomDouble
{
  if (qword_100383DC8 == -1)
  {
  }

  else
  {
    sub_100271EF0();
  }

  return drand48();
}

- (void)_setMoveToiOS
{
  [(PurchaseOperation *)self lock];
  hTTPHeaders = [(SSURLRequestProperties *)self->_requestProperties HTTPHeaders];
  v7 = [hTTPHeaders objectForKey:SSHTTPHeaderUserAgent];

  v6 = 0;
  if (v7)
  {
    iSClientIdentifierMoveToiOS = [NSString stringWithFormat:@"%@/", ISClientIdentifierMoveToiOS];
    v5 = [v7 hasPrefix:iSClientIdentifierMoveToiOS];

    if (v5)
    {
      v6 = 1;
    }
  }

  self->_moveToiOS = v6;
  [(PurchaseOperation *)self unlock];
}

- (BOOL)_shouldSendKeyBagSyncData
{
  if (![(PurchaseOperation *)self shouldSendKeyBagSyncData])
  {
    return 0;
  }

  urlBagKey = [(PurchaseOperation *)self urlBagKey];
  v4 = urlBagKey;
  if (urlBagKey && ([urlBagKey isEqualToString:@"buyProduct"] & 1) == 0 && (objc_msgSend(v4, "isEqualToString:", @"backgroundUpdateProduct") & 1) == 0 && (objc_msgSend(v4, "isEqualToString:", @"updateProduct") & 1) == 0 && (objc_msgSend(v4, "isEqualToString:", @"redownloadProduct") & 1) == 0 && (objc_msgSend(v4, "isEqualToString:", @"redownloadAllTones") & 1) == 0 && !objc_msgSend(v4, "isEqualToString:", @"paidRedownloadProduct"))
  {
    v10 = [v4 isEqualToString:@"p2-in-app-buy"];

    if (v10)
    {
      goto LABEL_10;
    }

    return 0;
  }

LABEL_10:
  _URLBagContext = [(PurchaseOperation *)self _URLBagContext];
  v6 = +[ISURLBagCache sharedCache];
  v7 = [v6 URLBagForContext:_URLBagContext];

  v8 = [v7 valueForKey:kISURLBagAuthCanPostKey];
  if (v8)
  {
    if (objc_opt_respondsToSelector())
    {
      bOOLValue = [v8 BOOLValue];
    }

    else
    {
      bOOLValue = 0;
    }
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (BOOL)_shouldSendSBSyncData
{
  urlBagKey = [(PurchaseOperation *)self urlBagKey];
  if ([urlBagKey isEqualToString:@"buyProduct"] & 1) != 0 || (objc_msgSend(urlBagKey, "isEqualToString:", @"backgroundUpdateProduct") & 1) != 0 || (objc_msgSend(urlBagKey, "isEqualToString:", @"updateProduct") & 1) != 0 || (objc_msgSend(urlBagKey, "isEqualToString:", @"subDownload"))
  {
    v3 = 1;
  }

  else
  {
    v3 = [urlBagKey isEqualToString:@"sbDownload"];
  }

  return v3;
}

- (BOOL)_shouldUseClientAuthentication
{
  urlBagKey = [(PurchaseOperation *)self urlBagKey];
  if (!urlBagKey)
  {
    goto LABEL_19;
  }

  _URLBagContext = [(PurchaseOperation *)self _URLBagContext];
  v5 = [ISURLBag valueForKey:@"p2-client-authentication" inBagContext:_URLBagContext];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [ISURLBag urlForKey:urlBagKey inBagContext:_URLBagContext];
    path = [v6 path];
    if (path)
    {
      v8 = path;
      v9 = SSVURLPathMatchesActionDictionary();

      if ((v9 & 1) == 0)
      {
        goto LABEL_19;
      }

LABEL_8:
      v11 = +[SSLogConfig sharedDaemonConfig];
      if (!v11)
      {
        v11 = +[SSLogConfig sharedConfig];
      }

      shouldLog = [v11 shouldLog];
      if ([v11 shouldLogToDisk])
      {
        v13 = shouldLog | 2;
      }

      else
      {
        v13 = shouldLog;
      }

      oSLogObject = [v11 OSLogObject];
      if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
      {
        v13 &= 2u;
      }

      if (v13)
      {
        *v25 = 138412546;
        *&v25[4] = objc_opt_class();
        *&v25[12] = 2112;
        *&v25[14] = urlBagKey;
        v15 = *&v25[4];
        LODWORD(v24) = 22;
        LOBYTE(v16) = 1;
        v17 = _os_log_send_and_compose_impl();

        if (!v17)
        {
          goto LABEL_30;
        }

        v18 = [NSString stringWithCString:v17 encoding:4, v25, v24, *v25, *&v25[16]];
        free(v17);
        SSFileLog();
      }

      else
      {
      }

      LOBYTE(v16) = 1;
      goto LABEL_30;
    }

    goto LABEL_18;
  }

  v6 = CFPreferencesCopyAppValue(@"p2-client-authentication", kSSUserDefaultsIdentifier);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_18:

    goto LABEL_19;
  }

  v10 = [v6 containsObject:urlBagKey];

  if (v10)
  {
    goto LABEL_8;
  }

LABEL_19:
  v11 = +[SSLogConfig sharedDaemonConfig];
  if (!v11)
  {
    v11 = +[SSLogConfig sharedConfig];
  }

  shouldLog2 = [v11 shouldLog];
  if ([v11 shouldLogToDisk])
  {
    v20 = shouldLog2 | 2;
  }

  else
  {
    v20 = shouldLog2;
  }

  oSLogObject2 = [v11 OSLogObject];
  if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEBUG))
  {
    v20 &= 2u;
  }

  if (!v20)
  {
    goto LABEL_29;
  }

  *v25 = 138412546;
  *&v25[4] = objc_opt_class();
  *&v25[12] = 2112;
  *&v25[14] = urlBagKey;
  v22 = *&v25[4];
  LODWORD(v24) = 22;
  v16 = _os_log_send_and_compose_impl();

  if (v16)
  {
    oSLogObject2 = [NSString stringWithCString:v16 encoding:4, v25, v24, *v25, *&v25[8]];
    free(v16);
    SSFileLog();
LABEL_29:

    LOBYTE(v16) = 0;
  }

LABEL_30:

  return v16;
}

- (id)_URLBagContext
{
  v3 = [SSURLBagContext contextWithBagType:[(PurchaseOperation *)self bagType]];
  [v3 setAllowsBootstrapCellularData:{-[PurchaseOperation allowsBootstrapCellularData](self, "allowsBootstrapCellularData")}];
  hTTPHeaders = [(SSURLRequestProperties *)self->_requestProperties HTTPHeaders];
  v5 = SSHTTPHeaderUserAgent;
  v6 = [hTTPHeaders objectForKey:SSHTTPHeaderUserAgent];
  [v3 setValue:v6 forHTTPHeaderField:v5];

  return v3;
}

@end