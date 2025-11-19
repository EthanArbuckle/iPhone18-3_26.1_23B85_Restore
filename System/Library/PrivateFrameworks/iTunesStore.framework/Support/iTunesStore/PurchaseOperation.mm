@interface PurchaseOperation
+ (double)_randomDouble;
+ (void)reportAnonymousPings:(id)a3;
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
- (PurchaseOperation)initWithPurchase:(id)a3;
- (SSAuthenticationContext)authenticationContext;
- (SSURLConnectionResponse)URLResponse;
- (id)_URLBagContext;
- (id)_account;
- (id)_accountWithUniqueIdentifier:(id)a3;
- (id)_buyParamProductType;
- (id)_countryCode;
- (id)_deviceScoreMetricsParam;
- (id)_fairPlaySubscriptionController;
- (id)_newPurchaseRequestOperation;
- (id)_newRequestParameters;
- (id)_priceFromBuyParams;
- (id)_recordEngagementEventWithResult:(id)a3 error:(id)a4;
- (id)authenticatedAccountDSID;
- (int64_t)_purchaseType;
- (void)_addFairPlayToRequestProperties:(id)a3 withAccountIdentifier:(unint64_t)a4;
- (void)_continueTouchIDSessionWithDialog:(id)a3;
- (void)_handleFailureForOperation:(id)a3;
- (void)_performApplePayClassicCheck;
- (void)_performAutoEnrollmentCheck;
- (void)_performDelayedGotoForOperation:(id)a3;
- (void)_performMachineDataActionForURLResponse:(id)a3;
- (void)_runDialogOperationForDialog:(id)a3;
- (void)_runPurchaseRequest;
- (void)_scoreDevice;
- (void)_scoreDeviceRetryFailedV2Score;
- (void)_setChangedBuyParameters:(id)a3 fromDataProvider:(id)a4;
- (void)_setMoveToiOS;
- (void)operation:(id)a3 didAuthenticateWithDSID:(id)a4;
- (void)operation:(id)a3 shouldAuthenticateWithContext:(id)a4 responseHandler:(id)a5;
- (void)operation:(id)a3 willSendRequest:(id)a4;
- (void)run;
- (void)sender:(id)a3 willSendChallenge:(id)a4 andSignature:(id)a5 andPaymentTokenData:(id)a6 andFpanID:(id)a7 isExtendedAction:(BOOL)a8 isPayment:(BOOL)a9 additionalHeaders:(id)a10;
- (void)setAffiliateIdentifier:(id)a3;
- (void)setAuthenticationContext:(id)a3;
- (void)setBackgroundPurchase:(BOOL)a3;
- (void)setClientIdentifier:(id)a3;
- (void)setClientIdentifierHeader:(id)a3;
- (void)setOriginalProductOwnerAccountDSID:(id)a3;
- (void)setPlaybackRequest:(BOOL)a3;
- (void)setUrlBagKey:(id)a3;
- (void)setUseRemoteAuthentication:(BOOL)a3;
@end

@implementation PurchaseOperation

- (PurchaseOperation)initWithPurchase:(id)a3
{
  v4 = a3;
  v39.receiver = self;
  v39.super_class = PurchaseOperation;
  v5 = [(PurchaseOperation *)&v39 init];
  if (v5)
  {
    v6 = [v4 affiliateIdentifier];
    affiliateIdentifier = v5->_affiliateIdentifier;
    v5->_affiliateIdentifier = v6;

    v8 = [SSAuthenticationContext alloc];
    v9 = [v4 accountIdentifier];
    v10 = [v8 initWithAccountIdentifier:v9];
    authenticationContext = v5->_authenticationContext;
    v5->_authenticationContext = v10;

    v12 = objc_alloc_init(SSBiometricAuthenticationContext);
    biometricAuthenticationContext = v5->_biometricAuthenticationContext;
    v5->_biometricAuthenticationContext = v12;

    v14 = [v4 buyParameters];
    buyParameters = v5->_buyParameters;
    v5->_buyParameters = v14;

    v16 = [v4 valueForDownloadProperty:SSDownloadPropertyKind];
    downloadKind = v5->_downloadKind;
    v5->_downloadKind = v16;

    v5->_didConsumeScore = 0;
    v5->_displaysOnLockScreen = [v4 displaysOnLockScreen];
    v5->_ignoresForcedPasswordRestriction = [v4 ignoresForcedPasswordRestriction];
    v5->_isBackgroundPurchase = [v4 isBackgroundPurchase];
    v5->_isPlaybackRequest = [v4 isPlaybackRequest];
    v18 = [(SSAuthenticationContext *)v5->_authenticationContext logUUID];
    logKey = v5->_logKey;
    v5->_logKey = v18;

    v20 = +[SSDevice currentDevice];
    v21 = [v20 storeFrontIdentifier];
    originatingStorefront = v5->_originatingStorefront;
    v5->_originatingStorefront = v21;

    v5->_preauthenticated = [v4 isPreauthenticated];
    v23 = [v4 requestProperties];
    v24 = [v23 copy];
    requestProperties = v5->_requestProperties;
    v5->_requestProperties = v24;

    v26 = [v4 valueForDownloadProperty:SSDownloadPropertyShouldSuppressErrorDialogs];
    v5->_suppressDialogs = [v26 BOOLValue];

    v5->_silentAuthCount = 0;
    v5->_shouldCancelBiometricTokenUpdate = +[ISBiometricStore tokenUpdateState]== 1;
    v27 = [v4 tidHeaders];
    if (v27)
    {
      [(SSBiometricAuthenticationContext *)v5->_biometricAuthenticationContext setIsPayment:1];
      [(SSBiometricAuthenticationContext *)v5->_biometricAuthenticationContext setShouldContinueTouchIDSession:1];
      v28 = [v27 objectForKeyedSubscript:SSHTTPHeaderXAppleTouchIDChallenge];
      v29 = [v27 objectForKeyedSubscript:SSHTTPHeaderXAppleTouchIDSignature];
      v30 = [v27 objectForKeyedSubscript:SSHTTPHeaderXAppleTouchIDAction];
      if (v28)
      {
        [(SSBiometricAuthenticationContext *)v5->_biometricAuthenticationContext setChallenge:v28];
      }

      if (v29)
      {
        [(SSBiometricAuthenticationContext *)v5->_biometricAuthenticationContext setSignature:v29];
      }

      v31 = [v30 uppercaseString];
      v32 = [v31 isEqualToString:@"FB"];

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
      v34 = [(PurchaseOperation *)v5 clientAuditTokenData];
      v35 = [(PurchaseOperation *)v5 clientIdentifier];
      v36 = [(AMSPurchaseShim *)v33 initWithPurchase:v4 auditTokenData:v34 clientIdentifier:v35];
      shim = v5->_shim;
      v5->_shim = v36;
    }
  }

  return v5;
}

+ (void)reportAnonymousPings:(id)a3
{
  v3 = a3;
  v4 = [ISWeakLinkedClassForString() sharedConnection];
  v5 = [v4 isAppAnalyticsAllowed];

  if (v5)
  {
    v6 = +[ISOperationQueue mainQueue];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v16 = v3;
    v7 = v3;
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

    v3 = v16;
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
  v3 = [(PurchaseOperation *)self authenticationContext];
  v4 = [v3 logUUID];

  if (v4)
  {
    v5 = [(PurchaseOperation *)self authenticationContext];
    v6 = [v5 logUUID];
  }

  else
  {
    v6 = self->_logKey;
  }

  return v6;
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

- (void)setAffiliateIdentifier:(id)a3
{
  v6 = a3;
  [(PurchaseOperation *)self lock];
  if (self->_affiliateIdentifier != v6)
  {
    v4 = [(NSString *)v6 copy];
    affiliateIdentifier = self->_affiliateIdentifier;
    self->_affiliateIdentifier = v4;
  }

  [(PurchaseOperation *)self unlock];
}

- (void)setAuthenticationContext:(id)a3
{
  v6 = a3;
  [(PurchaseOperation *)self lock];
  if (self->_authenticationContext != v6)
  {
    v4 = [(SSAuthenticationContext *)v6 copy];
    authenticationContext = self->_authenticationContext;
    self->_authenticationContext = v4;
  }

  [(PurchaseOperation *)self unlock];
}

- (void)setBackgroundPurchase:(BOOL)a3
{
  [(PurchaseOperation *)self lock];
  self->_isBackgroundPurchase = a3;

  [(PurchaseOperation *)self unlock];
}

- (void)setPlaybackRequest:(BOOL)a3
{
  [(PurchaseOperation *)self lock];
  self->_isPlaybackRequest = a3;

  [(PurchaseOperation *)self unlock];
}

- (void)setClientIdentifier:(id)a3
{
  v5 = a3;
  [(PurchaseOperation *)self lock];
  if (self->_clientIdentifier != v5)
  {
    objc_storeStrong(&self->_clientIdentifier, a3);
  }

  [(PurchaseOperation *)self unlock];
}

- (void)setClientIdentifierHeader:(id)a3
{
  v6 = a3;
  [(PurchaseOperation *)self lock];
  if (self->_clientIdentifierHeader != v6)
  {
    v4 = [(NSString *)v6 copy];
    clientIdentifierHeader = self->_clientIdentifierHeader;
    self->_clientIdentifierHeader = v4;
  }

  [(PurchaseOperation *)self unlock];
}

- (void)setOriginalProductOwnerAccountDSID:(id)a3
{
  v6 = a3;
  [(PurchaseOperation *)self lock];
  if (self->_originalProductOwnerAccountDSID != v6)
  {
    v4 = [(NSNumber *)v6 copy];
    originalProductOwnerAccountDSID = self->_originalProductOwnerAccountDSID;
    self->_originalProductOwnerAccountDSID = v4;
  }

  [(PurchaseOperation *)self unlock];
}

- (void)setUrlBagKey:(id)a3
{
  v6 = a3;
  [(PurchaseOperation *)self lock];
  if (self->_urlBagKey != v6)
  {
    v4 = [(NSString *)v6 copy];
    urlBagKey = self->_urlBagKey;
    self->_urlBagKey = v4;
  }

  [(PurchaseOperation *)self unlock];
}

- (void)setUseRemoteAuthentication:(BOOL)a3
{
  [(PurchaseOperation *)self lock];
  self->_useRemoteAuthentication = a3;

  [(PurchaseOperation *)self unlock];
}

- (NSDictionary)tidHeaders
{
  [(PurchaseOperation *)self lock];
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = [(SSBiometricAuthenticationContext *)self->_biometricAuthenticationContext challenge];
  v5 = [(SSBiometricAuthenticationContext *)self->_biometricAuthenticationContext signature];
  v6 = [(SSBiometricAuthenticationContext *)self->_biometricAuthenticationContext didFallbackToPassword];
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    [v3 setObject:v4 forKey:SSHTTPHeaderXAppleTouchIDChallenge];
    [v3 setObject:v5 forKey:SSHTTPHeaderXAppleTouchIDSignature];
  }

  if (v6)
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
  v3 = self->_accountID;
  if (!v3)
  {
    v3 = [(SSAuthenticationContext *)self->_authenticationContext requiredUniqueIdentifier];
  }

  [(PurchaseOperation *)self unlock];

  return v3;
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

    v9 = [v8 shouldLog];
    if ([v8 shouldLogToDisk])
    {
      v10 = v9 | 2;
    }

    else
    {
      v10 = v9;
    }

    v11 = [v8 OSLogObject];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
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

      v11 = [NSString stringWithCString:v16 encoding:4, &v129, v121];
      free(v16);
      v119 = v11;
      SSFileLog();
    }

    else
    {
      v6 = v7;
    }

    goto LABEL_62;
  }

  v17 = [(PurchaseOperation *)self buyParameters];
  v18 = [NSURL copyDictionaryForQueryString:v17 unescapedValues:1];

  v124 = v18;
  v125 = [v18 objectForKey:@"salableAdamId"];
  v19 = &CFDictionaryGetValue_ptr;
  v20 = +[SSLogConfig sharedDaemonConfig];
  if (!v20)
  {
    v20 = +[SSLogConfig sharedConfig];
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
    v25 = objc_opt_class();
    v26 = v25;
    v27 = [(PurchaseOperation *)self logKey];
    v129 = 138543874;
    v130 = v25;
    v131 = 2114;
    v132 = v27;
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

    v23 = [NSString stringWithCString:v28 encoding:4, &v129, v121];
    free(v28);
    v119 = v23;
    SSFileLog();
  }

LABEL_26:
  v29 = [(PurchaseOperation *)self _URLBagContext];
  v30 = [(PurchaseOperation *)self clientAuditTokenData];
  [v29 setClientAuditTokenData:v30];

  v127 = 0;
  v123 = v29;
  v31 = [(PurchaseOperation *)self loadURLBagWithContext:v29 returningError:&v127];
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

  v34 = [v33 shouldLog];
  if ([v33 shouldLogToDisk])
  {
    v35 = v34 | 2;
  }

  else
  {
    v35 = v34;
  }

  v36 = [v33 OSLogObject];
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
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
    v36 = [NSString stringWithCString:v40 encoding:4, &v129, v121];
    free(v40);
    v119 = v36;
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

  v43 = [(PurchaseOperation *)self _purchaseType];
  v44 = +[SSLogConfig sharedDaemonConfig];
  if (!v44)
  {
    v44 = +[SSLogConfig sharedConfig];
  }

  v45 = [v44 shouldLog];
  if ([v44 shouldLogToDisk])
  {
    v46 = v45 | 2;
  }

  else
  {
    v46 = v45;
  }

  v47 = [v44 OSLogObject];
  if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
  {
    v48 = v46;
  }

  else
  {
    v48 = v46 & 2;
  }

  if (v48)
  {
    v49 = [(PurchaseOperation *)self logKey];
    v50 = [NSNumber numberWithInteger:v43];
    v129 = 138543618;
    v130 = v49;
    v131 = 2114;
    v132 = v50;
    LODWORD(v121) = 22;
    v120 = &v129;
    v51 = _os_log_send_and_compose_impl();

    if (!v51)
    {
      goto LABEL_57;
    }

    v47 = [NSString stringWithCString:v51 encoding:4, &v129, v121, v122];
    free(v51);
    v120 = v47;
    SSFileLog();
  }

LABEL_57:
  if (v43 != 3 && v43)
  {
    v52 = 0;
  }

  else
  {
    v44 = [(PurchaseOperation *)self buyParameters];
    v52 = [v44 containsString:@"STDRDL"] ^ 1;
  }

  v19 = &CFDictionaryGetValue_ptr;
  if (v43 == 3 || !v43)
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

    v54 = [(PurchaseResponseInfo *)self->_responseInfo changedBuyParameters];
    if (([(PurchaseOperation *)self success]& 1) != 0 || ([(PurchaseOperation *)self isCancelled]& 1) != 0)
    {
      break;
    }

    v55 = [(PurchaseResponseInfo *)self->_responseInfo dialog];

    if (v55)
    {
      v56 = [v19[412] sharedDaemonConfig];
      if (!v56)
      {
        v56 = [v19[412] sharedConfig];
      }

      v57 = [v56 shouldLog];
      if ([v56 shouldLogToDisk])
      {
        v57 |= 2u;
      }

      v58 = [v56 OSLogObject];
      if (!os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
      {
        v57 &= 2u;
      }

      if (v57)
      {
        goto LABEL_85;
      }

      goto LABEL_87;
    }

    if ([(PurchaseResponseInfo *)self->_responseInfo shouldRetryForDelayedGoto])
    {
      v62 = [(PurchaseResponseInfo *)self->_responseInfo delayedGotoRetryCount];
      if (v62 > 4)
      {
        break;
      }

      v63 = v62;
      v64 = [v19[412] sharedDaemonConfig];
      if (!v64)
      {
        v64 = [v19[412] sharedConfig];
      }

      v65 = [v64 shouldLog];
      if ([v64 shouldLogToDisk])
      {
        v65 |= 2u;
      }

      v66 = [v64 OSLogObject];
      if (!os_log_type_enabled(v66, OS_LOG_TYPE_INFO))
      {
        v65 &= 2u;
      }

      if (v65)
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
          v66 = [NSString stringWithCString:v69 encoding:4, &v129, v121];
          free(v69);
          v120 = v66;
          SSFileLog();
          goto LABEL_100;
        }
      }

      else
      {
LABEL_100:
      }

      if (v54)
      {
        [(PurchaseOperation *)self setBuyParameters:v54];
      }

      [(PurchaseResponseInfo *)self->_responseInfo setDelayedGotoRetryCount:v63 + 1, v120];
      v19 = &CFDictionaryGetValue_ptr;
      goto LABEL_116;
    }

    if (v54)
    {
      v70 = [v19[412] sharedDaemonConfig];
      if (!v70)
      {
        v70 = [v19[412] sharedConfig];
      }

      v71 = [v70 shouldLog];
      if ([v70 shouldLogToDisk])
      {
        v71 |= 2u;
      }

      v72 = [v70 OSLogObject];
      if (!os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
      {
        v71 &= 2u;
      }

      if (v71)
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
          v72 = [NSString stringWithCString:v75 encoding:4, &v129, v121];
          free(v75);
          v120 = v72;
          SSFileLog();
          goto LABEL_114;
        }
      }

      else
      {
LABEL_114:
      }

      [(PurchaseOperation *)self setBuyParameters:v54];
      goto LABEL_116;
    }

    v76 = [(PurchaseResponseInfo *)self->_responseInfo machineDataSyncState];

    if (v76)
    {
      v56 = [v19[412] sharedDaemonConfig];
      if (!v56)
      {
        v56 = [v19[412] sharedConfig];
      }

      v77 = [v56 shouldLog];
      if ([v56 shouldLogToDisk])
      {
        v77 |= 2u;
      }

      v58 = [v56 OSLogObject];
      if (!os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
      {
        v77 &= 2u;
      }

      if (v77)
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
          v58 = [NSString stringWithCString:v61 encoding:4];
          free(v61);
          v120 = v58;
          SSFileLog();
          goto LABEL_87;
        }

LABEL_88:

        goto LABEL_116;
      }

LABEL_87:

      goto LABEL_88;
    }

    v78 = [(PurchaseResponseInfo *)self->_responseInfo shouldRetryForMachineData];
    v79 = self->_responseInfo;
    if (v78)
    {
      v80 = [(PurchaseResponseInfo *)v79 machineDataRetryCount];
      if (v80 > 0)
      {
        break;
      }

      v81 = v80;
      v82 = [v19[412] sharedDaemonConfig];
      if (!v82)
      {
        v82 = [v19[412] sharedConfig];
      }

      v83 = [v82 shouldLog];
      if ([v82 shouldLogToDisk])
      {
        v83 |= 2u;
      }

      v84 = [v82 OSLogObject];
      if (!os_log_type_enabled(v84, OS_LOG_TYPE_INFO))
      {
        v83 &= 2u;
      }

      if (v83)
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
          v84 = [NSString stringWithCString:v87 encoding:4, &v129, v121];
          free(v87);
          v120 = v84;
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
    v89 = [(PurchaseOperation *)self logKey];
    [v88 setLogUUID:v89];

    authenticationContext = self->_authenticationContext;
    self->_authenticationContext = v88;

    HIDWORD(v121) = 1;
LABEL_116:
    if (self->_silentAuthCount >= 3)
    {
      v91 = [v19[412] sharedDaemonConfig];
      if (!v91)
      {
        v91 = [v19[412] sharedConfig];
      }

      v92 = [v91 shouldLog];
      if ([v91 shouldLogToDisk])
      {
        v93 = v92 | 2;
      }

      else
      {
        v93 = v92;
      }

      v94 = [v91 OSLogObject];
      if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
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
          v94 = [NSString stringWithCString:v98 encoding:4, &v129, v121];
          free(v98);
          v120 = v94;
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
  v99 = [(PurchaseOperation *)self rawOutput];
  v100 = [(PurchaseOperation *)self error];
  v101 = [(PurchaseOperation *)self _recordEngagementEventWithResult:v99 error:v100];

  v126[0] = _NSConcreteStackBlock;
  v126[1] = 3221225472;
  v126[2] = sub_1000A2E10;
  v126[3] = &unk_100327110;
  v126[4] = self;
  [v101 addSuccessBlock:v126];
  v102 = [(PurchaseOperation *)self error];

  v103 = [v19[412] sharedDaemonConfig];
  v104 = v103;
  if (v102)
  {
    if (!v103)
    {
      v104 = [v19[412] sharedConfig];
    }

    v105 = [v104 shouldLog];
    if ([v104 shouldLogToDisk])
    {
      v105 |= 2u;
    }

    v106 = [v104 OSLogObject];
    if (!os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
    {
      v105 &= 2u;
    }

    if (v105)
    {
      v107 = objc_opt_class();
      v108 = v107;
      v109 = [(PurchaseOperation *)self logKey];
      v110 = [(PurchaseOperation *)self error];
      v129 = 138543874;
      v130 = v107;
      v131 = 2114;
      v132 = v109;
      v133 = 2114;
      v134 = v110;
      LODWORD(v121) = 32;
      v111 = _os_log_send_and_compose_impl();

      goto LABEL_174;
    }

LABEL_176:
  }

  else
  {
    if (!v103)
    {
      v104 = [v19[412] sharedConfig];
    }

    v112 = [v104 shouldLog];
    if ([v104 shouldLogToDisk])
    {
      v112 |= 2u;
    }

    v106 = [v104 OSLogObject];
    if (!os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
    {
      v112 &= 2u;
    }

    if (!v112)
    {
      goto LABEL_176;
    }

    v113 = objc_opt_class();
    v114 = v113;
    v115 = [(PurchaseOperation *)self logKey];
    v129 = 138543618;
    v130 = v113;
    v131 = 2114;
    v132 = v115;
    LODWORD(v121) = 22;
    v111 = _os_log_send_and_compose_impl();

LABEL_174:
    if (v111)
    {
      v106 = [NSString stringWithCString:v111 encoding:4, &v129, v121];
      free(v111);
      SSFileLog();
      goto LABEL_176;
    }
  }

  v116 = [(DeviceScorer *)self->_deviceScorer context];
  v117 = [v116 serverEndpoint];

  if (v117 == 2)
  {
    [(DeviceScorer *)self->_deviceScorer didConsumeDeviceScore:[(PurchaseOperation *)self didConsumeScore]];
  }

  v118 = self->_responseInfo;
  self->_responseInfo = 0;

  v6 = v124;
LABEL_180:
}

- (void)operation:(id)a3 didAuthenticateWithDSID:(id)a4
{
  v20 = a3;
  v6 = a4;
  v7 = [v20 _requestProperties];
  [v7 URLBagType];
  if (!SSAccountScopeForURLBagType())
  {
    v9 = +[SSAccountStore defaultStore];
    v10 = [v9 accountWithUniqueIdentifier:v6 scope:0];
    goto LABEL_5;
  }

  v8 = [ACAccountStore ams_sharedAccountStoreForMediaType:AMSAccountMediaTypeAppStoreSandbox];
  v9 = [v8 ams_iTunesAccountWithDSID:v6];

  if (v9)
  {
    v10 = [[SSAccount alloc] initWithBackingAccount:v9];
LABEL_5:
    v11 = v10;
    goto LABEL_7;
  }

  v11 = 0;
LABEL_7:

  if (v6)
  {
    -[PurchaseOperation _addFairPlayToRequestProperties:withAccountIdentifier:](self, "_addFairPlayToRequestProperties:withAccountIdentifier:", v7, [v6 unsignedLongLongValue]);
  }

  v12 = [v11 popBiometricToken];
  if (!v12)
  {
    [v20 setIgnorePreexistingSecureToken:0];
  }

  [(PurchaseOperation *)self lock];
  v13 = [v12 base64EncodedStringWithOptions:0];
  objc_storeStrong(&self->_mToken, v13);
  [(PurchaseResponseInfo *)self->_responseInfo setDidPasswordAuthenticate:[(SSBiometricAuthenticationContext *)self->_biometricAuthenticationContext didFallbackToPassword]];
  [(PurchaseOperation *)self unlock];
  [v7 setValue:v13 forHTTPHeaderField:SSHTTPHeaderXToken];
  v14 = [NSNumber numberWithBool:1];
  [v7 setValue:v14 forRequestParameter:@"hasBeenAuthedForBuy"];

  [(PurchaseOperation *)self lock];
  authenticationContext = self->_authenticationContext;
  if (authenticationContext)
  {
    v16 = [(SSAuthenticationContext *)authenticationContext requiredUniqueIdentifier];

    v17 = 0;
    if (!v16 && v11)
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
    [v20 setAuthenticationContext:v17];
  }
}

- (void)operation:(id)a3 shouldAuthenticateWithContext:(id)a4 responseHandler:(id)a5
{
  v12 = a4;
  v7 = a5;
  if (![(PurchaseOperation *)self useRemoteAuthentication])
  {
    v8 = SSError();
    v7[2](v7, 0, v8);
  }

  v9 = [(PurchaseOperation *)self remoteAuthenticationHandler];
  v10 = v9;
  if (v9)
  {
    (*(v9 + 16))(v9, v12, v7);
  }

  else
  {
    v11 = SSError();
    v7[2](v7, 0, v11);
  }
}

- (void)operation:(id)a3 willSendRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 valueForHTTPHeaderField:SSHTTPHeaderXAppleMD];

  if (!v8)
  {
    v9 = [v6 _accountIdentifier];
    if (v9)
    {
LABEL_3:
      [v9 unsignedLongLongValue];
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
        if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
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

            v9 = &off_10034BC88;
            goto LABEL_3;
          }

          v14 = [NSString stringWithCString:v16 encoding:4, &v19, v18, v19];
          free(v16);
          v17 = v14;
          SSFileLog();
        }

        goto LABEL_18;
      }
    }
  }

LABEL_4:
}

- (void)sender:(id)a3 willSendChallenge:(id)a4 andSignature:(id)a5 andPaymentTokenData:(id)a6 andFpanID:(id)a7 isExtendedAction:(BOOL)a8 isPayment:(BOOL)a9 additionalHeaders:(id)a10
{
  v10 = a8;
  v23 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a10;
  if (v16)
  {
    [(SSBiometricAuthenticationContext *)self->_biometricAuthenticationContext setChallenge:v16];
  }

  if (v17)
  {
    [(SSBiometricAuthenticationContext *)self->_biometricAuthenticationContext setSignature:v17];
  }

  if (v18)
  {
    [(SSBiometricAuthenticationContext *)self->_biometricAuthenticationContext setPaymentTokenData:v18];
  }

  if (v19)
  {
    [(SSBiometricAuthenticationContext *)self->_biometricAuthenticationContext setFpanID:v19];
  }

  [(SSBiometricAuthenticationContext *)self->_biometricAuthenticationContext setIsExtendedAction:v10];
  [(SSBiometricAuthenticationContext *)self->_biometricAuthenticationContext setIsPayment:a9];
  if (v20)
  {
    v21 = [v20 objectForKeyedSubscript:SSHTTPHeaderXAppleAMD];
    if (v21)
    {
      [(SSBiometricAuthenticationContext *)self->_biometricAuthenticationContext setXAppleAMDHeader:v21];
    }

    v22 = [v20 objectForKeyedSubscript:SSHTTPHeaderXAppleAMDM];
    if (v22)
    {
      [(SSBiometricAuthenticationContext *)self->_biometricAuthenticationContext setXAppleAMDMHeader:v22];
    }
  }
}

- (id)_account
{
  v3 = +[SSAccountStore defaultStore];
  v4 = [(PurchaseOperation *)self authenticationContext];
  v5 = [v4 requiredUniqueIdentifier];
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v7 = [v3 activeAccount];
    v6 = [v7 uniqueIdentifier];

    if (!v6)
    {
      v10 = 0;
      goto LABEL_8;
    }
  }

  v8 = [v4 accountScope];
  if (!v8 || ([v3 accountWithUniqueIdentifier:v6 scope:v8], (v9 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v9 = [v3 accountWithUniqueIdentifier:v6];
  }

  v10 = v9;
LABEL_8:

  return v10;
}

- (id)_accountWithUniqueIdentifier:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(PurchaseOperation *)self authenticationContext];
    v6 = [v5 accountScope];
    if (!v6 || (v7 = v6, +[SSAccountStore defaultStore](SSAccountStore, "defaultStore"), v8 = objc_claimAutoreleasedReturnValue(), [v8 accountWithUniqueIdentifier:v4 scope:v7], v9 = objc_claimAutoreleasedReturnValue(), v8, !v9))
    {
      v10 = +[SSAccountStore defaultStore];
      v9 = [v10 accountWithUniqueIdentifier:v4];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_addFairPlayToRequestProperties:(id)a3 withAccountIdentifier:(unint64_t)a4
{
  v6 = a3;
  if ([(PurchaseOperation *)self _shouldSendKeyBagSyncData])
  {
    v7 = sub_1000B18E8(a4, 1);
    v8 = [(__CFData *)v7 base64EncodedStringWithOptions:0];
    if (v8)
    {
      [v6 setValue:v8 forRequestParameter:@"kbsync"];
    }
  }

  v9 = [NSNumber numberWithUnsignedLongLong:a4];
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

    v13 = [v12 shouldLog];
    if ([v12 shouldLogToDisk])
    {
      v14 = v13 | 2;
    }

    else
    {
      v14 = v13;
    }

    v15 = [v12 OSLogObject];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
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

      v15 = [NSString stringWithCString:v17 encoding:4, &v32, v26];
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
    v19 = [(PurchaseOperation *)self _fairPlaySubscriptionController];
    v27 = 0;
    v28 = 0;
    [v19 generateSubscriptionBagRequestWithAccountUniqueIdentifier:a4 transactionType:312 machineIDData:v12 returningSubscriptionBagData:&v28 error:&v27];
    v20 = v28;
    v21 = v27;
    if (!v21)
    {
      v22 = [v20 base64EncodedStringWithOptions:0];
      if (v22)
      {
        [v6 setValue:v22 forRequestParameter:@"sbsync"];
      }
    }
  }

  if (v12)
  {
    v23 = [v12 base64EncodedStringWithOptions:0];
    if (v23)
    {
      [v6 setValue:v23 forHTTPHeaderField:SSHTTPHeaderXAppleAMDM];
    }
  }

  if (v30)
  {
    v24 = [NSData alloc];
    v15 = [v24 initWithBytesNoCopy:v30 length:v29 freeWhenDone:0];
    v25 = [v15 base64EncodedStringWithOptions:0];
    if (v25)
    {
      [v6 setValue:v25 forHTTPHeaderField:SSHTTPHeaderXAppleAMD];
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
  v3 = [(PurchaseOperation *)self buyParameters];
  v4 = [NSURL copyDictionaryForQueryString:v3 unescapedValues:1];

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
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
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

      v9 = [NSString stringWithCString:v11 encoding:4, &v14, v13, v14];
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
        v8 = [(PurchaseOperation *)self clientIdentifier];
        LOBYTE(v7) = [v7 isEqualToString:v8];

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

- (void)_continueTouchIDSessionWithDialog:(id)a3
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [a3 buttons];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v11 + 1) + 8 * v8) dictionary];
        v10 = [v9 objectForKey:@"tidContinue"];

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v10 BOOLValue])
        {

          [(SSBiometricAuthenticationContext *)self->_biometricAuthenticationContext setShouldContinueTouchIDSession:1];
          return;
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
  v5 = [v4 URLBag];
  v6 = v5;
  if (!v5)
  {
    v9 = +[SSLogConfig sharedDaemonConfig];
    if (!v9)
    {
      v9 = +[SSLogConfig sharedConfig];
    }

    v15 = [v9 shouldLog];
    if ([v9 shouldLogToDisk])
    {
      v16 = v15 | 2;
    }

    else
    {
      v16 = v15;
    }

    v17 = [v9 OSLogObject];
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
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
        v8 = 0;
        goto LABEL_25;
      }

      v17 = [NSString stringWithCString:v19 encoding:4, v22, v21, *v22, *&v22[8]];
      free(v19);
      SSFileLog();
    }

    goto LABEL_24;
  }

  v7 = [v5 valueForKey:@"countryCode"];
  v8 = [v7 uppercaseString];

  v9 = +[SSLogConfig sharedDaemonConfig];
  if (!v9)
  {
    v9 = +[SSLogConfig sharedConfig];
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
  if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v11 &= 2u;
  }

  if (v11)
  {
    *v22 = 138543618;
    *&v22[4] = objc_opt_class();
    *&v22[12] = 2114;
    *&v22[14] = v8;
    v13 = *&v22[4];
    LODWORD(v21) = 22;
    v14 = _os_log_send_and_compose_impl();

    if (!v14)
    {
      goto LABEL_25;
    }

    v12 = [NSString stringWithCString:v14 encoding:4, v22, v21, *v22, *&v22[16]];
    free(v14);
    SSFileLog();
  }

LABEL_25:

  return v8;
}

- (id)_deviceScoreMetricsParam
{
  if (+[DeviceScorer deviceScoringSupported])
  {
    v3 = [(PurchaseOperation *)self deviceScore];
    v4 = [v3 length];
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

- (void)_handleFailureForOperation:(id)a3
{
  v4 = a3;
  v5 = [v4 dataProvider];
  v6 = [v5 output];
  v96 = v5;
  v7 = [v5 redirectActionParameters];
  v8 = [v6 objectForKey:kISDialogKey];
  v9 = [v6 objectForKey:kISFailureTypeKey];
  v10 = &selRef_parser_foundUnparsedEntityDeclarationWithName_publicID_systemID_notationName_;
  if ([v9 integerValue] == 3800 && self->_originalProductOwnerAccountDSID)
  {
    [(PurchaseResponseInfo *)self->_responseInfo setShouldRetryWithOriginalProductOwnerAccount:1];
    goto LABEL_90;
  }

  if (v7)
  {
    v11 = [(PurchaseOperation *)self buyParameters];
    v12 = [v7 isEqualToString:v11];

    if ((v12 & 1) == 0)
    {
      v52 = +[SSLogConfig sharedDaemonConfig];
      if (!v52)
      {
        v52 = +[SSLogConfig sharedConfig];
      }

      v95 = v9;
      v53 = [v52 shouldLog];
      if ([v52 shouldLogToDisk])
      {
        v54 = v53 | 2;
      }

      else
      {
        v54 = v53;
      }

      v55 = [v52 OSLogObject];
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
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
        v58 = v7;
        v59 = objc_opt_class();
        v90 = v6;
        v60 = v59;
        v61 = [(PurchaseOperation *)self logKey];
        v102 = 138543874;
        v103 = v59;
        v7 = v58;
        v8 = v57;
        v104 = 2114;
        v105 = v61;
        v106 = 2112;
        v107 = v7;
        LODWORD(v82) = 32;
        v81 = &v102;
        v62 = _os_log_send_and_compose_impl();

        v6 = v90;
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

      [(PurchaseOperation *)self _setChangedBuyParameters:v7 fromDataProvider:v96];
      v9 = v95;
      goto LABEL_89;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = [[ISDialog alloc] initWithDialogDictionary:v8];
    v14 = [v4 authenticationContext];
    [v13 setAuthenticationContext:v14];

    v15 = [v6 objectForKey:@"metrics"];
    v16 = [SSAuthorizationMetricsController dialogIdForMetricsDictionary:v15];
    v17 = [v13 paymentSheet];
    [v17 setDialogId:v16];

    [(PurchaseOperation *)self _continueTouchIDSessionWithDialog:v13];
    if ([v13 kind] == 1)
    {
LABEL_88:

LABEL_89:
      v10 = &selRef_parser_foundUnparsedEntityDeclarationWithName_publicID_systemID_notationName_;
      goto LABEL_90;
    }

    v85 = v15;
    v87 = v4;
    v91 = v7;
    v18 = [v13 buttons];
    v97 = 0u;
    v98 = 0u;
    v99 = 0u;
    v100 = 0u;
    v19 = [v18 countByEnumeratingWithState:&v97 objects:v101 count:16];
    v84 = v16;
    v89 = v6;
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
            objc_enumerationMutation(v18);
          }

          v25 = [*(*(&v97 + 1) + 8 * i) actionType];
          if (v25 == 1)
          {
            v21 = 1;
          }

          else if (v25 == 11 || v25 == 3)
          {
            v22 = 1;
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v97 objects:v101 count:16];
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

        v28 = [v27 shouldLog];
        if ([v27 shouldLogToDisk])
        {
          v28 |= 2u;
        }

        v29 = [v27 OSLogObject];
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v30 = v28;
        }

        else
        {
          v30 = v28 & 2;
        }

        if (v30)
        {
          v31 = objc_opt_class();
          v32 = v31;
          v33 = [(PurchaseOperation *)self buyParameters];
          v102 = 138412546;
          v103 = v31;
          v104 = 2112;
          v105 = v33;
          LODWORD(v82) = 22;
          v81 = &v102;
          v34 = _os_log_send_and_compose_impl();

          v4 = v87;
          v9 = v93;
          if (!v34)
          {
LABEL_72:

            [(PurchaseResponseInfo *)self->_responseInfo setDialog:v13];
LABEL_87:

            v6 = v89;
            v7 = v91;
            v16 = v84;
            v15 = v85;
            goto LABEL_88;
          }

          v29 = [NSString stringWithCString:v34 encoding:4, &v102, v82];
          free(v34);
          v81 = v29;
          SSFileLog();
        }

        else
        {
          v4 = v87;
          v9 = v93;
        }

        goto LABEL_72;
      }
    }

    else
    {
      v21 = 0;
    }

    v64 = [(PurchaseOperation *)self error];

    if (!v64)
    {
      if (v21)
      {
        v65 = ISError();
        [(PurchaseOperation *)self setError:v65];
      }

      else
      {
        v65 = [v6 objectForKey:@"customerMessage"];
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

    v68 = [v67 shouldLog];
    if ([v67 shouldLogToDisk])
    {
      v68 |= 2u;
    }

    v69 = [v67 OSLogObject];
    if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
    {
      v70 = v68;
    }

    else
    {
      v70 = v68 & 2;
    }

    if (v70)
    {
      v71 = objc_opt_class();
      v83 = v71;
      v72 = [(PurchaseOperation *)self buyParameters];
      v73 = [(PurchaseOperation *)self error];
      v102 = 138412802;
      v103 = v71;
      v104 = 2112;
      v105 = v72;
      v106 = 2112;
      v107 = v73;
      LODWORD(v82) = 32;
      v81 = &v102;
      v74 = _os_log_send_and_compose_impl();

      v9 = v93;
      if (!v74)
      {
LABEL_86:

        [(PurchaseOperation *)self setDisplayedErrorDialog:1];
        v75 = objc_alloc_init(NSUUID);
        v76 = [v75 UUIDString];

        v77 = +[ISBiometricStore sharedInstance];
        [v77 addContextToCache:self->_biometricAuthenticationContext withToken:v76];

        [v13 setTouchIDContinueToken:v76];
        v78 = [[DaemonDialogOperation alloc] initWithDialog:v13];
        [(DaemonDialogOperation *)v78 setDisplaysOnLockscreen:self->_displaysOnLockScreen];
        v79 = +[ISOperationQueue mainQueue];
        [v79 addOperation:v78];

        v4 = v87;
        goto LABEL_87;
      }

      v69 = [NSString stringWithCString:v74 encoding:4, &v102, v82];
      free(v74);
      v81 = v69;
      SSFileLog();
    }

    goto LABEL_86;
  }

  v35 = [v6 objectForKey:@"customerMessage"];
  objc_opt_class();
  v92 = v7;
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

  v40 = [v39 shouldLog];
  if ([v39 shouldLogToDisk])
  {
    v41 = v40 | 2;
  }

  else
  {
    v41 = v40;
  }

  v42 = [v39 OSLogObject];
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
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
    v45 = [(PurchaseOperation *)self logKey];
    [(PurchaseOperation *)self buyParameters];
    v46 = v6;
    v47 = v8;
    v49 = v48 = v4;
    v102 = 138544130;
    v103 = v44;
    v104 = 2114;
    v105 = v45;
    v106 = 2112;
    v9 = v94;
    v107 = v94;
    v108 = 2112;
    v109 = v49;
    LODWORD(v82) = 42;
    v81 = &v102;
    v50 = _os_log_send_and_compose_impl();

    v4 = v48;
    v8 = v47;
    v6 = v46;
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

  v7 = v92;
LABEL_90:
  [*&self->ISOperation_opaque[*(v10 + 261)] setMachineDataSyncState:{0, v81}];
  v80 = [v4 response];
  [(PurchaseOperation *)self _performMachineDataActionForURLResponse:v80];
}

- (id)_newPurchaseRequestOperation
{
  v3 = objc_alloc_init(ISStoreURLOperation);
  [v3 setDelegate:self];
  v4 = [(PurchaseOperation *)self logKey];
  [v3 setLogKey:v4];

  [v3 setMachineDataStyle:0];
  [v3 setShouldCancelBiometricTokenUpdate:self->_shouldCancelBiometricTokenUpdate];
  [v3 setShouldSendXTokenHeader:1];
  [v3 setTracksPerformanceMetrics:1];
  [v3 setUseUserSpecificURLBag:1];
  v5 = [(PurchaseOperation *)self authenticationContext];
  v6 = [v5 mutableCopy];

  if (!v6)
  {
    v7 = [SSMutableAuthenticationContext alloc];
    v8 = +[SSAccountStore defaultStore];
    v9 = [v8 activeAccount];
    v6 = [v7 initWithAccount:v9];

    v10 = [(PurchaseOperation *)self logKey];
    [v6 setLogUUID:v10];
  }

  [v6 setAllowsBootstrapCellularData:{-[PurchaseOperation allowsBootstrapCellularData](self, "allowsBootstrapCellularData")}];
  [v6 setDisplaysOnLockScreen:self->_displaysOnLockScreen];
  v11 = [(PurchaseOperation *)self urlBagKey];
  v12 = [v11 isEqualToString:@"updateProduct"];

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

    v14 = [v13 shouldLog];
    if ([v13 shouldLogToDisk])
    {
      v15 = v14 | 2;
    }

    else
    {
      v15 = v14;
    }

    v16 = [v13 OSLogObject];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
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

      v16 = [NSString stringWithCString:v19 encoding:4, &v136, v124];
      free(v19);
      v120 = v16;
      SSFileLog();
    }

    goto LABEL_18;
  }

LABEL_19:
  v20 = SSClientIdentifierForDownloadKind();
  if (!v20)
  {
    if ([(PurchaseOperation *)self _clientIsViewService])
    {
      v20 = [(PurchaseOperation *)self clientIdentifier];
    }

    else
    {
      v20 = 0;
    }
  }

  v132 = v20;
  [v6 setPreferredITunesStoreClient:{v20, v120}];
  v21 = [(PurchaseOperation *)self buyParameters];
  v134 = v6;
  v135 = v3;
  if (v21)
  {
    v22 = v21;
    v23 = [[NSDictionary alloc] initWithObjectsAndKeys:{v21, @"product", 0}];
    [v6 setSignupRequestParameters:v23];
    [(PurchaseOperation *)self lock];
    v24 = [(SSBiometricAuthenticationContext *)self->_biometricAuthenticationContext paymentTokenData];
    [(PurchaseOperation *)self unlock];
    if (!v24)
    {
      goto LABEL_38;
    }

    v25 = +[SSLogConfig sharedDaemonConfig];
    if (!v25)
    {
      v25 = +[SSLogConfig sharedConfig];
    }

    v26 = [v25 shouldLog];
    if ([v25 shouldLogToDisk])
    {
      v27 = v26 | 2;
    }

    else
    {
      v27 = v26;
    }

    v28 = [v25 OSLogObject];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
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

        [v24 bytes];
        [v24 length];
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
        v35 = [(SSBiometricAuthenticationContext *)self->_biometricAuthenticationContext fpanID];
        if (!v35)
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

        v37 = [v36 shouldLog];
        if ([v36 shouldLogToDisk])
        {
          v38 = v37 | 2;
        }

        else
        {
          v38 = v37;
        }

        v39 = [v36 OSLogObject];
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
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
            [v43 setObject:v35 forKeyedSubscript:@"fpanID"];
            v44 = [NSURL queryStringForDictionary:v43 escapedValues:1];

            [(PurchaseOperation *)self lock];
            [(PurchaseOperation *)self setBuyParameters:v44];
            [(PurchaseOperation *)self unlock];

            v22 = v44;
            v3 = v135;
            goto LABEL_52;
          }

          v39 = [NSString stringWithCString:v42 encoding:4, &v136, v124];
          free(v42);
          v121 = v39;
          SSFileLog();
        }

        goto LABEL_51;
      }

      v28 = [NSString stringWithCString:v31 encoding:4, &v136, v124];
      free(v31);
      v122 = v28;
      SSFileLog();
    }

    goto LABEL_37;
  }

LABEL_53:
  v45 = [(SSURLRequestProperties *)self->_requestProperties HTTPHeaders];
  v46 = SSHTTPHeaderUserAgent;
  v47 = [v45 objectForKey:SSHTTPHeaderUserAgent];

  if (v47)
  {
    [v6 setValue:v47 forHTTPHeaderField:v46];
  }

  ShouldRequirePasswordImmediately = SSRestrictionsShouldRequirePasswordImmediately();
  v49 = [v6 requestParameters];
  v50 = [v49 mutableCopy];

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

    v111 = [v110 shouldLog];
    if ([v110 shouldLogToDisk])
    {
      v112 = v111 | 2;
    }

    else
    {
      v112 = v111;
    }

    v113 = [v110 OSLogObject];
    if (os_log_type_enabled(v113, OS_LOG_TYPE_INFO))
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

      v113 = [NSString stringWithCString:v116 encoding:4, &v136, v124];
      free(v116);
      v123 = v113;
      SSFileLog();
    }

    goto LABEL_134;
  }

LABEL_67:
  v133 = [(PurchaseOperation *)self _newRequestParameters];
  v54 = [v133 objectForKey:@"disableTouchID"];
  v55 = [v54 BOOLValue];

  v56 = &selRef_parser_foundUnparsedEntityDeclarationWithName_publicID_systemID_notationName_;
  if (v55 || [(PurchaseResponseInfo *)self->_responseInfo didPasswordAuthenticate]|| [(PurchaseOperation *)self isPreauthenticated])
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
        v119 = [(DaemonBiometricStore *)v117 identityMap];
        [v3 setIgnorePreexistingSecureToken:{objc_msgSend(v119, "count") != 0}];

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
  v58 = [(DaemonBiometricStore *)v57 identityMap];
  v129 = v57;
  if ([v58 count])
  {
    v59 = [(DaemonBiometricStore *)v57 biometricState];

    if (v59 == 2)
    {
      v60 = [*&self->ISOperation_opaque[*(v56 + 261)] didPasswordAuthenticate];
      goto LABEL_76;
    }
  }

  else
  {
  }

  v60 = 0;
LABEL_76:
  v61 = [v3 biometricAuthenticationContext];
  [v61 setShouldSendFallbackHeader:v60];

  [v3 setBiometricSessionDelegate:self];
  if ([(SSBiometricAuthenticationContext *)self->_biometricAuthenticationContext shouldContinueTouchIDSession])
  {
    v62 = [(SSBiometricAuthenticationContext *)self->_biometricAuthenticationContext challenge];
    v63 = [(SSBiometricAuthenticationContext *)self->_biometricAuthenticationContext signature];
    v64 = [(SSBiometricAuthenticationContext *)self->_biometricAuthenticationContext didFallbackToPassword];
    v65 = [(SSBiometricAuthenticationContext *)self->_biometricAuthenticationContext isExtendedAction];
    v66 = [(SSBiometricAuthenticationContext *)self->_biometricAuthenticationContext isPayment];
    v67 = [v3 biometricAuthenticationContext];
    [v67 setChallenge:v62];

    v68 = [v135 biometricAuthenticationContext];
    [v68 setSignature:v63];

    v69 = [v135 biometricAuthenticationContext];
    [v69 setIsExtendedAction:v65];

    v3 = v135;
    v70 = [v135 biometricAuthenticationContext];
    [v70 setIsPayment:v66];

    if (v64)
    {
      v71 = [v135 biometricAuthenticationContext];
      [v71 setDidFallbackToPassword:1];

      v72 = [v135 biometricAuthenticationContext];
      [v72 setShouldSendFallbackHeader:1];
    }

    v6 = v134;
    v56 = &selRef_parser_foundUnparsedEntityDeclarationWithName_publicID_systemID_notationName_;
  }

  v130 = v50;
  v73 = [(PurchaseOperation *)self _buyParamProductType];
  v74 = [v73 isEqualToString:@"A"];

  if (v74)
  {
    v75 = [v3 biometricAuthenticationContext];
    [v75 setTouchIDDelayEnabled:1];
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
  v78 = [(PurchaseOperation *)self clientAuditTokenData];
  [v77 setClientAuditTokenData:v78];

  [v77 setHTTPMethod:@"POST"];
  [v77 setRequestParameters:v133];
  [v77 setShouldDecodeResponse:0];
  [v77 setShouldDisableReversePush:{-[PurchaseOperation _shouldDisableReversePush](self, "_shouldDisableReversePush")}];
  [v77 setShouldDisableReversePushSampling:1];
  [v77 setURLBagType:{-[PurchaseOperation bagType](self, "bagType")}];
  [v77 setValue:@"application/x-apple-plist" forHTTPHeaderField:@"Content-Type"];
  v79 = +[ApplicationWorkspace defaultWorkspace];
  v80 = [v79 isMultiUser];

  if (v80)
  {
    [v77 setValue:@"true" forHTTPHeaderField:SSHTTPHeaderXAppleMMeMultiUser];
  }

  v81 = objc_alloc_init(NSMutableDictionary);
  v82 = [(PurchaseOperation *)self _deviceScoreMetricsParam];
  if ([v82 length])
  {
    [v81 setObject:v82 forKeyedSubscript:@"deviceScore"];
  }

  v83 = [(PurchaseOperation *)self _buyParamProductType];
  if ([v83 length])
  {
    [v81 setObject:v83 forKeyedSubscript:@"purchaseProductType"];
  }

  if ([v81 count])
  {
    [v77 setAdditionalMetrics:v81];
  }

  v127 = v82;
  v128 = v81;
  v84 = *(v56 + 261);
  v85 = [*&self->ISOperation_opaque[v84] redirectURL];
  if (v85)
  {
    [v77 setURL:v85];
  }

  v125 = v85;
  v86 = [v77 clientIdentifier];

  if (!v86)
  {
    v87 = [(PurchaseOperation *)self clientIdentifierHeader];
    [v77 setClientIdentifier:v87];
  }

  if (([v77 canBeResolved] & 1) == 0)
  {
    v88 = [(PurchaseOperation *)self urlBagKey];
    [v77 setURLBagKey:v88];
  }

  v89 = [(PurchaseOperation *)self _account];
  v90 = v89;
  if (v89)
  {
    v91 = [v89 uniqueIdentifier];
    -[PurchaseOperation _addFairPlayToRequestProperties:withAccountIdentifier:](self, "_addFairPlayToRequestProperties:withAccountIdentifier:", v77, [v91 unsignedLongLongValue]);
  }

  v126 = v83;
  v92 = +[WiFiManager sharedWiFiManager];
  v93 = [v92 IPAddress];

  if (v93)
  {
    [v77 setValue:v93 forHTTPHeaderField:@"X-Apple-Client-Address"];
  }

  if (+[SSDevice deviceIsInternalBuild])
  {
    v94 = +[NSUUID UUID];
    v95 = [v94 UUIDString];
    [v77 setValue:v95 forHTTPHeaderField:@"X-Apple-Purchase-UUID"];
  }

  v96 = [v77 HTTPHeaders];
  v97 = SSHTTPHeaderXAppleTADevice;
  v98 = [v96 objectForKeyedSubscript:SSHTTPHeaderXAppleTADevice];

  if (!v98)
  {
    v99 = +[SSDevice currentDevice];
    v100 = [v99 thinnedApplicationVariantIdentifier];

    if (v100)
    {
      [v77 setValue:v100 forHTTPHeaderField:v97];
    }
  }

  v101 = [*&self->ISOperation_opaque[v84] machineDataSyncState];
  if (v101)
  {
    v102 = [(PurchaseOperation *)self _shouldSendSBSyncData];
    v103 = &SSHTTPHeaderXAppleAMDS;
    if (!v102)
    {
      v103 = &SSHTTPHeaderXAppleMDS;
    }

    [v77 setValue:v101 forHTTPHeaderField:*v103];
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
    v107 = [v106 activeAccount];

    if (!v107 || ([v107 isAuthenticated] & 1) == 0)
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
  v3 = [(PurchaseOperation *)self buyParameters];
  v4 = [NSURL copyDictionaryForQueryString:v3 unescapedValues:1];

  [v4 removeObjectForKey:@"isUpdateAll"];
  v5 = +[ISDevice sharedInstance];
  v6 = [v5 guid];

  if (v6)
  {
    [v4 setObject:v6 forKey:@"guid"];
  }

  if ([(PurchaseOperation *)self requiresSerialNumber])
  {
    v7 = +[ISDevice sharedInstance];
    v8 = [v7 serialNumber];

    if (v8)
    {
      [v4 setObject:v8 forKey:@"serialNumber"];
      v6 = v8;
    }

    else
    {
      v6 = 0;
    }
  }

  if ([(PurchaseOperation *)self isBackgroundPurchase])
  {
    [v4 setObject:@"1" forKey:@"is-background"];
  }

  v9 = [(PurchaseOperation *)self affiliateIdentifier];

  if ([v9 length])
  {
    [v4 setObject:v9 forKey:@"caller"];
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
    v13 = [v12 aa_primaryAppleAccount];
    if ([v13 isEnabledForDataclass:kAccountDataclassBackup])
    {
      [v4 setObject:@"1" forKey:@"icloud-backup-enabled"];
    }
  }

  v14 = [(PurchaseOperation *)self _account];
  v15 = [v14 creditsString];

  if ([v15 length])
  {
    [v4 setObject:v15 forKey:@"creditDisplay"];
  }

  v16 = [(PurchaseOperation *)self deviceScore];

  if (v16)
  {
    v43 = v15;
    v17 = [(DeviceScorer *)self->_deviceScorer context];
    v18 = [v17 serverEndpoint];

    v19 = @"afds";
    if (v18 == 2)
    {
      v19 = @"afdsv2";
    }

    v20 = v19;
    v21 = [(PurchaseOperation *)self deviceScore];
    [v4 setObject:v21 forKey:v20];

    [(PurchaseOperation *)self setDidConsumeScore:1];
    v22 = +[SSLogConfig sharedDaemonConfig];
    if (!v22)
    {
      v22 = +[SSLogConfig sharedConfig];
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
      v40 = v27;
      v28 = SSHashIfNeeded();
      [NSNumber numberWithInteger:v18];
      v29 = v41 = v20;
      [(PurchaseOperation *)self deviceScore];
      v30 = v42 = v14;
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

      v14 = v42;
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

    v15 = v43;
  }

  v35 = [(SSURLRequestProperties *)self->_requestProperties requestParameters];
  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = sub_1000A68B4;
  v44[3] = &unk_100327658;
  v36 = v4;
  v45 = v36;
  [v35 enumerateKeysAndObjectsUsingBlock:v44];

  return v36;
}

- (void)_performDelayedGotoForOperation:(id)a3
{
  v11 = [a3 dataProvider];
  v4 = [v11 output];
  v5 = [DelayedGotoSemaphore alloc];
  v6 = [v4 objectForKey:@"DelayedGoto"];
  v7 = [(DelayedGotoSemaphore *)v5 initWithDelayedGoto:v6];

  [(DelayedGotoSemaphore *)v7 wait];
  v8 = [(DelayedGotoSemaphore *)v7 bodyDictionary];
  if (v8)
  {
    v9 = [NSURL queryStringForDictionary:v8 escapedValues:0];
    [(PurchaseOperation *)self _setChangedBuyParameters:v9 fromDataProvider:v11];
  }

  v10 = [(DelayedGotoSemaphore *)v7 URL];
  if (v10)
  {
    [(PurchaseResponseInfo *)self->_responseInfo setRedirectURL:v10];
  }

  [(PurchaseResponseInfo *)self->_responseInfo setShouldRetryForDelayedGoto:1];
}

- (void)_performMachineDataActionForURLResponse:(id)a3
{
  v4 = a3;
  v5 = [[SSMachineDataRequest alloc] initWithURLResponse:v4];

  if (!v5)
  {
    goto LABEL_23;
  }

  v6 = [(PurchaseOperation *)self authenticatedAccountDSID];
  [v5 setAccountIdentifier:v6];
  [v5 setAllowsBootstrapCellularData:{-[PurchaseOperation allowsBootstrapCellularData](self, "allowsBootstrapCellularData")}];
  v7 = [[ISMachineDataActionOperation alloc] initWithMachineDataRequest:v5];
  [v7 setBlocksPurchaseRequests:0];
  [v7 setHidesServerDrivenDialogs:self->_suppressDialogs];
  v8 = [(SSURLRequestProperties *)self->_requestProperties HTTPHeaders];
  v9 = [v8 objectForKey:SSHTTPHeaderUserAgent];
  [v7 setUserAgent:v9];

  v10 = [v5 actionName];
  v11 = +[SSLogConfig sharedDaemonConfig];
  if (!v11)
  {
    v11 = +[SSLogConfig sharedConfig];
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
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = v13;
  }

  else
  {
    v15 = v13 & 2;
  }

  v25 = v6;
  if (!v15)
  {
    goto LABEL_13;
  }

  v26 = 138412802;
  v27 = objc_opt_class();
  v28 = 2112;
  v29 = v10;
  v30 = 2112;
  v31 = v6;
  v16 = v27;
  LODWORD(v24) = 32;
  v23 = &v26;
  v17 = _os_log_send_and_compose_impl();

  if (v17)
  {
    v14 = [NSString stringWithCString:v17 encoding:4, &v26, v24];
    free(v17);
    v23 = v14;
    SSFileLog();
LABEL_13:
  }

  [(PurchaseOperation *)self runSubOperation:v7 returningError:0];
  v18 = [v7 success];
  v19 = [v7 syncState];
  [(PurchaseResponseInfo *)self->_responseInfo setMachineDataSyncState:v19];
  [(PurchaseResponseInfo *)self->_responseInfo setShouldRetryForMachineData:(v19 != 0) | (v18 & 1), v23];
  if ([(PurchaseResponseInfo *)self->_responseInfo shouldRetryForMachineData])
  {
    v20 = [(SSBiometricAuthenticationContext *)self->_biometricAuthenticationContext challenge];
    v21 = [(SSBiometricAuthenticationContext *)self->_biometricAuthenticationContext signature];
    v22 = v21;
    if (v20 && v21)
    {
      [(SSBiometricAuthenticationContext *)self->_biometricAuthenticationContext setShouldContinueTouchIDSession:1];
    }
  }

  if ((v18 & 1) != 0 && [v10 isEqualToString:@"RP"])
  {
    [(PurchaseResponseInfo *)self->_responseInfo setMachineDataRetryCount:-1];
  }

LABEL_23:
}

- (void)_performApplePayClassicCheck
{
  v3 = [(PurchaseOperation *)self _countryCode];
  v4 = &CFDictionaryGetValue_ptr;
  if (v3)
  {
    v5 = +[ISBiometricStore applePayClassicNetworks];
    if (v5)
    {
      v6 = [NSSet setWithArray:v5];
      v7 = +[ISBiometricStore sharedInstance];
      v8 = [v7 biometricState];

      if (v8 == 2)
      {
        v72 = v6;
        v73 = v3;
        v9 = objc_alloc_init(SSBiometricAuthenticationContext);
        v10 = [(PurchaseOperation *)self authenticatedAccountDSID];
        [v9 setAccountIdentifier:v10];

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
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
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

          v44 = [v4[412] sharedDaemonConfig];
          if (!v44)
          {
            v44 = [v4[412] sharedConfig];
          }

          v45 = [v44 shouldLog];
          if ([v44 shouldLogToDisk])
          {
            v45 |= 2u;
          }

          v46 = [v44 OSLogObject];
          if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
          {
            v47 = v45;
          }

          else
          {
            v47 = v45 & 2;
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

            v3 = v73;
            if (!v51)
            {
              goto LABEL_78;
            }

            v46 = [NSString stringWithCString:v51 encoding:4, &v74, v70];
            free(v51);
            v69 = v46;
            SSFileLog();
          }

          else
          {
            v3 = v73;
          }

LABEL_78:
          v52 = [v4[412] sharedDaemonConfig];
          if (!v52)
          {
            v52 = [v4[412] sharedConfig];
          }

          v61 = [v52 shouldLog];
          if ([v52 shouldLogToDisk])
          {
            v62 = v61 | 2;
          }

          else
          {
            v62 = v61;
          }

          v63 = [v52 OSLogObject];
          if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
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

            v63 = [NSString stringWithCString:v67 encoding:4, &v74, v70];
            free(v67);
            SSFileLog();
          }

          goto LABEL_95;
        }

        v52 = [v13[212] ACLVersionForAccessControl:v12];
        v53 = [v4[412] sharedDaemonConfig];
        if (!v53)
        {
          v53 = [v4[412] sharedConfig];
        }

        v54 = [v53 shouldLog];
        if ([v53 shouldLogToDisk])
        {
          v55 = v54 | 2;
        }

        else
        {
          v55 = v54;
        }

        v56 = [v53 OSLogObject];
        if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
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
          v77 = v52;
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

            v3 = v73;
            goto LABEL_95;
          }

          v56 = [NSString stringWithCString:v60 encoding:4, &v74, v70];
          free(v60);
          SSFileLog();
        }

        else
        {
          v6 = v72;
        }

        goto LABEL_92;
      }

      v34 = +[SSLogConfig sharedDaemonConfig];
      if (!v34)
      {
        v34 = +[SSLogConfig sharedConfig];
      }

      v38 = [v34 shouldLog];
      if ([v34 shouldLogToDisk])
      {
        v39 = v38 | 2;
      }

      else
      {
        v39 = v38;
      }

      v40 = [v34 OSLogObject];
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
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
        v40 = [NSString stringWithCString:v43 encoding:4, &v74, v70];
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

      v32 = [v6 shouldLog];
      if ([v6 shouldLogToDisk])
      {
        v33 = v32 | 2;
      }

      else
      {
        v33 = v32;
      }

      v34 = [v6 OSLogObject];
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
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

        v34 = [NSString stringWithCString:v37 encoding:4, &v74, v70];
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

  v26 = [v5 shouldLog];
  if ([v5 shouldLogToDisk])
  {
    v27 = v26 | 2;
  }

  else
  {
    v27 = v26;
  }

  v28 = [v5 OSLogObject];
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
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
    v28 = [NSString stringWithCString:v31 encoding:4, &v74, v70];
    free(v31);
    SSFileLog();
LABEL_26:
  }

LABEL_97:
}

- (void)_performAutoEnrollmentCheck
{
  v3 = +[ISBiometricStore sharedInstance];
  v4 = [v3 biometricState];

  if (v4 == 2)
  {
    v5 = [(PurchaseOperation *)self _countryCode];
    v6 = +[SSLogConfig sharedDaemonConfig];
    v7 = v6;
    if (v5)
    {
      if (!v6)
      {
        v7 = +[SSLogConfig sharedConfig];
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
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
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
      v50 = v5;
      v12 = v48;
      LODWORD(v46) = 22;
      v44 = &v47;
    }

    else
    {
      if (!v6)
      {
        v7 = +[SSLogConfig sharedConfig];
      }

      v18 = [v7 shouldLog];
      if ([v7 shouldLogToDisk])
      {
        v19 = v18 | 2;
      }

      else
      {
        v19 = v18;
      }

      v10 = [v7 OSLogObject];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
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
      v10 = [NSString stringWithCString:v21 encoding:4, &v47, v46];
      free(v21);
      v44 = v10;
      SSFileLog();
LABEL_36:
    }
  }

  else
  {
    v5 = +[SSLogConfig sharedDaemonConfig];
    if (!v5)
    {
      v5 = +[SSLogConfig sharedConfig];
    }

    v13 = [v5 shouldLog];
    if ([v5 shouldLogToDisk])
    {
      v14 = v13 | 2;
    }

    else
    {
      v14 = v13;
    }

    v7 = [v5 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
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

      v7 = [NSString stringWithCString:v17 encoding:4, &v47, v46];
      free(v17);
      v44 = v7;
      SSFileLog();
    }
  }

LABEL_38:
  v22 = objc_alloc_init(SSBiometricAuthenticationContext);
  v23 = [(PurchaseOperation *)self authenticatedAccountDSID];
  [v22 setAccountIdentifier:v23];

  [v22 setIsPayment:1];
  v24 = +[DaemonBiometricKeychain sharedInstance];
  v25 = [v24 copyAccessControlListForPrivateKeyWithBiometricAuthenticationContext:v22 error:0];

  v26 = [AMSBiometrics isActionSupported:3 withAccessControl:v25];
  v27 = +[SSLogConfig sharedDaemonConfig];
  if (!v27)
  {
    v27 = +[SSLogConfig sharedConfig];
  }

  v28 = [v27 shouldLog];
  if ([v27 shouldLogToDisk])
  {
    v29 = v28 | 2;
  }

  else
  {
    v29 = v28;
  }

  v30 = [v27 OSLogObject];
  if (!os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
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

    v30 = [NSString stringWithCString:v34 encoding:4, &v47, v46];
    free(v34);
    v45 = v30;
    SSFileLog();
  }

LABEL_49:
  v35 = [AMSBiometrics ACLVersionForAccessControl:v25];
  v36 = +[SSLogConfig sharedDaemonConfig];
  if (!v36)
  {
    v36 = +[SSLogConfig sharedConfig];
  }

  v37 = [v36 shouldLog];
  if ([v36 shouldLogToDisk])
  {
    v38 = v37 | 2;
  }

  else
  {
    v38 = v37;
  }

  v39 = [v36 OSLogObject];
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
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

    v39 = [NSString stringWithCString:v43 encoding:4, &v47, v46];
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
  v2 = [(PurchaseOperation *)self buyParameters];
  v3 = [NSURL copyDictionaryForQueryString:v2 unescapedValues:1];

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
  v2 = [(PurchaseOperation *)self urlBagKey];
  if ([v2 isEqualToString:@"backgroundUpdateProduct"])
  {
    v3 = 1;
  }

  else if ([v2 isEqualToString:@"buyProduct"])
  {
    v3 = 0;
  }

  else if ([v2 isEqualToString:@"downloadProduct"])
  {
    v3 = 2;
  }

  else if ([v2 isEqualToString:@"p2-in-app-buy"])
  {
    v3 = 3;
  }

  else if ([v2 isEqualToString:@"updateProduct"])
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_recordEngagementEventWithResult:(id)a3 error:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[AMSMetricsEvent alloc] initForEngagement];
  [v8 setProperty:@"purchase" forBodyKey:@"eventType"];
  [v8 setProperty:@"AMS" forBodyKey:@"source"];
  v9 = [NSNumber numberWithBool:v6 == 0];
  [v8 setProperty:v9 forBodyKey:@"success"];

  v10 = [NSNumber numberWithInteger:[(PurchaseOperation *)self _purchaseType]];
  [v8 setProperty:v10 forBodyKey:@"purchaseType"];

  v11 = [(PurchaseOperation *)self buyParameters];
  v12 = [NSURL copyDictionaryForQueryString:v11 unescapedValues:1];

  [v8 setProperty:v12 forBodyKey:@"buyParameters"];
  v13 = [(PurchaseOperation *)self authenticatedAccountDSID];
  [v8 setProperty:v13 forBodyKey:@"accountId"];

  [v8 setProperty:v7 forBodyKey:@"responseDictionary"];
  if (v6)
  {
    v45[0] = @"code";
    v14 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v6 code]);
    v46[0] = v14;
    v45[1] = @"domain";
    v15 = [v6 domain];
    v16 = v15;
    if (v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = &stru_10033CC30;
    }

    v46[1] = v17;
    v45[2] = @"title";
    v18 = [v6 ams_title];
    v19 = v18;
    if (v18)
    {
      v20 = v18;
    }

    else
    {
      v20 = &stru_10033CC30;
    }

    v46[2] = v20;
    v45[3] = @"message";
    v21 = [v6 ams_message];
    v22 = v21;
    if (v21)
    {
      v23 = v21;
    }

    else
    {
      v23 = &stru_10033CC30;
    }

    v46[3] = v23;
    v24 = [NSDictionary dictionaryWithObjects:v46 forKeys:v45 count:4];

    [v8 setProperty:v24 forBodyKey:@"error"];
  }

  v25 = +[AMSLogConfig sharedConfig];
  if (!v25)
  {
    v25 = +[AMSLogConfig sharedConfig];
  }

  v26 = [v25 OSLogObject];
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = objc_opt_class();
    v28 = AMSLogKey();
    *buf = 138543874;
    v40 = v27;
    v41 = 2114;
    v42 = v28;
    v43 = 1024;
    v44 = v6 == 0;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Recording engagement event. success: %d", buf, 0x1Cu);
  }

  v29 = objc_alloc_init(AMSEngagement);
  v30 = [v8 underlyingDictionary];
  v31 = [v29 enqueueData:v30];

  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_1000A84B0;
  v36[3] = &unk_1003276A8;
  v32 = objc_alloc_init(AMSBinaryPromise);
  v37 = v32;
  v38 = self;
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

- (void)_runDialogOperationForDialog:(id)a3
{
  v116 = a3;
  v119 = self;
  if (![(PurchaseOperation *)self skipsConfirmationDialogs])
  {
    goto LABEL_25;
  }

  obj = [v116 buttons];
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

        v10 = [v9 shouldLog];
        if ([v9 shouldLogToDisk])
        {
          v10 |= 2u;
        }

        v11 = [v9 OSLogObject];
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
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
          v15 = [v8 parameter];
          *v145 = 138412546;
          *&v145[4] = v13;
          *&v145[12] = 2112;
          *&v145[14] = v15;
          LODWORD(v115) = 22;
          v112 = v145;
          v16 = _os_log_send_and_compose_impl();

          if (v16)
          {
            v11 = [NSString stringWithCString:v16 encoding:4, v145, v115];
            free(v16);
            v112 = v11;
            SSFileLog();
            goto LABEL_18;
          }
        }

        else
        {
LABEL_18:
        }

        responseInfo = v119->_responseInfo;
        v18 = [v8 parameter];
        [(PurchaseResponseInfo *)responseInfo setChangedBuyParameters:v18];

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

  v20 = [v19 shouldLog];
  if ([v19 shouldLogToDisk])
  {
    v20 |= 2u;
  }

  v21 = [v19 OSLogObject];
  if (!os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v20 &= 2u;
  }

  if (v20)
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
      v21 = [NSString stringWithCString:v24 encoding:4, v145, v115];
      free(v24);
      v113 = v21;
      SSFileLog();
      goto LABEL_34;
    }
  }

  else
  {
LABEL_34:
  }

  v25 = [v116 paymentSheet];
  if (!v25)
  {
    v50 = [[DaemonDialogOperation alloc] initWithDialog:v116];
    [(DaemonDialogOperation *)v50 setDisplaysOnLockscreen:v119->_displaysOnLockScreen];
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
    v51 = v116;
    v123 = v51;
    [(DaemonDialogOperation *)v50 setOutputBlock:v122];
    v121 = 0;
    v52 = [(PurchaseOperation *)v119 runSubOperation:v50 returningError:&v121];
    v53 = v121;
    obja = v53;
    if ((v52 & 1) == 0)
    {
      [(PurchaseOperation *)v119 setError:v53];
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

        v56 = [v55 shouldLog];
        v57 = [v55 shouldLogToDisk];
        v58 = [v55 OSLogObject];
        v59 = v58;
        if (v57)
        {
          v56 |= 2u;
        }

        if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
        {
          v60 = v56;
        }

        else
        {
          v60 = v56 & 2;
        }

        if (v60)
        {
          v61 = objc_opt_class();
          v62 = [(PurchaseOperation *)v119 buyParameters];
          *v141 = 138412546;
          *&v141[4] = v61;
          *&v141[12] = 2112;
          *&v141[14] = v62;
          LODWORD(v115) = 22;
          v63 = _os_log_send_and_compose_impl();

          if (!v63)
          {
LABEL_75:

            v64 = v119->_responseInfo;
            v65 = [*(*&v145[8] + 40) parameter];
            [(PurchaseResponseInfo *)v64 setChangedBuyParameters:v65];
LABEL_131:

            goto LABEL_132;
          }

          v59 = [NSString stringWithCString:v63 encoding:4, v141, v115];
          free(v63);
          SSFileLog();
        }

        goto LABEL_75;
      }

      v54 = *(*&v145[8] + 40);
    }

    if ([v54 actionType] == 11)
    {
      v66 = [*(*&v145[8] + 40) parameter];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v67 = [NSURL URLWithString:v66];

        v66 = v67;
      }

      v68 = +[SSLogConfig sharedDaemonConfig];
      if (!v68)
      {
        v68 = +[SSLogConfig sharedConfig];
      }

      v69 = [v68 shouldLog];
      v70 = [v68 shouldLogToDisk];
      v71 = [v68 OSLogObject];
      v72 = v71;
      if (v70)
      {
        v69 |= 2u;
      }

      if (!os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
      {
        v69 &= 2u;
      }

      if (v69)
      {
        v73 = objc_opt_class();
        *v141 = 138412546;
        *&v141[4] = v73;
        *&v141[12] = 2112;
        *&v141[14] = v66;
        v74 = v73;
        LODWORD(v115) = 22;
        v114 = v141;
        v75 = _os_log_send_and_compose_impl();

        if (!v75)
        {
LABEL_91:

          v76 = [AskPermissionActionOperation alloc];
          v77 = [(PurchaseOperation *)v119 _account];
          v78 = [(AskPermissionActionOperation *)v76 initWithURL:v66 account:v77];

          v120 = obja;
          [(PurchaseOperation *)v119 runSubOperation:v78 returningError:&v120];
          v79 = v120;

          v80 = SSError();
          [(PurchaseOperation *)v119 setError:v80];

          [(PurchaseOperation *)v119 setSuccess:0];
          obja = v79;
          v97 = v119;
LABEL_117:
          v98 = [(PurchaseOperation *)v97 authenticationContext];
          v99 = [v98 tokenType] == 1;

          if (!v99)
          {
            goto LABEL_132;
          }

          [(PurchaseOperation *)v119 lock];
          didAuthenticate = v119->_didAuthenticate;
          [(PurchaseOperation *)v119 unlock];
          if (!didAuthenticate)
          {
            goto LABEL_132;
          }

          v65 = [(PurchaseOperation *)v119 _account];
          [v65 setSecureToken:0];
          v101 = +[SSLogConfig sharedAccountsConfig];
          if (!v101)
          {
            v101 = +[SSLogConfig sharedConfig];
          }

          v102 = [v101 shouldLog];
          v103 = [v101 shouldLogToDisk];
          v104 = [v101 OSLogObject];
          v105 = v104;
          if (v103)
          {
            v102 |= 2u;
          }

          if (os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
          {
            v106 = v102;
          }

          else
          {
            v106 = v102 & 2;
          }

          if (v106)
          {
            v107 = objc_opt_class();
            v108 = [v65 accountName];
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
              [v111 saveAccount:v65 completion:0];

              goto LABEL_131;
            }

            v105 = [NSString stringWithCString:v110 encoding:4, v141, v115];
            free(v110);
            SSFileLog();
          }

          goto LABEL_130;
        }

        v72 = [NSString stringWithCString:v75 encoding:4, v141, v115];
        free(v75);
        v114 = v72;
        SSFileLog();
      }

      goto LABEL_91;
    }

    v81 = +[SSLogConfig sharedDaemonConfig];
    if (!v81)
    {
      v81 = +[SSLogConfig sharedConfig];
    }

    v82 = [v81 shouldLog];
    v83 = [v81 shouldLogToDisk];
    v84 = [v81 OSLogObject];
    v85 = v84;
    if (v83)
    {
      v82 |= 2u;
    }

    if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
    {
      v86 = v82;
    }

    else
    {
      v86 = v82 & 2;
    }

    if (v86)
    {
      v87 = objc_opt_class();
      v88 = [(PurchaseOperation *)v119 buyParameters];
      *v141 = 138412546;
      *&v141[4] = v87;
      *&v141[12] = 2112;
      *&v141[14] = v88;
      LODWORD(v115) = 22;
      v114 = v141;
      v89 = _os_log_send_and_compose_impl();

      if (!v89)
      {
LABEL_103:

        [*(*&v145[8] + 40) performDefaultActionForDialog:v51];
        v90 = SSError();
        [(PurchaseOperation *)v119 setError:v90];

        v97 = v119;
        [(PurchaseOperation *)v119 setSuccess:0];
        goto LABEL_117;
      }

      v85 = [NSString stringWithCString:v89 encoding:4, v141, v115];
      free(v89);
      v114 = v85;
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
  v27 = [[DisplayPaymentSheetOperation alloc] initWithPaymentSheet:v25];
  v28 = [v25 dialogId];
  [(DisplayPaymentSheetOperation *)v27 setDialogId:v28];

  v29 = [(SSAuthenticationContext *)v119->_authenticationContext accountName];
  [(DisplayPaymentSheetOperation *)v27 setAccountName:v29];

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
  LODWORD(v29) = [(PurchaseOperation *)v119 runSubOperation:v31 returningError:&v126];
  v32 = v126;
  if (!v29 || (v132[3] & 1) == 0)
  {
    [(PurchaseOperation *)v119 setError:v32];
    [(PurchaseOperation *)v119 setSuccess:0];
    v43 = +[SSLogConfig sharedConfig];
    v44 = [v43 shouldLog];
    v45 = [v43 shouldLogToDisk];
    v46 = [v43 OSLogObject];
    v47 = v46;
    if (v45)
    {
      v44 |= 2u;
    }

    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      v48 = v44;
    }

    else
    {
      v48 = v44 & 2;
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

      v47 = [NSString stringWithCString:v49 encoding:4, v141, v115];
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
  v33 = [v116 buttons];
  v125[0] = _NSConcreteStackBlock;
  v125[1] = 3221225472;
  v125[2] = sub_1000AA208;
  v125[3] = &unk_100327720;
  v125[4] = v141;
  [v33 enumerateObjectsUsingBlock:v125];

  if (*(*&v141[8] + 40))
  {
    v34 = +[SSLogConfig sharedDaemonConfig];
    if (!v34)
    {
      v34 = +[SSLogConfig sharedConfig];
    }

    v35 = [v34 shouldLog];
    v36 = [v34 shouldLogToDisk];
    v37 = [v34 OSLogObject];
    v38 = v37;
    if (v36)
    {
      v35 |= 2u;
    }

    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v39 = v35;
    }

    else
    {
      v39 = v35 & 2;
    }

    if (v39)
    {
      v139 = 138543362;
      v140 = v30;
      LODWORD(v115) = 12;
      v40 = _os_log_send_and_compose_impl();

      if (v40)
      {
        v38 = [NSString stringWithCString:v40 encoding:4, &v139, v115];
        free(v40);
        SSFileLog();
        goto LABEL_49;
      }
    }

    else
    {
LABEL_49:
    }

    v41 = v119->_responseInfo;
    v42 = [*(*&v141[8] + 40) parameter];
    [(PurchaseResponseInfo *)v41 setChangedBuyParameters:v42];
  }

  else
  {
    v42 = +[SSLogConfig sharedDaemonConfig];
    if (!v42)
    {
      v42 = +[SSLogConfig sharedConfig];
    }

    v91 = [v42 shouldLog];
    v92 = [v42 shouldLogToDisk];
    v93 = [v42 OSLogObject];
    v94 = v93;
    if (v92)
    {
      v91 |= 2u;
    }

    if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
    {
      v95 = v91;
    }

    else
    {
      v95 = v91 & 2;
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

      v94 = [NSString stringWithCString:v96 encoding:4, &v139, v115];
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
  v4 = [v3 storeFrontIdentifier];

  if (!v4 || (-[PurchaseOperation originatingStorefront](self, "originatingStorefront"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v4 isEqualToString:v5], v5, (v6 & 1) != 0))
  {
LABEL_19:
    v131 = v4;
    v23 = [(PurchaseOperation *)self _newPurchaseRequestOperation];
    v24 = [v23 dataProvider];
    v25 = +[SSLogConfig sharedDaemonConfig];
    if (!v25)
    {
      v25 = +[SSLogConfig sharedConfig];
    }

    v26 = [v25 shouldLog];
    if ([v25 shouldLogToDisk])
    {
      v27 = v26 | 2;
    }

    else
    {
      v27 = v26;
    }

    v28 = [v25 OSLogObject];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
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
      v32 = [(PurchaseOperation *)self logKey];
      v33 = [(PurchaseOperation *)self buyParameters];
      v134 = 138543874;
      v135 = v30;
      v136 = 2114;
      v137 = v32;
      v138 = 2112;
      v139 = v33;
      LODWORD(v121) = 32;
      v118 = &v134;
      v34 = _os_log_send_and_compose_impl();

      if (!v34)
      {
        goto LABEL_31;
      }

      v28 = [NSString stringWithCString:v34 encoding:4, &v134, v121];
      free(v34);
      v118 = v28;
      SSFileLog();
    }

LABEL_31:
    v133 = 0;
    v35 = [(PurchaseOperation *)self runSubOperation:v23 returningError:&v133];
    v36 = v133;
    v37 = [v24 output];
    v38 = v37;
    v132 = v37;
    if ((v35 & 1) == 0)
    {
      [(PurchaseOperation *)self _handleFailureForOperation:v23];
      [(PurchaseOperation *)self setError:v36];
      goto LABEL_126;
    }

    v39 = [v37 objectForKey:kISFailureTypeKey];

    if (v39)
    {
      [(PurchaseOperation *)self _handleFailureForOperation:v23];
    }

    else
    {
      [v24 setShouldProcessDialogs:1];
      [v24 processDialogFromDictionary:v38 error:0];
      v40 = [v38 objectForKey:@"DelayedGoto"];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        [(PurchaseOperation *)self _performDelayedGotoForOperation:v23];
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
      v44 = [(PurchaseOperation *)self _fairPlaySubscriptionController];
      [v44 importSubscriptionKeyBagData:v43 returningError:0];
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
      v47 = [(PurchaseOperation *)self authenticatedAccountDSID];
      [AppStoreUtility sendNewsSubscriptionEntitlementsWithDictionary:v46 forAccountID:v47];
    }

    v125 = v46;
    v48 = [v38 objectForKeyedSubscript:@"appStoreEntitlements"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v49 = [(PurchaseOperation *)self authenticatedAccountDSID];
      [AppStoreUtility sendAppStoreSubscriptionEntitlementsWithDictionary:v48 forAccountID:v49];
    }

    v50 = [v38 objectForKeyedSubscript:@"activityEntitlements"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v51 = [(PurchaseOperation *)self authenticatedAccountDSID];
      [AppStoreUtility sendActivitySubscriptionEntitlementsWithDictionary:v50 forAccountID:v51];
    }

    if (!+[ISBiometricStore shouldUseAutoEnrollment]|| ([(PurchaseOperation *)self success]& 1) == 0 && ![(PurchaseOperation *)self isCancelled])
    {
LABEL_120:
      [(PurchaseOperation *)self lock];
      v97 = [v23 authenticatedAccountDSID];
      accountID = self->_accountID;
      self->_accountID = v97;

      if (self->_didAuthenticate)
      {
        self->_didAuthenticate = 1;
      }

      else
      {
        v99 = [v24 authenticatedAccountDSID];
        self->_didAuthenticate = v99 != 0;

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
          v101 = [v23 performanceMetrics];
          requestPerformanceMetrics = self->_requestPerformanceMetrics;
          self->_requestPerformanceMetrics = v101;

          v103 = [SSURLConnectionResponse alloc];
          v104 = [v23 response];
          v105 = [v103 initWithURLResponse:v104 bodyData:v100];
          urlResponse = self->_urlResponse;
          self->_urlResponse = v105;

          v107 = [(SSURLConnectionResponse *)self->_urlResponse allHeaderFields];
          v108 = [v107 objectForKey:@"x-apple-jingle-correlation-key"];

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

          v110 = [v109 shouldLog];
          if ([v109 shouldLogToDisk])
          {
            v110 |= 2u;
          }

          v111 = [v109 OSLogObject];
          if (os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
          {
            v112 = v110;
          }

          else
          {
            v112 = v110 & 2;
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
              [v23 setDelegate:0];

              v4 = v131;
              goto LABEL_143;
            }

            v111 = [NSString stringWithCString:v116 encoding:4, &v134, v121];
            free(v116);
            v120 = v111;
            SSFileLog();
          }

          goto LABEL_141;
        }
      }

      if ([v24 authenticatedAccountCredentialSource] == 3)
      {
        ++self->_silentAuthCount;
      }

      goto LABEL_125;
    }

    v52 = [(PurchaseOperation *)self buyParameters];
    v53 = [NSURL copyDictionaryForQueryString:v52 unescapedValues:1];

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

      v57 = [v56 shouldLog];
      if ([v56 shouldLogToDisk])
      {
        v57 |= 2u;
      }

      v58 = [v56 OSLogObject];
      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
      {
        v59 = v57;
      }

      else
      {
        v59 = v57 & 2;
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

        v58 = [NSString stringWithCString:v62 encoding:4, &v134, v121];
        free(v62);
        v119 = v58;
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

      v72 = [v56 shouldLog];
      if ([v56 shouldLogToDisk])
      {
        v72 |= 2u;
      }

      v123 = [v56 OSLogObject];
      v73 = os_log_type_enabled(v123, OS_LOG_TYPE_DEFAULT);
      v74 = v72 & 2;
      if (v73)
      {
        v74 = v72;
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

        v80 = [NSString stringWithCString:v79 encoding:4, &v134, v121];
        free(v79);
        v119 = v80;
        SSFileLog();
      }

      else
      {
        v80 = v123;
      }

      goto LABEL_119;
    }

    if (!v63)
    {
      v56 = +[SSLogConfig sharedConfig];
    }

    v64 = [v56 shouldLog];
    if ([v56 shouldLogToDisk])
    {
      v64 |= 2u;
    }

    v65 = [v56 OSLogObject];
    if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
    {
      v66 = v64;
    }

    else
    {
      v66 = v64 & 2;
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
          v81 = [v56 lowercaseString];
          v82 = [v81 isEqualToString:@"true"];

          v70 = &CFDictionaryGetValue_ptr;
          if (v82)
          {
            v83 = +[SSLogConfig sharedDaemonConfig];
            if (!v83)
            {
              v83 = +[SSLogConfig sharedConfig];
            }

            v84 = [v83 shouldLog];
            if ([v83 shouldLogToDisk])
            {
              v84 |= 2u;
            }

            v129 = v83;
            v85 = [v83 OSLogObject];
            if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
            {
              v86 = v84;
            }

            else
            {
              v86 = v84 & 2;
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

              v85 = [NSString stringWithCString:v89 encoding:4, &v134, v121];
              free(v89);
              v119 = v85;
              SSFileLog();
            }

            goto LABEL_106;
          }
        }

        v90 = [v70[412] sharedDaemonConfig];
        if (!v90)
        {
          v90 = [v70[412] sharedConfig];
        }

        v91 = [v90 shouldLog];
        if ([v90 shouldLogToDisk])
        {
          v91 |= 2u;
        }

        v130 = v90;
        v92 = [v90 OSLogObject];
        if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
        {
          v93 = v91;
        }

        else
        {
          v93 = v91 & 2;
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

          v92 = [NSString stringWithCString:v96 encoding:4, &v134, v121];
          free(v96);
          v119 = v92;
          SSFileLog();
        }

        goto LABEL_118;
      }

      v65 = [NSString stringWithCString:v69 encoding:4, &v134, v121];
      free(v69);
      v119 = v65;
      SSFileLog();
    }

    else
    {
      v70 = &CFDictionaryGetValue_ptr;
    }

    goto LABEL_93;
  }

  v7 = [(PurchaseOperation *)self delegate];
  if (!v7 || (v8 = v7, [(PurchaseOperation *)self delegate], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_opt_respondsToSelector(), v9, v8, (v10 & 1) == 0))
  {
LABEL_18:
    objc_storeStrong(&self->_originatingStorefront, v4);
    goto LABEL_19;
  }

  v11 = +[SSLogConfig sharedDaemonConfig];
  if (!v11)
  {
    v11 = +[SSLogConfig sharedConfig];
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
    v16 = v4;
    v17 = objc_opt_class();
    v18 = v17;
    v19 = SSHashIfNeeded();
    v134 = 138543618;
    v135 = v17;
    v4 = v16;
    v136 = 2114;
    v137 = v19;
    LODWORD(v121) = 22;
    v117 = &v134;
    v20 = _os_log_send_and_compose_impl();

    if (!v20)
    {
      goto LABEL_17;
    }

    v14 = [NSString stringWithCString:v20 encoding:4, &v134, v121];
    free(v20);
    v117 = v14;
    SSFileLog();
  }

LABEL_17:
  v21 = [(PurchaseOperation *)self delegate];
  v22 = [v21 purchaseOperation:self shouldContinueWithNewStorefront:v4];

  if (v22)
  {
    goto LABEL_18;
  }

  v23 = +[NSMutableDictionary dictionary];
  [v23 setObject:v4 forKeyedSubscript:@"storefront"];
  v71 = [NSError errorWithDomain:SSErrorDomain code:156 userInfo:v23];
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

  v3 = [(PurchaseOperation *)self _priceFromBuyParams];
  [v3 floatValue];
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

  v8 = [v7 shouldLog];
  v9 = [v7 shouldLogToDisk] ? v8 | 2 : v8;
  v10 = [v7 OSLogObject];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT) ? v9 : v9 & 2)
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
  if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
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
    v23 = [NSString stringWithCString:v26 encoding:4, location, v28];
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
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
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

- (void)_setChangedBuyParameters:(id)a3 fromDataProvider:(id)a4
{
  v12 = a3;
  v6 = [a4 authenticatedAccountDSID];
  if (v6)
  {
    v7 = [(PurchaseOperation *)self _accountWithUniqueIdentifier:v6];
    if (v7)
    {
      v8 = v7;
      v9 = [v7 popBiometricToken];
      [(PurchaseOperation *)self lock];
      self->_didAuthenticate = 1;
      v10 = [v9 base64EncodedStringWithOptions:0];
      mToken = self->_mToken;
      self->_mToken = v10;

      [(PurchaseResponseInfo *)self->_responseInfo setDidPasswordAuthenticate:[(SSBiometricAuthenticationContext *)self->_biometricAuthenticationContext didFallbackToPassword]];
      [(PurchaseOperation *)self unlock];
    }
  }

  [(PurchaseResponseInfo *)self->_responseInfo setChangedBuyParameters:v12];
}

- (BOOL)_shouldDisableReversePush
{
  v3 = [SSURLBagContext contextWithBagType:[(PurchaseOperation *)self bagType]];
  v4 = +[ISURLBagCache sharedCache];
  v5 = [v4 URLBagForContext:v3];

  v6 = [(PurchaseOperation *)self _buyParamProductType];
  if (v6)
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
        v16 = [v9 objectForKeyedSubscript:v6];
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
  v3 = [(SSURLRequestProperties *)self->_requestProperties HTTPHeaders];
  v7 = [v3 objectForKey:SSHTTPHeaderUserAgent];

  v6 = 0;
  if (v7)
  {
    v4 = [NSString stringWithFormat:@"%@/", ISClientIdentifierMoveToiOS];
    v5 = [v7 hasPrefix:v4];

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

  v3 = [(PurchaseOperation *)self urlBagKey];
  v4 = v3;
  if (v3 && ([v3 isEqualToString:@"buyProduct"] & 1) == 0 && (objc_msgSend(v4, "isEqualToString:", @"backgroundUpdateProduct") & 1) == 0 && (objc_msgSend(v4, "isEqualToString:", @"updateProduct") & 1) == 0 && (objc_msgSend(v4, "isEqualToString:", @"redownloadProduct") & 1) == 0 && (objc_msgSend(v4, "isEqualToString:", @"redownloadAllTones") & 1) == 0 && !objc_msgSend(v4, "isEqualToString:", @"paidRedownloadProduct"))
  {
    v10 = [v4 isEqualToString:@"p2-in-app-buy"];

    if (v10)
    {
      goto LABEL_10;
    }

    return 0;
  }

LABEL_10:
  v5 = [(PurchaseOperation *)self _URLBagContext];
  v6 = +[ISURLBagCache sharedCache];
  v7 = [v6 URLBagForContext:v5];

  v8 = [v7 valueForKey:kISURLBagAuthCanPostKey];
  if (v8)
  {
    if (objc_opt_respondsToSelector())
    {
      v9 = [v8 BOOLValue];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (BOOL)_shouldSendSBSyncData
{
  v2 = [(PurchaseOperation *)self urlBagKey];
  if ([v2 isEqualToString:@"buyProduct"] & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", @"backgroundUpdateProduct") & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", @"updateProduct") & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", @"subDownload"))
  {
    v3 = 1;
  }

  else
  {
    v3 = [v2 isEqualToString:@"sbDownload"];
  }

  return v3;
}

- (BOOL)_shouldUseClientAuthentication
{
  v3 = [(PurchaseOperation *)self urlBagKey];
  if (!v3)
  {
    goto LABEL_19;
  }

  v4 = [(PurchaseOperation *)self _URLBagContext];
  v5 = [ISURLBag valueForKey:@"p2-client-authentication" inBagContext:v4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [ISURLBag urlForKey:v3 inBagContext:v4];
    v7 = [v6 path];
    if (v7)
    {
      v8 = v7;
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
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v13 &= 2u;
      }

      if (v13)
      {
        *v25 = 138412546;
        *&v25[4] = objc_opt_class();
        *&v25[12] = 2112;
        *&v25[14] = v3;
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

  v10 = [v6 containsObject:v3];

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

  v19 = [v11 shouldLog];
  if ([v11 shouldLogToDisk])
  {
    v20 = v19 | 2;
  }

  else
  {
    v20 = v19;
  }

  v21 = [v11 OSLogObject];
  if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
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
  *&v25[14] = v3;
  v22 = *&v25[4];
  LODWORD(v24) = 22;
  v16 = _os_log_send_and_compose_impl();

  if (v16)
  {
    v21 = [NSString stringWithCString:v16 encoding:4, v25, v24, *v25, *&v25[8]];
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
  v4 = [(SSURLRequestProperties *)self->_requestProperties HTTPHeaders];
  v5 = SSHTTPHeaderUserAgent;
  v6 = [v4 objectForKey:SSHTTPHeaderUserAgent];
  [v3 setValue:v6 forHTTPHeaderField:v5];

  return v3;
}

@end