@interface NetworkRequestQueue
+ (id)sharedNetworkRequestQueue;
+ (void)_addSubscriptionOperationWithType:(int64_t)a3 message:(id)a4 connection:(id)a5;
+ (void)authenticationRequestWithMessage:(id)a3 connection:(id)a4;
+ (void)claimAppsWithMessage:(id)a3 connection:(id)a4;
+ (void)disableAutomaticDownloadKindsWithMessage:(id)a3 connection:(id)a4;
+ (void)getDownloadQueueWithMessage:(id)a3 connection:(id)a4;
+ (void)getMatchStatusWithMessage:(id)a3 connection:(id)a4;
+ (void)getSubscriptionEntitlements:(id)a3 connection:(id)a4;
+ (void)getSubscriptionStatusWithMessage:(id)a3 connection:(id)a4;
+ (void)importDownloadToIPodLibraryWithMessage:(id)a3 connection:(id)a4;
+ (void)installManagedAppWithMessage:(id)a3 connection:(id)a4 provideDetailedResponse:(BOOL)a5;
+ (void)keybagSyncWithMessage:(id)a3 connection:(id)a4;
+ (void)loadURLBagWithMessage:(id)a3 connection:(id)a4;
+ (void)lookupItemsWithMessage:(id)a3 connection:(id)a4;
+ (void)lookupWithMessage:(id)a3 connection:(id)a4;
+ (void)observeXPCServer:(id)a3;
+ (void)performMigrationWithMessage:(id)a3 connection:(id)a4;
+ (void)presentRemoteWebViewWithMessage:(id)a3 connection:(id)a4;
+ (void)rentalInformationRequestWithMessage:(id)a3 connection:(id)a4;
+ (void)repairAppWithMessage:(id)a3 connection:(id)a4;
+ (void)requestURLWithMessage:(id)a3 connection:(id)a4;
+ (void)restoreDemotedApplicationsWithMessage:(id)a3 connection:(id)a4;
+ (void)sdk_getCloudServiceCapabilities:(id)a3 connection:(id)a4;
+ (void)sdk_loadStoreFrontIdentifierWithMessage:(id)a3 connection:(id)a4;
+ (void)sdk_requestAPITokenWithMessage:(id)a3 connection:(id)a4;
+ (void)serverAuthenticateWithMessage:(id)a3 connection:(id)a4;
+ (void)silentEnrollmentVerificationWithMessage:(id)a3 connection:(id)a4;
+ (void)silentEnrollmentWithMessage:(id)a3 connection:(id)a4;
+ (void)updateMediaContentTasteWithMessage:(id)a3 connection:(id)a4;
+ (void)wishlistAddItemsWithMessage:(id)a3 connection:(id)a4;
- (NetworkRequestQueue)init;
- (id)_copyAuthenticationContextWithContext:(id)a3 client:(id)a4;
- (id)_managedQueue;
- (id)_newClientWithMessage:(id)a3 connection:(id)a4;
- (void)_dequeueSubscriptionStatusOperation:(id)a3;
- (void)_enqueueOperationsForStoreServicesURL:(id)a3;
- (void)_enqueueSubscriptionStatusOperation:(id)a3 forClient:(id)a4;
- (void)_sendMessageWithError:(id)a3 toClient:(id)a4;
- (void)_sendNotSupportedMessageToClient:(id)a3;
- (void)_sendUnentitledMessageToClient:(id)a3;
- (void)_sendUnentitledReplyForMessage:(id)a3 connection:(id)a4;
@end

@implementation NetworkRequestQueue

- (NetworkRequestQueue)init
{
  v7.receiver = self;
  v7.super_class = NetworkRequestQueue;
  v2 = [(RequestQueue *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_create("NetworkRequestQueueSubscriptionStatusAccessQueue", 0);
    subscriptionStatusOperationAccessQueue = v2->_subscriptionStatusOperationAccessQueue;
    v2->_subscriptionStatusOperationAccessQueue = v3;

    v5 = objc_alloc_init(ISOperationQueue);
    [v5 setAdjustsMaxConcurrentOperationCount:0];
    [v5 setMaxConcurrentOperationCount:24];
    [(RequestQueue *)v2 setOperationQueue:v5];
  }

  return v2;
}

+ (id)sharedNetworkRequestQueue
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100140DB8;
  block[3] = &unk_100327170;
  block[4] = a1;
  if (qword_100383F28 != -1)
  {
    dispatch_once(&qword_100383F28, block);
  }

  v2 = qword_100383F20;

  return v2;
}

+ (void)observeXPCServer:(id)a3
{
  v4 = a3;
  [v4 addObserver:a1 selector:"claimAppsWithMessage:connection:" forMessage:138];
  [v4 addObserver:a1 selector:"getMatchStatusWithMessage:connection:" forMessage:130];
  [v4 addObserver:a1 selector:"disableAutomaticDownloadKindsWithMessage:connection:" forMessage:194];
  [v4 addObserver:a1 selector:"keybagSyncWithMessage:connection:" forMessage:144];
  [v4 addObserver:a1 selector:"installManagedAppWithMessage:connection:" forMessage:112];
  [v4 addObserver:a1 selector:"installManagedAppWithMessageAndDetailedResponse:connection:" forMessage:113];
  [v4 addObserver:a1 selector:"getDownloadQueueWithMessage:connection:" forMessage:65];
  [v4 addObserver:a1 selector:"importDownloadToIPodLibraryWithMessage:connection:" forMessage:66];
  [v4 addObserver:a1 selector:"loadURLBagWithMessage:connection:" forMessage:25];
  [v4 addObserver:a1 selector:"lookupItemsWithMessage:connection:" forMessage:54];
  [v4 addObserver:a1 selector:"lookupWithMessage:connection:" forMessage:85];
  [v4 addObserver:a1 selector:"sdk_loadStoreFrontIdentifierWithMessage:connection:" forMessage:174];
  [v4 addObserver:a1 selector:"sdk_getCloudServiceCapabilities:connection:" forMessage:175];
  [v4 addObserver:a1 selector:"performMigrationWithMessage:connection:" forMessage:116];
  [v4 addObserver:a1 selector:"repairAppWithMessage:connection:" forMessage:148];
  [v4 addObserver:a1 selector:"requestURLWithMessage:connection:" forMessage:62];
  [v4 addObserver:a1 selector:"restoreDemotedApplicationsWithMessage:connection:" forMessage:162];
  [v4 addObserver:a1 selector:"serverAuthenticateWithMessage:connection:" forMessage:132];
  [v4 addObserver:a1 selector:"authenticationRequestWithMessage:connection:" forMessage:133];
  [v4 addObserver:a1 selector:"updateMediaContentTasteWithMessage:connection:" forMessage:163];
  [v4 addObserver:a1 selector:"wishlistAddItemsWithMessage:connection:" forMessage:166];
  [v4 addObserver:a1 selector:"presentRemoteWebViewWithMessage:connection:" forMessage:209];
  [v4 addObserver:a1 selector:"disableSubscriptionWithMessage:connection:" forMessage:145];
  [v4 addObserver:a1 selector:"enableSubscriptionWithMessage:connection:" forMessage:146];
  [v4 addObserver:a1 selector:"getSubscriptionStatusWithMessage:connection:" forMessage:149];
  [v4 addObserver:a1 selector:"getSubscriptionEntitlements:connection:" forMessage:150];
  [v4 addObserver:a1 selector:"refreshSubscriptionWithMessage:connection:" forMessage:147];
  [v4 addObserver:a1 selector:"rentalInformationRequestWithMessage:connection:" forMessage:170];
  [v4 addObserver:a1 selector:"sdk_requestAPITokenWithMessage:connection:" forMessage:191];
  [v4 addObserver:a1 selector:"silentEnrollmentWithMessage:connection:" forMessage:211];
  [v4 addObserver:a1 selector:"silentEnrollmentVerificationWithMessage:connection:" forMessage:212];
}

+ (void)claimAppsWithMessage:(id)a3 connection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 sharedNetworkRequestQueue];
  v9 = [v8 _newClientWithMessage:v6 connection:v7];
  if ((SSXPCConnectionHasEntitlement() & 1) == 0 && (SSXPCConnectionHasEntitlement() & 1) == 0)
  {
    v14 = +[SSLogConfig sharedDaemonConfig];
    if (!v14)
    {
      v14 = +[SSLogConfig sharedConfig];
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
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v16 &= 2u;
    }

    if (v16)
    {
      v25 = 138412546;
      v26 = objc_opt_class();
      v27 = 2112;
      v28 = v9;
      v18 = v26;
      LODWORD(v20) = 22;
      v19 = _os_log_send_and_compose_impl();

      if (!v19)
      {
LABEL_18:

        [v8 _sendUnentitledMessageToClient:v9];
        goto LABEL_19;
      }

      v17 = [NSString stringWithCString:v19 encoding:4, &v25, v20];
      free(v19);
      SSFileLog();
    }

    goto LABEL_18;
  }

  v10 = [SSVClaimApplicationsRequest alloc];
  v11 = xpc_dictionary_get_value(v6, "1");
  v12 = [v10 initWithXPCEncoding:v11];

  if ([v12 claimStyle])
  {
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100141520;
    v21[3] = &unk_100329B40;
    v13 = &v22;
    v22 = v9;
    [AppStoreUtility checkClaimsEstablishingActiveAccounts:1 ignoringPreviousClaimAttempts:1 completionBlock:v21];
  }

  else
  {
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100141454;
    v23[3] = &unk_100329B40;
    v13 = &v24;
    v24 = v9;
    [AppStoreUtility checkFirstPartyClaimsWithCompletionBlock:v23];
  }

LABEL_19:
}

+ (void)disableAutomaticDownloadKindsWithMessage:(id)a3 connection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 sharedNetworkRequestQueue];
  v9 = [v8 _newClientWithMessage:v6 connection:v7];
  if ((SSXPCConnectionHasEntitlement() & 1) == 0)
  {
    v14 = +[SSLogConfig sharedDaemonConfig];
    if (!v14)
    {
      v14 = +[SSLogConfig sharedConfig];
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
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v16 &= 2u;
    }

    if (v16)
    {
      v23 = 138543618;
      v24 = objc_opt_class();
      v25 = 2114;
      v26 = v9;
      v18 = v24;
      LODWORD(v20) = 22;
      v19 = _os_log_send_and_compose_impl();

      if (!v19)
      {
LABEL_14:

        [v8 _sendUnentitledMessageToClient:v9];
        goto LABEL_15;
      }

      v17 = [NSString stringWithCString:v19 encoding:4, &v23, v20];
      free(v19);
      SSFileLog();
    }

    goto LABEL_14;
  }

  v10 = [[SetAutomaticDownloadKindsOperation alloc] initWithDownloadKinds:0];
  [(SetAutomaticDownloadKindsOperation *)v10 setShouldSuppressServerDialogs:1];
  objc_opt_class();
  v11 = SSXPCDictionaryCopyObjectWithClass();
  v12 = [v8 _copyAuthenticationContextWithContext:v11 client:v9];

  [(SetAutomaticDownloadKindsOperation *)v10 setAuthenticationContext:v12];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1001418CC;
  v21[3] = &unk_100329B68;
  v22 = v10;
  v13 = v10;
  [v8 addOperation:v13 forMessage:v6 connection:v7 replyBlock:v21];

LABEL_15:
}

+ (void)getMatchStatusWithMessage:(id)a3 connection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 sharedNetworkRequestQueue];
  v9 = [v8 _newClientWithMessage:v6 connection:v7];
  if ((SSXPCConnectionHasEntitlement() & 1) == 0 && (SSXPCConnectionHasEntitlement() & 1) == 0)
  {
    v14 = +[SSLogConfig sharedDaemonConfig];
    if (!v14)
    {
      v14 = +[SSLogConfig sharedConfig];
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
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v16 &= 2u;
    }

    if (v16)
    {
      v23 = 138412546;
      v24 = objc_opt_class();
      v25 = 2112;
      v26 = v9;
      v18 = v24;
      LODWORD(v20) = 22;
      v19 = _os_log_send_and_compose_impl();

      if (!v19)
      {
LABEL_15:

        [v8 _sendUnentitledReplyForMessage:v6 connection:v7];
        goto LABEL_16;
      }

      v17 = [NSString stringWithCString:v19 encoding:4, &v23, v20];
      free(v19);
      SSFileLog();
    }

    goto LABEL_15;
  }

  objc_opt_class();
  v10 = SSXPCDictionaryCopyObjectWithClass();
  v11 = [[LoadMatchStatusOperation alloc] initWithAccountIdentifier:v10];
  v12 = [v9 userAgent];
  [(LoadMatchStatusOperation *)v11 setUserAgent:v12];

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100141C48;
  v21[3] = &unk_100329B68;
  v22 = v11;
  v13 = v11;
  [v8 addOperation:v13 forMessage:v6 connection:v7 replyBlock:v21];

LABEL_16:
}

+ (void)getSubscriptionStatusWithMessage:(id)a3 connection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 sharedNetworkRequestQueue];
  v9 = [v8 _newClientWithMessage:v6 connection:v7];
  if (SSXPCConnectionHasEntitlement() & 1) != 0 || (SSIsDaemon())
  {
    v10 = objc_alloc_init(SubscriptionStatusOperation);
    v11 = [SSVSubscriptionStatusRequest alloc];
    v12 = xpc_dictionary_get_value(v6, "1");
    v13 = [v11 initWithXPCEncoding:v12];

    -[SubscriptionStatusOperation setAuthenticatesIfNecessary:](v10, "setAuthenticatesIfNecessary:", [v13 authenticatesIfNecessary]);
    v14 = [v13 authenticationContext];
    [(SubscriptionStatusOperation *)v10 setAuthenticationContext:v14];

    -[SubscriptionStatusOperation setCarrierBundleProvisioningStyle:](v10, "setCarrierBundleProvisioningStyle:", [v13 carrierBundleProvisioningStyle]);
    v15 = [v13 localizedAuthenticationReason];
    [(SubscriptionStatusOperation *)v10 setLocalizedAuthenticationReason:v15];

    v16 = [v13 reason];
    [(SubscriptionStatusOperation *)v10 setReason:v16];

    objc_initWeak(location, v10);
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_1001420A8;
    v27[3] = &unk_100329B90;
    v17 = v9;
    v28 = v17;
    objc_copyWeak(&v30, location);
    v18 = v8;
    v29 = v18;
    [(SubscriptionStatusOperation *)v10 setStatusBlock:v27];
    [v18 _enqueueSubscriptionStatusOperation:v10 forClient:v17];

    objc_destroyWeak(&v30);
    objc_destroyWeak(location);
  }

  else
  {
    v19 = +[SSLogConfig sharedDaemonConfig];
    if (!v19)
    {
      v19 = +[SSLogConfig sharedConfig];
    }

    v20 = [v19 shouldLog];
    if ([v19 shouldLogToDisk])
    {
      v21 = v20 | 2;
    }

    else
    {
      v21 = v20;
    }

    v22 = [v19 OSLogObject];
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v21 &= 2u;
    }

    if (v21)
    {
      *location = 138412546;
      *&location[4] = objc_opt_class();
      v32 = 2112;
      v33 = v9;
      v23 = *&location[4];
      LODWORD(v26) = 22;
      v24 = _os_log_send_and_compose_impl();

      if (v24)
      {
        v25 = [NSString stringWithCString:v24 encoding:4, location, v26];
        free(v24);
        SSFileLog();
      }
    }

    else
    {
    }

    [v8 _sendUnentitledMessageToClient:v9];
  }
}

+ (void)getDownloadQueueWithMessage:(id)a3 connection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 sharedNetworkRequestQueue];
  v9 = [v8 _newClientWithMessage:v6 connection:v7];
  v10 = [SSVDownloadQueueRequest alloc];
  v11 = xpc_dictionary_get_value(v6, "1");
  v12 = [v10 initWithXPCEncoding:v11];

  v13 = [v12 queueType];
  if ([v9 hasEntitlements])
  {
    v14 = @"pendingApps";
    if (v13 == 1)
    {
      v14 = @"pendingRentals";
    }

    if (v13)
    {
      v15 = v14;
    }

    else
    {
      v15 = @"pendingSongs";
    }

    v16 = objc_alloc_init(SSMutableURLRequestProperties);
    v17 = [v9 auditTokenData];
    [v16 setClientAuditTokenData:v17];

    [v16 setURLBagKey:v15];
    v18 = [v9 userAgent];
    [v16 setValue:v18 forHTTPHeaderField:SSHTTPHeaderUserAgent];

    v19 = [[LoadDownloadQueueOperation alloc] initWithRequestProperties:v16];
    v20 = +[SSAccountStore defaultStore];
    v21 = [v20 activeAccount];

    v22 = [v21 uniqueIdentifier];
    [(LoadDownloadQueueOperation *)v19 setAccountIdentifier:v22];

    [(LoadDownloadQueueOperation *)v19 setNeedsAuthentication:0];
    objc_initWeak(location, v19);
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_1001425B8;
    v32[3] = &unk_100328ED0;
    objc_copyWeak(&v34, location);
    v33 = v9;
    [(LoadDownloadQueueOperation *)v19 setCompletionBlock:v32];
    v23 = [v8 operationQueue];
    [v23 addOperation:v19];

    objc_destroyWeak(&v34);
    objc_destroyWeak(location);
  }

  else
  {
    v24 = +[SSLogConfig sharedDaemonConfig];
    if (!v24)
    {
      v24 = +[SSLogConfig sharedConfig];
    }

    v25 = [v24 shouldLog];
    if ([v24 shouldLogToDisk])
    {
      v26 = v25 | 2;
    }

    else
    {
      v26 = v25;
    }

    v27 = [v24 OSLogObject];
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v26 &= 2u;
    }

    if (v26)
    {
      *location = 138412546;
      *&location[4] = objc_opt_class();
      v36 = 2112;
      v37 = v9;
      v28 = *&location[4];
      LODWORD(v31) = 22;
      v29 = _os_log_send_and_compose_impl();

      if (v29)
      {
        v30 = [NSString stringWithCString:v29 encoding:4, location, v31];
        free(v29);
        SSFileLog();
      }
    }

    else
    {
    }

    [v8 _sendUnentitledMessageToClient:v9];
  }
}

+ (void)importDownloadToIPodLibraryWithMessage:(id)a3 connection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 sharedNetworkRequestQueue];
  v9 = [v8 _newClientWithMessage:v6 connection:v7];
  v10 = [SSImportDownloadToIPodLibraryRequest alloc];
  v11 = xpc_dictionary_get_value(v6, "1");
  v38 = [v10 initWithXPCEncoding:v11];

  if ([v9 hasEntitlements])
  {
    v37 = [a1 sharedNetworkRequestQueue];
    v12 = [v38 downloadMetadata];
    if (v12 || ([v38 purchaseResponse], v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "purchase"), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "valueForDownloadProperty:", SSDownloadPropertyStoreItemIdentifier), v15 = objc_claimAutoreleasedReturnValue(), v14, objc_msgSend(v13, "downloadMetadataForItemIdentifier:", objc_msgSend(v15, "unsignedLongLongValue")), v12 = objc_claimAutoreleasedReturnValue(), v15, v13, v12))
    {
      v16 = objc_alloc_init(IPodLibraryItem);
      v17 = [StoreDownload alloc];
      v18 = [v12 dictionary];
      v19 = [(StoreDownload *)v17 initWithDictionary:v18];

      [(IPodLibraryItem *)v16 setItemMetadata:v19];
      if ([(StoreDownload *)v19 isRental])
      {
        [(IPodLibraryItem *)v16 setUpdateType:2];
        v20 = [(StoreDownload *)v19 fullSizeImageURL];

        if (v20)
        {
          v21 = [(StoreDownload *)v19 fullSizeImageURL];
          v22 = [NSData dataWithContentsOfURL:v21];

          [(IPodLibraryItem *)v16 setItemArtworkData:v22];
        }
      }

      v23 = [[AddItemToIPodLibraryOperation alloc] initWithIPodLibraryItem:v16];
      objc_initWeak(location, v23);
      v39[0] = _NSConcreteStackBlock;
      v39[1] = 3221225472;
      v39[2] = sub_100142D60;
      v39[3] = &unk_100329BB8;
      objc_copyWeak(&v43, location);
      v40 = v6;
      v41 = v7;
      v24 = v37;
      v42 = v24;
      [(AddItemToIPodLibraryOperation *)v23 setCompletionBlock:v39];
      [v24 setClient:v9 forOperation:v23];
      v25 = [v24 operationQueue];
      [v25 addOperation:v23];

      objc_destroyWeak(&v43);
      objc_destroyWeak(location);
    }

    else
    {
      reply = xpc_dictionary_create_reply(v6);
      v35 = reply;
      if (reply)
      {
        xpc_dictionary_set_int64(reply, "0", 1011);
        xpc_dictionary_set_BOOL(v35, "1", 0);
        xpc_connection_send_message(v7, v35);
      }
    }
  }

  else
  {
    v26 = +[SSLogConfig sharedDaemonConfig];
    if (!v26)
    {
      v26 = +[SSLogConfig sharedConfig];
    }

    v27 = [v26 shouldLog];
    if ([v26 shouldLogToDisk])
    {
      v28 = v27 | 2;
    }

    else
    {
      v28 = v27;
    }

    v29 = [v26 OSLogObject];
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
      *location = 138412546;
      *&location[4] = objc_opt_class();
      v45 = 2112;
      v46 = v9;
      v31 = *&location[4];
      LODWORD(v36) = 22;
      v32 = _os_log_send_and_compose_impl();

      if (v32)
      {
        v33 = [NSString stringWithCString:v32 encoding:4, location, v36];
        free(v32);
        SSFileLog();
      }
    }

    else
    {
    }

    [v8 _sendUnentitledMessageToClient:v9];
  }
}

+ (void)sdk_getCloudServiceCapabilities:(id)a3 connection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 sharedNetworkRequestQueue];
  v9 = [v8 _newClientWithMessage:v6 connection:v7];
  v26 = 0u;
  v27 = 0u;
  xpc_connection_get_audit_token();
  if ((SSXPCConnectionHasEntitlement() & 1) != 0 || (*location = v26, v29 = v27, TCCAccessCheckAuditToken()))
  {
    v10 = [SSVCloudServiceCapabilitiesRequest alloc];
    v11 = xpc_dictionary_get_value(v6, "1");
    v12 = [v10 initWithXPCEncoding:v11];

    v13 = objc_alloc_init(CloudServiceCapabilitiesOperation);
    -[CloudServiceCapabilitiesOperation setAllowsPromptingForPrivacyAcknowledgement:](v13, "setAllowsPromptingForPrivacyAcknowledgement:", [v12 allowsPromptingForPrivacyAcknowledgement]);
    v14 = SSXPCConnectionCopyValueForEntitlement();
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_respondsToSelector())
    {
      [(CloudServiceCapabilitiesOperation *)v13 setAllowsBypassOfPrivacyAcknowledgement:1];
    }

    objc_initWeak(location, v13);
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1001431FC;
    v22[3] = &unk_100329BE0;
    objc_copyWeak(&v25, location);
    v15 = v9;
    v23 = v15;
    v16 = v8;
    v24 = v16;
    [(CloudServiceCapabilitiesOperation *)v13 setResponseBlock:v22];
    [v16 setClient:v15 forOperation:v13];
    [v16 addOperation:v13];

    objc_destroyWeak(&v25);
    objc_destroyWeak(location);
  }

  else
  {
    v12 = +[SSLogConfig sharedDaemonConfig];
    if (!v12)
    {
      v12 = +[SSLogConfig sharedConfig];
    }

    v17 = [v12 shouldLog];
    if ([v12 shouldLogToDisk])
    {
      v18 = v17 | 2;
    }

    else
    {
      v18 = v17;
    }

    v13 = [v12 OSLogObject];
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v18 &= 2u;
    }

    if (v18)
    {
      LODWORD(location[0]) = 138412290;
      *(location + 4) = objc_opt_class();
      v19 = *(location + 4);
      LODWORD(v21) = 12;
      v20 = _os_log_send_and_compose_impl();

      if (!v20)
      {
        goto LABEL_8;
      }

      v13 = [NSString stringWithCString:v20 encoding:4, location, v21];
      free(v20);
      SSFileLog();
    }
  }

LABEL_8:
}

+ (void)getSubscriptionEntitlements:(id)a3 connection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 sharedNetworkRequestQueue];
  v9 = [v8 _newClientWithMessage:v6 connection:v7];
  if (SSXPCConnectionHasEntitlement() & 1) != 0 || (SSIsDaemon())
  {
    v10 = xpc_dictionary_get_BOOL(v6, "1");
    v11 = objc_alloc_init(SubscriptionEntitlementsOperation);
    [(SubscriptionEntitlementsOperation *)v11 setIgnoreCaches:v10];
    v12 = [v9 clientIdentifier];
    [(SubscriptionEntitlementsOperation *)v11 setClientIdentifier:v12];

    objc_initWeak(location, v11);
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10014362C;
    v22[3] = &unk_100329C08;
    objc_copyWeak(&v26, location);
    v23 = v6;
    v24 = v7;
    v13 = v8;
    v25 = v13;
    [(SubscriptionEntitlementsOperation *)v11 setSubscriptionEntitlementsBlock:v22];
    [v13 setClient:v9 forOperation:v11];
    [v13 addOperation:v11];

    objc_destroyWeak(&v26);
    objc_destroyWeak(location);
  }

  else
  {
    v14 = +[SSLogConfig sharedDaemonConfig];
    if (!v14)
    {
      v14 = +[SSLogConfig sharedConfig];
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
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v16 &= 2u;
    }

    if (v16)
    {
      *location = 138412546;
      *&location[4] = objc_opt_class();
      v28 = 2112;
      v29 = v9;
      v18 = *&location[4];
      LODWORD(v21) = 22;
      v19 = _os_log_send_and_compose_impl();

      if (v19)
      {
        v20 = [NSString stringWithCString:v19 encoding:4, location, v21];
        free(v19);
        SSFileLog();
      }
    }

    else
    {
    }

    [v8 _sendUnentitledMessageToClient:v9];
  }
}

+ (void)installManagedAppWithMessage:(id)a3 connection:(id)a4 provideDetailedResponse:(BOOL)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [a1 sharedNetworkRequestQueue];
  v11 = [v10 _newClientWithMessage:v9 connection:v8];

  v12 = [SSVInstallManagedApplicationRequest alloc];
  v13 = xpc_dictionary_get_value(v9, "1");

  v14 = [v12 initWithXPCEncoding:v13];
  if (([v11 hasEntitlements] & 1) == 0)
  {
    v24 = +[SSLogConfig sharedDaemonConfig];
    if (!v24)
    {
      v24 = +[SSLogConfig sharedConfig];
    }

    v25 = [v24 shouldLog];
    if ([v24 shouldLogToDisk])
    {
      v26 = v25 | 2;
    }

    else
    {
      v26 = v25;
    }

    v27 = [v24 OSLogObject];
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v26 &= 2u;
    }

    if (v26)
    {
      v42 = 138412546;
      v43 = objc_opt_class();
      v44 = 2112;
      v45 = v11;
      v28 = v43;
      LODWORD(v36) = 22;
      v29 = _os_log_send_and_compose_impl();

      if (!v29)
      {
LABEL_26:

        [v10 _sendUnentitledMessageToClient:v11];
        goto LABEL_39;
      }

      v27 = [NSString stringWithCString:v29 encoding:4, &v42, v36];
      free(v29);
      SSFileLog();
    }

    goto LABEL_26;
  }

  v15 = [v14 itemIdentifier];

  v16 = +[SSLogConfig sharedDaemonConfig];
  v17 = v16;
  if (!v15)
  {
    if (!v16)
    {
      v17 = +[SSLogConfig sharedConfig];
    }

    v30 = [v17 shouldLog];
    if ([v17 shouldLogToDisk])
    {
      v31 = v30 | 2;
    }

    else
    {
      v31 = v30;
    }

    v32 = [v17 OSLogObject];
    if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v31 &= 2u;
    }

    if (v31)
    {
      v42 = 138412290;
      v43 = objc_opt_class();
      v33 = v43;
      LODWORD(v36) = 12;
      v34 = _os_log_send_and_compose_impl();

      if (!v34)
      {
LABEL_38:

        v35 = SSError();
        [v10 _sendMessageWithError:v35 toClient:v11];

        goto LABEL_39;
      }

      v32 = [NSString stringWithCString:v34 encoding:4, &v42, v36];
      free(v34);
      SSFileLog();
    }

    goto LABEL_38;
  }

  if (!v16)
  {
    v17 = +[SSLogConfig sharedConfig];
  }

  v18 = [v17 shouldLog];
  if ([v17 shouldLogToDisk])
  {
    v19 = v18 | 2;
  }

  else
  {
    v19 = v18;
  }

  v20 = [v17 OSLogObject];
  if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v19 &= 2u;
  }

  if (!v19)
  {
    goto LABEL_13;
  }

  v21 = objc_opt_class();
  v22 = v21;
  [v14 itemIdentifier];
  v42 = 138412802;
  v43 = v21;
  v44 = 2112;
  v45 = v11;
  v47 = v46 = 2112;
  LODWORD(v36) = 32;
  v23 = _os_log_send_and_compose_impl();

  if (v23)
  {
    v20 = [NSString stringWithCString:v23 encoding:4, &v42, v36];
    free(v23);
    SSFileLog();
LABEL_13:
  }

  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_100143C74;
  v37[3] = &unk_100329C30;
  v38 = v10;
  v39 = v14;
  v41 = a5;
  v40 = v11;
  [AppStoreUtility installManagedAppWithRequest:v39 completionBlock:v37];

LABEL_39:
}

+ (void)keybagSyncWithMessage:(id)a3 connection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 sharedNetworkRequestQueue];
  v9 = [v8 _newClientWithMessage:v6 connection:v7];
  HasEntitlement = SSXPCConnectionHasEntitlement();

  if ((HasEntitlement & 1) == 0)
  {
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
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v17 &= 2u;
    }

    if (v17)
    {
      v24 = 138412546;
      v25 = objc_opt_class();
      v26 = 2112;
      v27 = v9;
      v19 = v25;
      LODWORD(v21) = 22;
      v20 = _os_log_send_and_compose_impl();

      if (!v20)
      {
LABEL_14:

        [v8 _sendUnentitledMessageToClient:v9];
        goto LABEL_15;
      }

      v18 = [NSString stringWithCString:v20 encoding:4, &v24, v21];
      free(v20);
      SSFileLog();
    }

    goto LABEL_14;
  }

  v11 = [SSVKeybagSyncRequest alloc];
  v12 = xpc_dictionary_get_value(v6, "1");
  v13 = [v11 initWithXPCEncoding:v12];

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10014421C;
  v22[3] = &unk_100329B68;
  v23 = [[KeybagSyncOperation alloc] initWithKeybagSyncRequest:v13];
  v14 = v23;
  [v8 addOperation:v14 forClient:v9 withMessageBlock:v22];

LABEL_15:
}

+ (void)loadURLBagWithMessage:(id)a3 connection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 sharedNetworkRequestQueue];
  if (SSXPCConnectionHasEntitlement() & 1) != 0 || (SSXPCConnectionHasEntitlement())
  {
    v9 = [[XPCClient alloc] initWithInputConnection:v7];
    v10 = [SSURLBagContext alloc];
    v11 = xpc_dictionary_get_value(v6, "1");
    v12 = [v10 initWithXPCEncoding:v11];

    v13 = [(XPCClient *)v9 auditTokenData];
    [v12 setClientAuditTokenData:v13];

    v14 = SSHTTPHeaderUserAgent;
    v15 = [v12 valueForHTTPHeaderField:SSHTTPHeaderUserAgent];

    if (!v15)
    {
      v16 = [(XPCClient *)v9 userAgent];
      [v12 setValue:v16 forHTTPHeaderField:v14];
    }

    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1001445E4;
    v23[3] = &unk_100329B68;
    v24 = [[ISLoadURLBagOperation alloc] initWithBagContext:v12];
    v17 = v24;
    [v8 addOperation:v17 forMessage:v6 connection:v7 replyBlock:v23];
  }

  else
  {
    v9 = +[SSLogConfig sharedDaemonConfig];
    if (!v9)
    {
      v9 = +[SSLogConfig sharedConfig];
    }

    v18 = [(XPCClient *)v9 shouldLog];
    if ([(XPCClient *)v9 shouldLogToDisk])
    {
      v19 = v18 | 2;
    }

    else
    {
      v19 = v18;
    }

    v12 = [(XPCClient *)v9 OSLogObject];
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v19 &= 2u;
    }

    if (v19)
    {
      v25 = 138412290;
      v26 = objc_opt_class();
      v20 = v26;
      LODWORD(v22) = 12;
      v21 = _os_log_send_and_compose_impl();

      if (!v21)
      {
        goto LABEL_7;
      }

      v12 = [NSString stringWithCString:v21 encoding:4, &v25, v22];
      free(v21);
      SSFileLog();
    }
  }

LABEL_7:
}

+ (void)lookupItemsWithMessage:(id)a3 connection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 sharedNetworkRequestQueue];
  v9 = [v8 _newClientWithMessage:v6 connection:v7];
  if ([v9 hasEntitlements])
  {
    v10 = objc_alloc_init(ISStoreURLOperation);
    v11 = +[DaemonProtocolDataProvider provider];
    [v10 setDataProvider:v11];

    v12 = [SSItemLookupRequest alloc];
    v13 = xpc_dictionary_get_value(v6, "1");
    v14 = [v12 initWithXPCEncoding:v13];

    v15 = objc_alloc_init(SSMutableURLRequestProperties);
    v16 = [v9 clientIdentifierHeader];
    [v15 setClientIdentifier:v16];

    [v15 setURLBagKey:@"adkit-product-url"];
    v17 = [v9 userAgent];
    [v15 setValue:v17 forHTTPHeaderField:SSHTTPHeaderUserAgent];

    v18 = [v14 copyQueryStringParameters];
    [v15 setRequestParameters:v18];
    [v10 setRequestProperties:v15];
    objc_initWeak(location, v10);
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_100144A98;
    v26[3] = &unk_100328ED0;
    objc_copyWeak(&v28, location);
    v27 = v9;
    [v10 setCompletionBlock:v26];
    [v8 addOperation:v10];

    objc_destroyWeak(&v28);
    objc_destroyWeak(location);
  }

  else
  {
    v10 = +[SSLogConfig sharedDaemonConfig];
    if (!v10)
    {
      v10 = +[SSLogConfig sharedConfig];
    }

    v19 = [v10 shouldLog];
    if ([v10 shouldLogToDisk])
    {
      v20 = v19 | 2;
    }

    else
    {
      v20 = v19;
    }

    v21 = [v10 OSLogObject];
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v20 &= 2u;
    }

    if (v20)
    {
      *location = 138412546;
      *&location[4] = objc_opt_class();
      v30 = 2112;
      v31 = v9;
      v22 = *&location[4];
      LODWORD(v25) = 22;
      v23 = _os_log_send_and_compose_impl();

      if (v23)
      {
        v24 = [NSString stringWithCString:v23 encoding:4, location, v25];
        free(v23);
        SSFileLog();
      }
    }

    else
    {
    }
  }
}

+ (void)lookupWithMessage:(id)a3 connection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 sharedNetworkRequestQueue];
  v9 = [v8 _newClientWithMessage:v6 connection:v7];
  if ((SSXPCConnectionHasEntitlement() & 1) == 0 && (SSXPCConnectionHasEntitlement() & 1) == 0 && (SSIsDaemon() & 1) == 0)
  {
    v23 = +[SSLogConfig sharedDaemonConfig];
    if (!v23)
    {
      v23 = +[SSLogConfig sharedConfig];
    }

    v24 = [v23 shouldLog];
    if ([v23 shouldLogToDisk])
    {
      v25 = v24 | 2;
    }

    else
    {
      v25 = v24;
    }

    v26 = [v23 OSLogObject];
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v25 &= 2u;
    }

    if (v25)
    {
      v32 = 138412546;
      v33 = objc_opt_class();
      v34 = 2112;
      v35 = v9;
      v27 = v33;
      LODWORD(v29) = 22;
      v28 = _os_log_send_and_compose_impl();

      if (!v28)
      {
LABEL_22:

        [v8 _sendUnentitledMessageToClient:v9];
        goto LABEL_10;
      }

      v26 = [NSString stringWithCString:v28 encoding:4, &v32, v29];
      free(v28);
      SSFileLog();
    }

    goto LABEL_22;
  }

  v10 = [SSLookupRequest alloc];
  v11 = xpc_dictionary_get_value(v6, "1");
  v12 = [v10 initWithXPCEncoding:v11];

  v13 = [v12 _lookupProperties];
  v14 = [v13 valueForRequestParameter:@"caller"];
  if (!v14)
  {
    v15 = [v9 clientIdentifier];
    [v13 setValue:v15 forRequestParameter:@"caller"];
  }

  v16 = [[LookupRequestOperation alloc] initWithLookupProperties:v13];
  v17 = [v12 authenticationContext];
  [(LookupRequestOperation *)v16 setAuthenticationContext:v17];

  v18 = [v9 clientIdentifierHeader];
  [(LookupRequestOperation *)v16 setClientIdentifierHeader:v18];

  -[LookupRequestOperation setPersonalizationStyle:](v16, "setPersonalizationStyle:", [v12 personalizationStyle]);
  v19 = [v9 userAgent];
  [(LookupRequestOperation *)v16 setUserAgent:v19];

  if ([v12 personalizationStyle] == 2)
  {
    v20 = [v9 clientIdentifier];
    v21 = [v20 isEqualToString:@"com.apple.Health"];

    if (v21)
    {
      [(LookupRequestOperation *)v16 setShouldSuppressCookies:1];
    }
  }

  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_100145024;
  v30[3] = &unk_100329B68;
  v31 = v16;
  v22 = v16;
  [v8 addOperation:v22 forClient:v9 withMessageBlock:v30];

LABEL_10:
}

+ (void)performMigrationWithMessage:(id)a3 connection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 sharedNetworkRequestQueue];
  v9 = [v8 _newClientWithMessage:v6 connection:v7];
  if (SSXPCConnectionHasEntitlement())
  {
    objc_opt_class();
    v33 = SSXPCDictionaryCopyObjectWithClass();
    v10 = [v33 integerValue];
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

    if (v15)
    {
      *v38 = 138412290;
      *&v38[4] = objc_opt_class();
      v16 = *&v38[4];
      LODWORD(v32) = 12;
      v17 = _os_log_send_and_compose_impl();

      if (v17)
      {
        v18 = [NSString stringWithCString:v17 encoding:4, v38, v32];
        free(v17);
        SSFileLog();
      }
    }

    else
    {
    }

    v26 = [objc_alloc(ISWeakLinkedClassForString()) initWithMigrationType:v10];
    v27 = [objc_alloc(ISWeakLinkedClassForString()) initWithOptions:v26];
    v28 = dispatch_semaphore_create(0);
    *v38 = 0;
    *&v38[8] = v38;
    *&v38[16] = 0x2020000000;
    v39 = 0;
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_100145590;
    v34[3] = &unk_100329C58;
    v36 = v38;
    v37 = a1;
    v29 = v28;
    v35 = v29;
    [v27 startWithCompletionBlock:v34];
    v30 = dispatch_time(0, 5000000000);
    dispatch_semaphore_wait(v29, v30);
    reply = xpc_dictionary_create_reply(v6);
    xpc_dictionary_set_int64(reply, "0", 1011);
    xpc_dictionary_set_BOOL(reply, "1", *(*&v38[8] + 24));
    xpc_connection_send_message(v7, reply);

    _Block_object_dispose(v38, 8);
  }

  else
  {
    v19 = +[SSLogConfig sharedDaemonConfig];
    if (!v19)
    {
      v19 = +[SSLogConfig sharedConfig];
    }

    v20 = [v19 shouldLog];
    if ([v19 shouldLogToDisk])
    {
      v21 = v20 | 2;
    }

    else
    {
      v21 = v20;
    }

    v22 = [v19 OSLogObject];
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v21 &= 2u;
    }

    if (v21)
    {
      *v38 = 138412546;
      *&v38[4] = objc_opt_class();
      *&v38[12] = 2112;
      *&v38[14] = v9;
      v23 = *&v38[4];
      LODWORD(v32) = 22;
      v24 = _os_log_send_and_compose_impl();

      if (v24)
      {
        v25 = [NSString stringWithCString:v24 encoding:4, v38, v32];
        free(v24);
        SSFileLog();
      }
    }

    else
    {
    }

    [v8 _sendUnentitledMessageToClient:v9];
  }
}

+ (void)presentRemoteWebViewWithMessage:(id)a3 connection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 sharedNetworkRequestQueue];
  v9 = [v8 _newClientWithMessage:v6 connection:v7];

  if (([v9 hasEntitlements] & 1) == 0)
  {
    v17 = +[SSLogConfig sharedDaemonConfig];
    if (!v17)
    {
      v17 = +[SSLogConfig sharedConfig];
    }

    v18 = [v17 shouldLog];
    if ([v17 shouldLogToDisk])
    {
      v19 = v18 | 2;
    }

    else
    {
      v19 = v18;
    }

    v20 = [v17 OSLogObject];
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v19 &= 2u;
    }

    if (v19)
    {
      *v24 = 138412546;
      *&v24[4] = objc_opt_class();
      *&v24[12] = 2112;
      *&v24[14] = v9;
      v21 = *&v24[4];
      LODWORD(v23) = 22;
      v22 = _os_log_send_and_compose_impl();

      if (!v22)
      {
LABEL_14:

        [v8 _sendUnentitledMessageToClient:v9];
        goto LABEL_15;
      }

      v20 = [NSString stringWithCString:v22 encoding:4, v24, v23, *v24, *&v24[16]];
      free(v22);
      SSFileLog();
    }

    goto LABEL_14;
  }

  v10 = [SSRemoteWebViewRequest alloc];
  v11 = xpc_dictionary_get_value(v6, "1");
  v12 = [v10 initWithXPCEncoding:v11];

  v13 = [[RemoteWebViewOperation alloc] initWithWebViewRequest:v12];
  v14 = [v8 operationQueue];
  [v14 addOperation:v13];

  v15 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v15, "0", 1011);
  v16 = [v9 outputConnection];
  [v16 sendMessage:v15];

LABEL_15:
}

+ (void)rentalInformationRequestWithMessage:(id)a3 connection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 sharedNetworkRequestQueue];
  v9 = [v8 _newClientWithMessage:v6 connection:v7];
  v10 = [SSRentalInformationRequest alloc];
  v11 = xpc_dictionary_get_value(v6, "1");
  v12 = [v10 initWithXPCEncoding:v11];

  if ([v9 hasEntitlements])
  {
    v13 = [v12 accountIdentifier];
    v14 = [v12 rentalKeyIdentifier];
    v15 = [[LoadRentalInformationOperation alloc] initWithAccountIdentifier:v13 rentalKeyIdentifier:v14];
    objc_initWeak(location, v15);
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_100145D5C;
    v25[3] = &unk_100328ED0;
    objc_copyWeak(&v27, location);
    v26 = v9;
    [(LoadRentalInformationOperation *)v15 setCompletionBlock:v25];
    v16 = [v8 operationQueue];
    [v16 addOperation:v15];

    objc_destroyWeak(&v27);
    objc_destroyWeak(location);
  }

  else
  {
    v17 = +[SSLogConfig sharedDaemonConfig];
    if (!v17)
    {
      v17 = +[SSLogConfig sharedConfig];
    }

    v18 = [v17 shouldLog];
    if ([v17 shouldLogToDisk])
    {
      v19 = v18 | 2;
    }

    else
    {
      v19 = v18;
    }

    v20 = [v17 OSLogObject];
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v19 &= 2u;
    }

    if (v19)
    {
      *location = 138412546;
      *&location[4] = objc_opt_class();
      v29 = 2112;
      v30 = v9;
      v21 = *&location[4];
      LODWORD(v24) = 22;
      v22 = _os_log_send_and_compose_impl();

      if (v22)
      {
        v23 = [NSString stringWithCString:v22 encoding:4, location, v24];
        free(v22);
        SSFileLog();
      }
    }

    else
    {
    }

    [v8 _sendUnentitledMessageToClient:v9];
  }
}

+ (void)repairAppWithMessage:(id)a3 connection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 sharedNetworkRequestQueue];
  v9 = [v8 _newClientWithMessage:v6 connection:v7];

  if (([v9 hasEntitlements] & 1) == 0)
  {
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
      v36 = 138412546;
      v37 = objc_opt_class();
      v38 = 2112;
      v39 = v9;
      v27 = v37;
      LODWORD(v30) = 22;
      v28 = _os_log_send_and_compose_impl();

      if (!v28)
      {
LABEL_25:

        [v8 _sendUnentitledMessageToClient:v9];
        goto LABEL_28;
      }

      v25 = [NSString stringWithCString:v28 encoding:4, &v36, v30];
      free(v28);
      SSFileLog();
    }

    goto LABEL_25;
  }

  v10 = [SSVRepairApplicationRequest alloc];
  v11 = xpc_dictionary_get_value(v6, "1");
  v12 = [v10 initWithXPCEncoding:v11];

  v13 = +[SSLogConfig sharedDaemonConfig];
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
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
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
    v31 = v18;
    v19 = [v12 accountDSID];
    [v12 bundleID];
    v36 = 138412802;
    v37 = v18;
    v38 = 2112;
    v39 = v19;
    v41 = v40 = 2112;
    LODWORD(v30) = 32;
    v20 = _os_log_send_and_compose_impl();

    if (v20)
    {
      v21 = [NSString stringWithCString:v20 encoding:4, &v36, v30];
      free(v20);
      SSFileLog();
    }
  }

  else
  {
  }

  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_1001462B8;
  v32[3] = &unk_100329C80;
  v35 = a1;
  v33 = v12;
  v34 = v9;
  v29 = v12;
  [AppStoreUtility repairAppWithRequest:v29 completionBlock:v32];

LABEL_28:
}

+ (void)requestURLWithMessage:(id)a3 connection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 sharedNetworkRequestQueue];
  v9 = [v8 _newClientWithMessage:v6 connection:v7];

  if (([v9 hasEntitlements] & 1) == 0)
  {
    v26 = +[SSLogConfig sharedDaemonConfig];
    if (!v26)
    {
      v26 = +[SSLogConfig sharedConfig];
    }

    v27 = [v26 shouldLog];
    if ([v26 shouldLogToDisk])
    {
      v28 = v27 | 2;
    }

    else
    {
      v28 = v27;
    }

    v29 = [v26 OSLogObject];
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v28 &= 2u;
    }

    if (v28)
    {
      v38 = 138412546;
      v39 = objc_opt_class();
      v40 = 2112;
      v41 = v9;
      v30 = v39;
      LODWORD(v35) = 22;
      v31 = _os_log_send_and_compose_impl();

      if (!v31)
      {
LABEL_19:

        [v8 _sendUnentitledMessageToClient:v9];
        goto LABEL_22;
      }

      v29 = [NSString stringWithCString:v31 encoding:4, &v38, v35];
      free(v31);
      SSFileLog();
    }

    goto LABEL_19;
  }

  v10 = [SSURLConnectionRequest alloc];
  v11 = xpc_dictionary_get_value(v6, "1");
  v12 = [v10 initWithXPCEncoding:v11];

  v13 = [v12 requestProperties];
  v14 = [v13 mutableCopy];

  v15 = [v9 auditTokenData];
  [v14 setClientAuditTokenData:v15];

  v16 = [v14 clientIdentifier];

  if (!v16)
  {
    v17 = [v9 clientIdentifierHeader];
    [v14 setClientIdentifier:v17];
  }

  v18 = [v14 HTTPHeaders];
  v19 = SSHTTPHeaderUserAgent;
  v20 = [v18 objectForKey:SSHTTPHeaderUserAgent];

  if (!v20)
  {
    v21 = [v9 userAgent];
    [v14 setValue:v21 forHTTPHeaderField:v19];
  }

  v22 = [v14 URL];
  v23 = [v22 scheme];
  v24 = [v23 isEqualToString:SSActionURLScheme];

  if (v24)
  {
    v25 = [v14 URL];
    [v8 _enqueueOperationsForStoreServicesURL:v25];
  }

  else
  {
    v32 = [[URLConnectionRequestOperation alloc] initWithRequestProperties:v14];
    v33 = [v12 authenticationContext];
    [(URLConnectionRequestOperation *)v32 setAuthenticationContext:v33];

    v34 = [v12 destinationFileURL];
    [(URLConnectionRequestOperation *)v32 setDestinationFileURL:v34];

    -[URLConnectionRequestOperation setSendsResponseForHTTPFailures:](v32, "setSendsResponseForHTTPFailures:", [v12 sendsResponseForHTTPFailures]);
    -[URLConnectionRequestOperation setShouldMescalSign:](v32, "setShouldMescalSign:", [v12 shouldMescalSign]);
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_10014699C;
    v36[3] = &unk_100329B68;
    v37 = v32;
    v25 = v32;
    [v8 addOperation:v25 forClient:v9 withMessageBlock:v36];
  }

LABEL_22:
}

+ (void)restoreDemotedApplicationsWithMessage:(id)a3 connection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 sharedNetworkRequestQueue];
  v9 = [v8 _newClientWithMessage:v6 connection:v7];
  if (([v9 hasEntitlements] & 1) == 0)
  {
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
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v17 &= 2u;
    }

    if (v17)
    {
      v28 = 138412546;
      v29 = objc_opt_class();
      v30 = 2112;
      v31 = v9;
      v19 = v29;
      LODWORD(v24) = 22;
      v20 = _os_log_send_and_compose_impl();

      if (!v20)
      {
LABEL_17:

        [v8 _sendUnentitledMessageToClient:v9];
        goto LABEL_23;
      }

      v18 = [NSString stringWithCString:v20 encoding:4, &v28, v24];
      free(v20);
      SSFileLog();
    }

    goto LABEL_17;
  }

  v10 = objc_alloc_init(NSMutableArray);
  objc_opt_class();
  v11 = SSXPCDictionaryCopyObjectWithClass();
  v12 = xpc_dictionary_get_value(v6, "1");
  v13 = v12;
  if (v12)
  {
    type = xpc_get_type(v12);
    if (type == &_xpc_type_string)
    {
      v21 = SSXPCCreateCFObjectFromXPCObject();
      [v10 addObject:v21];
    }

    else if (type == &_xpc_type_array)
    {
      applier[0] = _NSConcreteStackBlock;
      applier[1] = 3221225472;
      applier[2] = sub_100146DD8;
      applier[3] = &unk_1003280D0;
      v26 = v13;
      v27 = v10;
      xpc_array_apply(v26, applier);
    }
  }

  if (SSDebugShouldUseAppstored())
  {
    [AppStoreUtility restoreDemotedAppsWithBundleIDs:v10];
  }

  else
  {
    v22 = +[UpdateMigrator sharedInstance];
    [v22 restoreDemotedBundleIdentifiers:v10 options:v11];
  }

  reply = xpc_dictionary_create_reply(v6);
  xpc_dictionary_set_int64(reply, "0", 1011);
  xpc_dictionary_set_BOOL(reply, "1", 1);
  SSXPCDictionarySetObject();
  xpc_connection_send_message(v7, reply);

LABEL_23:
}

+ (void)sdk_loadStoreFrontIdentifierWithMessage:(id)a3 connection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 sharedNetworkRequestQueue];
  v24 = 0u;
  v25 = 0u;
  xpc_connection_get_audit_token();
  memset(v26, 0, sizeof(v26));
  if (TCCAccessCheckAuditToken())
  {
    v9 = [SSURLBagContext alloc];
    v10 = xpc_dictionary_get_value(v6, "1");
    v11 = [v9 initWithXPCEncoding:v10];

    v12 = SSHTTPHeaderUserAgent;
    v13 = [v11 valueForHTTPHeaderField:SSHTTPHeaderUserAgent];

    if (!v13)
    {
      v14 = [[XPCClient alloc] initWithInputConnection:v7];
      v15 = [(XPCClient *)v14 userAgent];
      [v11 setValue:v15 forHTTPHeaderField:v12];
    }

    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100147148;
    v22[3] = &unk_100329B68;
    v23 = [[ISLoadURLBagOperation alloc] initWithBagContext:v11];
    v16 = v23;
    [v8 addOperation:v16 forMessage:v6 connection:v7 replyBlock:v22];
  }

  else
  {
    v11 = +[SSLogConfig sharedDaemonConfig];
    if (!v11)
    {
      v11 = +[SSLogConfig sharedConfig];
    }

    v17 = [v11 shouldLog];
    if ([v11 shouldLogToDisk])
    {
      v18 = v17 | 2;
    }

    else
    {
      v18 = v17;
    }

    v16 = [v11 OSLogObject];
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v18 &= 2u;
    }

    if (v18)
    {
      LODWORD(v26[0]) = 138412290;
      *(v26 + 4) = objc_opt_class();
      v19 = *(v26 + 4);
      LODWORD(v21) = 12;
      v20 = _os_log_send_and_compose_impl();

      if (!v20)
      {
        goto LABEL_6;
      }

      v16 = [NSString stringWithCString:v20 encoding:4, v26, v21];
      free(v20);
      SSFileLog();
    }
  }

LABEL_6:
}

+ (void)sdk_requestAPITokenWithMessage:(id)a3 connection:(id)a4
{
  xdict = a3;
  v6 = a4;
  v27 = [a1 sharedNetworkRequestQueue];
  v7 = [v27 _newClientWithMessage:xdict connection:v6];
  v32 = 0u;
  v33 = 0u;
  xpc_connection_get_audit_token();
  *location = 0u;
  v35 = 0u;
  if (TCCAccessCheckAuditToken())
  {
    v8 = [SSVCloudServiceAPITokenRequest alloc];
    v9 = xpc_dictionary_get_value(xdict, "1");
    v10 = [v8 initWithXPCEncoding:v9];

    v11 = [v7 clientIdentifier];
    v25 = [v7 clientVersion];
    v12 = +[SSAccountStore defaultStore];
    v13 = [v12 activeAccount];

    if (v13)
    {
      v14 = [[SSMutableAuthenticationContext alloc] initWithAccount:v13];
    }

    else
    {
      v14 = objc_alloc_init(SSMutableAuthenticationContext);
    }

    v19 = v14;
    [v14 setPromptStyle:0];
    [v19 setAllowsSilentAuthentication:1];
    v20 = objc_alloc_init(CloudServiceAPITokenOperation);
    [(CloudServiceAPITokenOperation *)v20 setAuthenticationContext:v19];
    v21 = [v10 clientToken];
    [(CloudServiceAPITokenOperation *)v20 setClientToken:v21];

    [(CloudServiceAPITokenOperation *)v20 setRequestingBundleID:v11];
    [(CloudServiceAPITokenOperation *)v20 setRequestingBundleVersion:v25];
    objc_initWeak(location, v20);
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_100147604;
    v28[3] = &unk_100329CA8;
    objc_copyWeak(&v31, location);
    v22 = v7;
    v29 = v22;
    v23 = v27;
    v30 = v23;
    [(CloudServiceAPITokenOperation *)v20 setResponseBlock:v28];
    [v23 setClient:v22 forOperation:v20];
    [v23 addOperation:v20];

    objc_destroyWeak(&v31);
    objc_destroyWeak(location);

    goto LABEL_14;
  }

  v10 = +[SSLogConfig sharedConfig];
  v15 = [v10 shouldLog];
  if ([v10 shouldLogToDisk])
  {
    v15 |= 2u;
  }

  v11 = [v10 OSLogObject];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v16 = v15;
  }

  else
  {
    v16 = v15 & 2;
  }

  if (!v16)
  {
    goto LABEL_14;
  }

  LODWORD(location[0]) = 138412290;
  *(location + 4) = objc_opt_class();
  v17 = *(location + 4);
  LODWORD(v24) = 12;
  v18 = _os_log_send_and_compose_impl();

  if (v18)
  {
    v11 = [NSString stringWithCString:v18 encoding:4, location, v24];
    free(v18);
    SSFileLog();
LABEL_14:
  }
}

+ (void)silentEnrollmentWithMessage:(id)a3 connection:(id)a4
{
  v40 = a3;
  v6 = a4;
  v7 = [a1 sharedNetworkRequestQueue];
  v41 = [v7 _newClientWithMessage:v40 connection:v6];
  if (SSXPCConnectionHasEntitlement())
  {
    v8 = [SSSilentEnrollment alloc];
    v9 = xpc_dictionary_get_value(v40, "1");
    v10 = [v8 initWithXPCEncoding:v9];

    v11 = [v10 context];
    v39 = [v11 accountIdentifier];

    v12 = [v10 context];
    v38 = [v12 headerADSID];

    v13 = [v10 context];
    v37 = [v13 headerGSToken];

    v14 = [v10 context];
    v36 = [v14 headerGuid];

    v15 = [v10 context];
    v35 = [v15 headerMMeClientInfo];

    v16 = [v10 context];
    v34 = [v16 headerMMeDeviceId];

    v17 = [v10 context];
    v18 = [v17 URLString];
    v33 = [NSURL URLWithString:v18];

    v19 = objc_alloc_init(ISStoreURLOperation);
    v20 = objc_alloc_init(ISJSONDataProvider);
    [v19 setDataProvider:v20];
    v21 = [[SSAuthenticationContext alloc] initWithAccountIdentifier:v39];
    [v19 setAuthenticationContext:v21];
    v22 = [[NSMutableURLRequest alloc] initWithURL:v33];
    [v22 setHTTPMethod:@"GET"];
    [v22 setValue:v38 forHTTPHeaderField:SSHTTPHeaderXAppleADSID];
    [v22 setValue:v37 forHTTPHeaderField:SSHTTPHeaderXAppleGSToken];
    [v22 setValue:v36 forHTTPHeaderField:SSHTTPHeaderGUID];
    [v22 setValue:v35 forHTTPHeaderField:SSHTTPHeaderXAppleMMeClientInfo];
    [v22 setValue:v34 forHTTPHeaderField:SSHTTPHeaderXAppleMMeDeviceID];
    v23 = [[SSMutableURLRequestProperties alloc] initWithURLRequest:v22];
    [v19 setRequestProperties:v23];
    objc_initWeak(location, v19);
    v42[0] = _NSConcreteStackBlock;
    v42[1] = 3221225472;
    v42[2] = sub_100147C48;
    v42[3] = &unk_100328ED0;
    objc_copyWeak(&v44, location);
    v24 = v41;
    v43 = v24;
    [v19 setCompletionBlock:v42];
    [v7 setClient:v24 forOperation:v19];
    [v7 addOperation:v19];

    objc_destroyWeak(&v44);
    objc_destroyWeak(location);
  }

  else
  {
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
    if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v27 &= 2u;
    }

    if (v27)
    {
      *location = 138543618;
      *&location[4] = objc_opt_class();
      v46 = 2114;
      v47 = v41;
      v29 = *&location[4];
      LODWORD(v32) = 22;
      v30 = _os_log_send_and_compose_impl();

      if (v30)
      {
        v31 = [NSString stringWithCString:v30 encoding:4, location, v32];
        free(v30);
        SSFileLog();
      }
    }

    else
    {
    }

    [v7 _sendUnentitledMessageToClient:v41];
  }
}

+ (void)silentEnrollmentVerificationWithMessage:(id)a3 connection:(id)a4
{
  v42 = a3;
  v43 = a4;
  v6 = [a1 sharedNetworkRequestQueue];
  v44 = [v6 _newClientWithMessage:v42 connection:v43];
  if (SSXPCConnectionHasEntitlement())
  {
    v7 = [SSSilentEnrollment alloc];
    v8 = xpc_dictionary_get_value(v42, "1");
    v9 = [v7 initWithXPCEncoding:v8];

    v10 = [v9 context];
    v41 = [v10 accountIdentifier];

    v11 = [v9 context];
    v40 = [v11 headerADSID];

    v12 = [v9 context];
    v39 = [v12 headerGSToken];

    v13 = [v9 context];
    v38 = [v13 headerGuid];

    v14 = [v9 context];
    v37 = [v14 headerMMeClientInfo];

    v15 = [v9 context];
    v36 = [v15 headerMMeDeviceId];

    v16 = [v9 context];
    v35 = [v16 parameters];

    v17 = [v9 context];
    v18 = [v17 URLString];
    v19 = [NSURL URLWithString:v18];

    v20 = objc_alloc_init(ISStoreURLOperation);
    v21 = objc_alloc_init(ISJSONDataProvider);
    [v20 setDataProvider:v21];
    v22 = [[SSAuthenticationContext alloc] initWithAccountIdentifier:v41];
    [v20 setAuthenticationContext:v22];
    v23 = [[NSMutableURLRequest alloc] initWithURL:v19];
    [v23 setHTTPBody:v35];
    [v23 setHTTPMethod:@"POST"];
    [v23 setHTTPContentType:@"application/json"];
    [v23 setValue:v40 forHTTPHeaderField:SSHTTPHeaderXAppleADSID];
    [v23 setValue:v39 forHTTPHeaderField:SSHTTPHeaderXAppleGSToken];
    [v23 setValue:v38 forHTTPHeaderField:SSHTTPHeaderGUID];
    [v23 setValue:v37 forHTTPHeaderField:SSHTTPHeaderXAppleMMeClientInfo];
    [v23 setValue:v36 forHTTPHeaderField:SSHTTPHeaderXAppleMMeDeviceID];
    v24 = [[SSMutableURLRequestProperties alloc] initWithURLRequest:v23];
    [v20 setRequestProperties:v24];
    objc_initWeak(location, v20);
    v45[0] = _NSConcreteStackBlock;
    v45[1] = 3221225472;
    v45[2] = sub_100148448;
    v45[3] = &unk_100328ED0;
    objc_copyWeak(&v47, location);
    v25 = v44;
    v46 = v25;
    [v20 setCompletionBlock:v45];
    [v6 setClient:v25 forOperation:v20];
    [v6 addOperation:v20];

    objc_destroyWeak(&v47);
    objc_destroyWeak(location);
  }

  else
  {
    v26 = +[SSLogConfig sharedDaemonConfig];
    if (!v26)
    {
      v26 = +[SSLogConfig sharedConfig];
    }

    v27 = [v26 shouldLog];
    if ([v26 shouldLogToDisk])
    {
      v28 = v27 | 2;
    }

    else
    {
      v28 = v27;
    }

    v29 = [v26 OSLogObject];
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
      *location = 138543618;
      *&location[4] = objc_opt_class();
      v49 = 2114;
      v50 = v44;
      v31 = *&location[4];
      LODWORD(v34) = 22;
      v32 = _os_log_send_and_compose_impl();

      if (v32)
      {
        v33 = [NSString stringWithCString:v32 encoding:4, location, v34];
        free(v32);
        SSFileLog();
      }
    }

    else
    {
    }

    [v6 _sendUnentitledMessageToClient:v44];
  }
}

+ (void)authenticationRequestWithMessage:(id)a3 connection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 sharedNetworkRequestQueue];
  v9 = [v8 _newClientWithMessage:v6 connection:v7];

  if (([v9 hasEntitlements] & 1) == 0)
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
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v15 &= 2u;
    }

    if (v15)
    {
      v22 = 138543618;
      v23 = objc_opt_class();
      v24 = 2114;
      v25 = v9;
      v17 = v23;
      LODWORD(v19) = 22;
      v18 = _os_log_send_and_compose_impl();

      if (!v18)
      {
LABEL_14:

        [v8 _sendUnentitledMessageToClient:v9];
        goto LABEL_15;
      }

      v16 = [NSString stringWithCString:v18 encoding:4, &v22, v19];
      free(v18);
      SSFileLog();
    }

    goto LABEL_14;
  }

  +[SSVSubscriptionStatusCoordinator beginSuspendingSubscriptionStatusChangeNotifications];
  v10 = [SSAuthenticateRequest alloc];
  v11 = xpc_dictionary_get_value(v6, "1");
  v12 = [v10 initWithXPCEncoding:v11];

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100148914;
  v20[3] = &unk_100329CD0;
  v21 = v9;
  [v12 startWithAuthenticateResponseBlock:v20];

LABEL_15:
}

+ (void)serverAuthenticateWithMessage:(id)a3 connection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 sharedNetworkRequestQueue];
  v9 = [v8 _newClientWithMessage:v6 connection:v7];

  if (([v9 hasEntitlements] & 1) == 0)
  {
    v21 = +[SSLogConfig sharedDaemonConfig];
    if (!v21)
    {
      v21 = +[SSLogConfig sharedConfig];
    }

    v22 = [v21 shouldLog];
    if ([v21 shouldLogToDisk])
    {
      v23 = v22 | 2;
    }

    else
    {
      v23 = v22;
    }

    v24 = [v21 OSLogObject];
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v23 &= 2u;
    }

    if (v23)
    {
      v31 = 138412546;
      v32 = objc_opt_class();
      v33 = 2112;
      v34 = v9;
      v25 = v32;
      LODWORD(v27) = 22;
      v26 = _os_log_send_and_compose_impl();

      if (!v26)
      {
LABEL_14:

        [v8 _sendUnentitledMessageToClient:v9];
        goto LABEL_15;
      }

      v24 = [NSString stringWithCString:v26 encoding:4, &v31, v27];
      free(v26);
      SSFileLog();
    }

    goto LABEL_14;
  }

  v10 = [SSVServerAuthenticateRequest alloc];
  v11 = xpc_dictionary_get_value(v6, "1");
  v12 = [v10 initWithXPCEncoding:v11];

  v13 = [v12 authenticationContext];
  v14 = [v8 _copyAuthenticationContextWithContext:v13 client:v9];

  v15 = [ISDialog alloc];
  v16 = [v12 encodedDialog];
  v17 = [v15 initWithXPCEncoding:v16];

  v18 = [[ServerAuthenticationOperation alloc] initWithDialog:v17];
  [(ServerAuthenticationOperation *)v18 setAuthenticationContext:v14];
  [(ServerAuthenticationOperation *)v18 setPerformsButtonAction:0];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100148D30;
  v28[3] = &unk_100329CF8;
  v29 = v18;
  v30 = v17;
  v19 = v17;
  v20 = v18;
  [v8 addOperation:v20 forClient:v9 withMessageBlock:v28];

LABEL_15:
}

+ (void)updateMediaContentTasteWithMessage:(id)a3 connection:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 sharedNetworkRequestQueue];
  v9 = [v8 _newClientWithMessage:v7 connection:v6];

  LOBYTE(v7) = SSXPCConnectionHasEntitlement();
  if ((v7 & 1) == 0 && (SSIsDaemon() & 1) == 0)
  {
    v16 = +[SSLogConfig sharedDaemonConfig];
    if (!v16)
    {
      v16 = +[SSLogConfig sharedConfig];
    }

    v17 = [v16 shouldLog];
    if ([v16 shouldLogToDisk])
    {
      v18 = v17 | 2;
    }

    else
    {
      v18 = v17;
    }

    v19 = [v16 OSLogObject];
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v18 &= 2u;
    }

    if (v18)
    {
      *v23 = 138412546;
      *&v23[4] = objc_opt_class();
      *&v23[12] = 2112;
      *&v23[14] = v9;
      v20 = *&v23[4];
      LODWORD(v22) = 22;
      v21 = _os_log_send_and_compose_impl();

      if (!v21)
      {
LABEL_26:

        [v8 _sendUnentitledMessageToClient:v9];
        goto LABEL_27;
      }

      v19 = [NSString stringWithCString:v21 encoding:4, v23, v22, *v23, *&v23[8]];
      free(v21);
      SSFileLog();
    }

    goto LABEL_26;
  }

  v10 = +[SSLogConfig sharedDaemonConfig];
  if (!v10)
  {
    v10 = +[SSLogConfig sharedConfig];
  }

  v11 = [v10 shouldLog];
  if ([v10 shouldLogToDisk])
  {
    v12 = v11 | 2;
  }

  else
  {
    v12 = v11;
  }

  v13 = [v10 OSLogObject];
  if (!os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
  {
    v12 &= 2u;
  }

  if (!v12)
  {
    goto LABEL_13;
  }

  *v23 = 138412546;
  *&v23[4] = objc_opt_class();
  *&v23[12] = 2112;
  *&v23[14] = v9;
  v14 = *&v23[4];
  LODWORD(v22) = 22;
  v15 = _os_log_send_and_compose_impl();

  if (v15)
  {
    v13 = [NSString stringWithCString:v15 encoding:4, v23, v22, *v23, *&v23[16]];
    free(v15);
    SSFileLog();
LABEL_13:
  }

  [v8 _sendNotSupportedMessageToClient:v9];
LABEL_27:
}

+ (void)wishlistAddItemsWithMessage:(id)a3 connection:(id)a4
{
  v6 = a3;
  v31 = a4;
  v7 = [a1 sharedNetworkRequestQueue];
  v8 = [v7 _newClientWithMessage:v6 connection:v31];
  if ([v8 hasEntitlements])
  {
    v9 = objc_alloc_init(ISStoreURLOperation);
    v10 = +[DaemonProtocolDataProvider provider];
    [v9 setDataProvider:v10];

    v11 = +[SSAccountStore defaultStore];
    v12 = [v11 activeAccount];

    if (!v12 || ([v12 isAuthenticated] & 1) == 0)
    {
      [v9 setNeedsAuthentication:1];
    }

    v13 = [v8 clientIdentifier];
    v14 = ISClientIdentifierForBundleIdentifier();

    if ([v14 isEqualToString:ISClientIdentifierMoveToiOS])
    {
      [v9 setNeedsTermsAndConditionsAcceptance:1];
    }

    v15 = [SSWishlistAddItemsRequest alloc];
    v16 = xpc_dictionary_get_value(v6, "1");
    v17 = [v15 initWithXPCEncoding:v16];

    v18 = objc_alloc_init(SSMutableURLRequestProperties);
    v19 = [v8 clientIdentifier];
    [v18 setClientIdentifier:v19];

    [v18 setURLBagKey:@"addItemsToWishlistBaseUrl"];
    v20 = [v8 userAgent];
    [v18 setValue:v20 forHTTPHeaderField:SSHTTPHeaderUserAgent];

    v21 = [v17 copyQueryStringParameters];
    [v18 setRequestParameters:v21];
    [v9 setRequestProperties:v18];
    objc_initWeak(location, v9);
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_100149610;
    v32[3] = &unk_100328ED0;
    objc_copyWeak(&v34, location);
    v33 = v8;
    [v9 setCompletionBlock:v32];
    [v7 addOperation:v9];

    objc_destroyWeak(&v34);
    objc_destroyWeak(location);
  }

  else
  {
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
      *location = 138412546;
      *&location[4] = objc_opt_class();
      v36 = 2112;
      v37 = v8;
      v27 = *&location[4];
      LODWORD(v30) = 22;
      v28 = _os_log_send_and_compose_impl();

      if (v28)
      {
        v29 = [NSString stringWithCString:v28 encoding:4, location, v30];
        free(v28);
        SSFileLog();
      }
    }

    else
    {
    }

    [v7 _sendUnentitledMessageToClient:v8];
  }
}

+ (void)_addSubscriptionOperationWithType:(int64_t)a3 message:(id)a4 connection:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [a1 sharedNetworkRequestQueue];
  v11 = [v10 _newClientWithMessage:v8 connection:v9];

  if ([v11 hasEntitlements])
  {
    if (a3 == 2)
    {
      v25 = [SSVRefreshSubscriptionRequest alloc];
      v26 = xpc_dictionary_get_value(v8, "1");
      v21 = [v25 initWithXPCEncoding:v26];

      v27 = [v21 authenticationContext];
      v23 = [v10 _copyAuthenticationContextWithContext:v27 client:v11];

      v24 = [v21 isRequestingOfflineSlot];
    }

    else
    {
      if (a3 == 1)
      {
        v12 = SSVEnableSubscriptionRequest;
      }

      else
      {
        if (a3)
        {
          v23 = 0;
          v24 = 0;
          goto LABEL_23;
        }

        v12 = SSVDisableSubscriptionRequest;
      }

      v19 = [v12 alloc];
      v20 = xpc_dictionary_get_value(v8, "1");
      v21 = [v19 initWithXPCEncoding:v20];

      v22 = [v21 authenticationContext];
      v23 = [v10 _copyAuthenticationContextWithContext:v22 client:v11];

      v24 = 0;
    }

LABEL_23:
    v28 = objc_alloc_init(SubscriptionOperation);
    [(SubscriptionOperation *)v28 setAuthenticationContext:v23];
    [(SubscriptionOperation *)v28 setOperationType:a3];
    [(SubscriptionOperation *)v28 setRequestingOfflineSlot:v24];
    v29 = [v11 userAgent];
    [(SubscriptionOperation *)v28 setUserAgent:v29];

    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_100149AE8;
    v32[3] = &unk_100329B68;
    v33 = v28;
    v30 = v28;
    [v10 addOperation:v30 forClient:v11 withMessageBlock:v32];

    goto LABEL_24;
  }

  v13 = +[SSLogConfig sharedDaemonConfig];
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
  if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v15 &= 2u;
  }

  if (!v15)
  {
    goto LABEL_16;
  }

  v34 = 138412546;
  v35 = objc_opt_class();
  v36 = 2112;
  v37 = v11;
  v17 = v35;
  LODWORD(v31) = 22;
  v18 = _os_log_send_and_compose_impl();

  if (v18)
  {
    v16 = [NSString stringWithCString:v18 encoding:4, &v34, v31];
    free(v18);
    SSFileLog();
LABEL_16:
  }

  [v10 _sendUnentitledMessageToClient:v11];
LABEL_24:
}

- (id)_copyAuthenticationContextWithContext:(id)a3 client:(id)a4
{
  v5 = a4;
  v6 = [a3 mutableCopy];
  if (!v6)
  {
    v7 = [SSMutableAuthenticationContext alloc];
    v8 = +[SSAccountStore defaultStore];
    v9 = [v8 activeAccount];
    v6 = [v7 initWithAccount:v9];
  }

  v10 = [v6 clientIdentifierHeader];

  if (!v10)
  {
    v11 = [v5 clientIdentifierHeader];
    [v6 setClientIdentifierHeader:v11];
  }

  v12 = [v6 HTTPHeaders];
  v13 = SSHTTPHeaderUserAgent;
  v14 = [v12 objectForKey:SSHTTPHeaderUserAgent];

  if (!v14)
  {
    v15 = [v5 userAgent];
    [v6 setValue:v15 forHTTPHeaderField:v13];
  }

  return v6;
}

- (void)_enqueueOperationsForStoreServicesURL:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableString);
  v6 = objc_alloc_init(NSMutableArray);
  v7 = objc_alloc_init(NSMutableArray);
  v61[0] = _NSConcreteStackBlock;
  v61[1] = 3221225472;
  v61[2] = sub_10014A440;
  v61[3] = &unk_100329D20;
  v8 = v5;
  v62 = v8;
  v9 = v6;
  v63 = v9;
  v10 = v7;
  v64 = v10;
  [v4 enumerateQueryWithBlock:v61];
  if (![v8 isEqualToString:@"download-manifest"])
  {
    v30 = v10;
    v31 = v9;
    v32 = [v8 isEqualToString:@"redeem-codes"];
    v33 = +[SSLogConfig sharedDaemonConfig];
    v13 = v33;
    if (!v32)
    {
      if (!v33)
      {
        v13 = +[SSLogConfig sharedConfig];
      }

      v48 = [(RedeemCodesOperation *)v13 shouldLog];
      if ([(RedeemCodesOperation *)v13 shouldLogToDisk])
      {
        v48 |= 2u;
      }

      v43 = [(RedeemCodesOperation *)v13 OSLogObject];
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
        v66 = 138412546;
        v67 = v50;
        v68 = 2112;
        v69 = v8;
        v51 = v50;
        LODWORD(v53) = 22;
        v52 = _os_log_send_and_compose_impl();

        if (!v52)
        {
          v10 = v30;
          goto LABEL_60;
        }

        v43 = [NSString stringWithCString:v52 encoding:4, &v66, v53];
        free(v52);
        SSFileLog();
      }

      v10 = v30;
      goto LABEL_59;
    }

    if (!v33)
    {
      v13 = +[SSLogConfig sharedConfig];
    }

    v34 = [(RedeemCodesOperation *)v13 shouldLog];
    if ([(RedeemCodesOperation *)v13 shouldLogToDisk])
    {
      v34 |= 2u;
    }

    v35 = [(RedeemCodesOperation *)v13 OSLogObject];
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      v36 = v34;
    }

    else
    {
      v36 = v34 & 2;
    }

    if (v36)
    {
      v37 = objc_opt_class();
      v38 = v4;
      v39 = v37;
      v40 = [v31 count];
      v66 = 138412546;
      v67 = v37;
      v68 = 2048;
      v69 = v40;
      LODWORD(v53) = 22;
      v41 = _os_log_send_and_compose_impl();

      v4 = v38;
      v9 = v31;

      v10 = v30;
      if (!v41)
      {
LABEL_57:

        v13 = [[RedeemCodesOperation alloc] initWithRedeemCodes:v9];
        [(RequestQueue *)self addOperation:v13];
        goto LABEL_60;
      }

      v35 = [NSString stringWithCString:v41 encoding:4, &v66, v53];
      free(v41);
      SSFileLog();
    }

    else
    {
      v10 = v30;
    }

    goto LABEL_57;
  }

  v11 = SSRestrictionsIsOnDeviceAppInstallationAllowed();
  v12 = +[SSLogConfig sharedDaemonConfig];
  v13 = v12;
  if (!v11)
  {
    if (!v12)
    {
      v13 = +[SSLogConfig sharedConfig];
    }

    v42 = [(RedeemCodesOperation *)v13 shouldLog];
    if ([(RedeemCodesOperation *)v13 shouldLogToDisk])
    {
      v42 |= 2u;
    }

    v43 = [(RedeemCodesOperation *)v13 OSLogObject];
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      v44 = v42;
    }

    else
    {
      v44 = v42 & 2;
    }

    if (v44)
    {
      v45 = objc_opt_class();
      v66 = 138412290;
      v67 = v45;
      v46 = v45;
      LODWORD(v53) = 12;
      v47 = _os_log_send_and_compose_impl();

      if (!v47)
      {
        goto LABEL_60;
      }

      v43 = [NSString stringWithCString:v47 encoding:4, &v66, v53];
      free(v47);
      SSFileLog();
    }

LABEL_59:

    goto LABEL_60;
  }

  if (!v12)
  {
    v13 = +[SSLogConfig sharedConfig];
  }

  v55 = v9;
  v56 = v4;
  v14 = [(RedeemCodesOperation *)v13 shouldLog];
  if ([(RedeemCodesOperation *)v13 shouldLogToDisk])
  {
    v15 = v14 | 2;
  }

  else
  {
    v15 = v14;
  }

  v16 = [(RedeemCodesOperation *)v13 OSLogObject];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
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
    v19 = v18;
    v20 = [v10 count];
    v66 = 138412546;
    v67 = v18;
    v68 = 2048;
    v69 = v20;
    LODWORD(v53) = 22;
    v21 = _os_log_send_and_compose_impl();

    if (!v21)
    {
      goto LABEL_15;
    }

    v16 = [NSString stringWithCString:v21 encoding:4, &v66, v53];
    free(v21);
    SSFileLog();
  }

LABEL_15:
  v22 = ISWeakLinkedClassForString();
  v23 = ISWeakLinkedClassForString();
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v13 = v10;
  v24 = [(RedeemCodesOperation *)v13 countByEnumeratingWithState:&v57 objects:v65 count:16];
  if (v24)
  {
    v25 = v24;
    v54 = v10;
    v26 = *v58;
    do
    {
      for (i = 0; i != v25; i = i + 1)
      {
        if (*v58 != v26)
        {
          objc_enumerationMutation(v13);
        }

        v28 = [[v22 alloc] initWithURL:*(*(&v57 + 1) + 8 * i)];
        v29 = [[v23 alloc] initWithOptions:v28];
        [v29 startWithCompletionBlock:&stru_100329D60];
      }

      v25 = [(RedeemCodesOperation *)v13 countByEnumeratingWithState:&v57 objects:v65 count:16];
    }

    while (v25);
    v9 = v55;
    v4 = v56;
    v10 = v54;
  }

  else
  {
    v4 = v56;
  }

LABEL_60:
}

- (id)_managedQueue
{
  managedQueue = self->_managedQueue;
  if (!managedQueue)
  {
    v4 = objc_alloc_init(ISOperationQueue);
    v5 = self->_managedQueue;
    self->_managedQueue = v4;

    [(ISOperationQueue *)self->_managedQueue setAdjustsMaxConcurrentOperationCount:0];
    [(ISOperationQueue *)self->_managedQueue setMaxConcurrentOperationCount:1];
    managedQueue = self->_managedQueue;
  }

  return managedQueue;
}

- (id)_newClientWithMessage:(id)a3 connection:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[XPCClient alloc] initWithInputConnection:v5];

  v8 = xpc_dictionary_get_value(v6, "2");

  if (v8 && xpc_get_type(v8) == &_xpc_type_endpoint)
  {
    v9 = xpc_connection_create_from_endpoint(v8);
    if (v9)
    {
      [(XPCClient *)v7 setOutputConnectionWithConnection:v9];
    }
  }

  return v7;
}

- (void)_sendMessageWithError:(id)a3 toClient:(id)a4
{
  v5 = a4;
  v6 = a3;
  v8 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v8, "0", 1011);
  SSXPCDictionarySetObject();

  v7 = [v5 outputConnection];

  [v7 sendMessage:v8];
}

- (void)_sendNotSupportedMessageToClient:(id)a3
{
  v4 = a3;
  v5 = SSError();
  [(NetworkRequestQueue *)self _sendMessageWithError:v5 toClient:v4];
}

- (void)_sendUnentitledMessageToClient:(id)a3
{
  v3 = a3;
  v6 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v6, "0", 1011);
  v4 = SSError();
  SSXPCDictionarySetObject();

  v5 = [v3 outputConnection];

  [v5 sendMessage:v6];
}

- (void)_sendUnentitledReplyForMessage:(id)a3 connection:(id)a4
{
  connection = a4;
  reply = xpc_dictionary_create_reply(a3);
  if (reply)
  {
    v6 = SSError();
    SSXPCDictionarySetObject();

    xpc_connection_send_message(connection, reply);
  }
}

- (void)_enqueueSubscriptionStatusOperation:(id)a3 forClient:(id)a4
{
  v6 = a3;
  v7 = a4;
  subscriptionStatusOperationAccessQueue = self->_subscriptionStatusOperationAccessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10014A9C8;
  block[3] = &unk_1003281A0;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_sync(subscriptionStatusOperationAccessQueue, block);
}

- (void)_dequeueSubscriptionStatusOperation:(id)a3
{
  v4 = a3;
  subscriptionStatusOperationAccessQueue = self->_subscriptionStatusOperationAccessQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10014AB20;
  v7[3] = &unk_100327238;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(subscriptionStatusOperationAccessQueue, v7);
}

@end