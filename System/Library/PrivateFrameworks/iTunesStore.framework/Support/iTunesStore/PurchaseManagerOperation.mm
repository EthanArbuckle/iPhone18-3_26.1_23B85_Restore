@interface PurchaseManagerOperation
- (BOOL)_isDeviceCapableForPurchase;
- (BOOL)useRemoteAuthentication;
- (NSString)clientIdentifier;
- (NSString)clientIdentifierHeader;
- (PurchaseManagerOperation)initWithPurchase:(id)a3;
- (id)_appleIDForApp:(id)a3 error:(id *)a4;
- (id)_familyPurchaserAccountIdentifierForApplication:(id)a3;
- (id)_incompatibleErrorWithPurchase:(id)a3;
- (id)_installedSoftwareApplicationForPurchase:(id)a3;
- (id)_localRedownloadParametersForPurchase:(id)a3;
- (id)_newPurchaseOperationWithPurchase:(id)a3;
- (id)_personalizedRedownloadParametersForPurchase:(id)a3;
- (id)_urlBagKey;
- (id)purchaseBlock;
- (int64_t)URLBagType;
- (void)_performSetup;
- (void)_performTeardownWithResult:(BOOL)a3 queueResponse:(id)a4;
- (void)_showDialogForPurchase:(id)a3 error:(id)a4;
- (void)_updateAccount:(id)a3 withPurchaseResponse:(id)a4;
- (void)run;
- (void)setClientIdentifier:(id)a3;
- (void)setClientIdentifierHeader:(id)a3;
- (void)setPurchaseBlock:(id)a3;
- (void)setURLBagType:(int64_t)a3;
- (void)setUseRemoteAuthentication:(BOOL)a3;
@end

@implementation PurchaseManagerOperation

- (PurchaseManagerOperation)initWithPurchase:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = PurchaseManagerOperation;
  v6 = [(PurchaseManagerOperation *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_purchase, a3);
    v8 = [v5 requestProperties];
    v7->_urlBagType = [v8 URLBagType];
  }

  return v7;
}

- (NSString)clientIdentifier
{
  [(PurchaseManagerOperation *)self lock];
  v3 = [(NSString *)self->_clientIdentifier copy];
  [(PurchaseManagerOperation *)self unlock];

  return v3;
}

- (NSString)clientIdentifierHeader
{
  [(PurchaseManagerOperation *)self lock];
  v3 = [(NSString *)self->_clientIdentifierHeader copy];
  [(PurchaseManagerOperation *)self unlock];

  return v3;
}

- (id)purchaseBlock
{
  [(PurchaseManagerOperation *)self lock];
  v3 = [self->_purchaseBlock copy];
  [(PurchaseManagerOperation *)self unlock];
  v4 = objc_retainBlock(v3);

  return v4;
}

- (void)setClientIdentifier:(id)a3
{
  v6 = a3;
  [(PurchaseManagerOperation *)self lock];
  if (self->_clientIdentifier != v6)
  {
    v4 = [(NSString *)v6 copy];
    clientIdentifier = self->_clientIdentifier;
    self->_clientIdentifier = v4;
  }

  [(PurchaseManagerOperation *)self unlock];
}

- (void)setClientIdentifierHeader:(id)a3
{
  v6 = a3;
  [(PurchaseManagerOperation *)self lock];
  if (self->_clientIdentifierHeader != v6)
  {
    v4 = [(NSString *)v6 copy];
    clientIdentifierHeader = self->_clientIdentifierHeader;
    self->_clientIdentifierHeader = v4;
  }

  [(PurchaseManagerOperation *)self unlock];
}

- (void)setPurchaseBlock:(id)a3
{
  v6 = a3;
  [(PurchaseManagerOperation *)self lock];
  if (self->_purchaseBlock != v6)
  {
    v4 = [v6 copy];
    purchaseBlock = self->_purchaseBlock;
    self->_purchaseBlock = v4;
  }

  [(PurchaseManagerOperation *)self unlock];
}

- (void)setURLBagType:(int64_t)a3
{
  [(PurchaseManagerOperation *)self lock];
  self->_urlBagType = a3;

  [(PurchaseManagerOperation *)self unlock];
}

- (void)setUseRemoteAuthentication:(BOOL)a3
{
  [(PurchaseManagerOperation *)self lock];
  self->_useRemoteAuthentication = a3;

  [(PurchaseManagerOperation *)self unlock];
}

- (int64_t)URLBagType
{
  [(PurchaseManagerOperation *)self lock];
  urlBagType = self->_urlBagType;
  [(PurchaseManagerOperation *)self unlock];
  return urlBagType;
}

- (BOOL)useRemoteAuthentication
{
  [(PurchaseManagerOperation *)self lock];
  useRemoteAuthentication = self->_useRemoteAuthentication;
  [(PurchaseManagerOperation *)self unlock];
  return useRemoteAuthentication;
}

- (void)run
{
  v2 = self;
  if ([(PurchaseManagerOperation *)self _isDeviceCapableForPurchase])
  {
    [(PurchaseManagerOperation *)v2 _performSetup];
    v3 = [(SSPurchase *)v2->_purchase gratisIdentifiers];
    v4 = [v3 count];

    if (v4)
    {
      if ([(SSPurchase *)v2->_purchase isGratisSoftwareClaim])
      {
        [AppStoreUtility claimAppsWithPurchase:v2->_purchase];
        v5 = 0;
        v6 = 0;
        v7 = 0;
        v105 = 0;
        v8 = 0;
        v114 = 0;
        v115 = 0;
        goto LABEL_45;
      }

      v22 = [[GratisClaimOperation alloc] initWithPurchase:v2->_purchase];
      v117 = 0;
      v5 = [(PurchaseManagerOperation *)v2 runSubOperation:v22 returningError:&v117];
      v116 = v117;
      v6 = [(GratisClaimOperation *)v22 authenticatedAccountDSID];
      v7 = [(GratisClaimOperation *)v22 rawOutput];
      v114 = [(GratisClaimOperation *)v22 URLResponse];
      v115 = 0;
      v105 = 0;
      v19 = 0;
      goto LABEL_42;
    }

    v22 = [(PurchaseManagerOperation *)v2 _newPurchaseOperationWithPurchase:v2->_purchase];
    v118 = 0;
    v5 = [(PurchaseManagerOperation *)v2 runSubOperation:v22 returningError:&v118];
    v116 = v118;
    v23 = [(GratisClaimOperation *)v22 shim];

    if (v23)
    {
      v24 = [(GratisClaimOperation *)v22 shim];
      v6 = [v24 authenticatedAccountDSID];

      v25 = [(GratisClaimOperation *)v22 shim];
      v7 = [v25 rawOutput];

      v26 = [(GratisClaimOperation *)v22 shim];
      v105 = [v26 requestPerformanceMetrics];

      v27 = [(GratisClaimOperation *)v22 shim];
      v19 = [v27 storeCorrelationID];

      v28 = [(GratisClaimOperation *)v22 shim];
      v115 = [v28 tidHeaders];

      v29 = [(GratisClaimOperation *)v22 shim];
      v114 = [v29 URLResponse];
    }

    else
    {
      v6 = [(GratisClaimOperation *)v22 authenticatedAccountDSID];
      v7 = [(GratisClaimOperation *)v22 rawOutput];
      v105 = [(GratisClaimOperation *)v22 requestPerformanceMetrics];
      v19 = [(GratisClaimOperation *)v22 storeCorrelationID];
      v115 = [(GratisClaimOperation *)v22 tidHeaders];
      v114 = [(GratisClaimOperation *)v22 URLResponse];
    }

    if (![(GratisClaimOperation *)v22 isMoveToiOS])
    {
LABEL_42:

      v39 = [v7 objectForKey:@"cancel-purchase-batch"];
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        v108 = 0;
LABEL_48:

        if (v6)
        {
          goto LABEL_52;
        }

        goto LABEL_49;
      }

      v40 = [v39 BOOLValue];

      if (!v40)
      {
        v108 = 0;
        if (v6)
        {
          goto LABEL_52;
        }

LABEL_49:
        v6 = [(SSPurchase *)v2->_purchase valueForDownloadProperty:SSDownloadPropertyStoreAccountIdentifier, v91];
        if (!v6)
        {
LABEL_53:
          v109 = v6;
          if (!v7)
          {
            v21 = 0;
            v20 = v105;
LABEL_85:
            [(PurchaseManagerOperation *)v2 _performTeardownWithResult:v5 queueResponse:v21, v91];
            goto LABEL_86;
          }

          v42 = [(SSPurchase *)v2->_purchase valueForDownloadProperty:SSDownloadPropertyPreferredAssetFlavor];
          v21 = [[StoreDownloadQueueResponse alloc] initWithDictionary:v7 userIdentifier:v6 preferredAssetFlavor:v42];
          if ([v19 length])
          {
            [(StoreDownloadQueueResponse *)v21 setStoreCorrelationID:v19];
          }

          v43 = [v7 objectForKey:@"jingleAction"];
          objc_opt_class();
          v20 = v105;
          if ((objc_opt_isKindOfClass() & 1) != 0 && [v43 isEqualToString:@"inAppBuy"])
          {
            v44 = v21;
            v45 = [[MicroPaymentQueueResponse alloc] initWithRequestType:0];
            if ([(MicroPaymentQueueResponse *)v45 loadFromPropertyList:v7])
            {
              +[MicroPaymentQueue paymentQueue];
              v98 = v43;
              v46 = v2;
              v47 = v19;
              v49 = v48 = v42;
              [v49 updateWithPurchaseResponse:v45];

              v42 = v48;
              v19 = v47;
              v2 = v46;
              v43 = v98;
            }

            v21 = v44;
          }

          v112 = v7;
          v50 = [v7 objectForKeyedSubscript:@"ad-network"];
          v51 = v50;
          if (!v50)
          {
LABEL_84:

            v7 = v112;
            goto LABEL_85;
          }

          v99 = v43;
          v100 = v21;
          v52 = [v50 objectForKeyedSubscript:@"error"];

          v103 = v5;
          if (v52)
          {
            v53 = +[SSLogConfig sharedDaemonConfig];
            if (!v53)
            {
              v53 = +[SSLogConfig sharedConfig];
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
            if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
            {
              v57 = v55;
            }

            else
            {
              v57 = v55 & 2;
            }

            if (!v57)
            {
              v5 = v103;
              v21 = v100;
LABEL_82:

              goto LABEL_83;
            }

            v97 = v42;
            v106 = v19;
            v58 = objc_opt_class();
            v59 = v58;
            v60 = [v51 objectForKeyedSubscript:@"error"];
            v119 = 138543618;
            v120 = v58;
            v121 = 2112;
            v122 = v60;
            LODWORD(v92) = 22;
            v91 = &v119;
            v61 = _os_log_send_and_compose_impl();

            if (!v61)
            {
              v5 = v103;
              v19 = v106;
              v21 = v100;
              v42 = v97;
LABEL_83:

              v43 = v99;
              goto LABEL_84;
            }

            v56 = [NSString stringWithCString:v61 encoding:4, &v119, v92];
            free(v61);
            v91 = v56;
            SSFileLog();
          }

          else
          {
            v106 = v19;
            v53 = [v51 objectForKeyedSubscript:@"ad-network-id"];
            v56 = [v51 objectForKeyedSubscript:@"adam-id"];
            v95 = [v51 objectForKeyedSubscript:@"campaign-id"];
            v62 = [v51 objectForKeyedSubscript:@"transaction-id"];
            v96 = [v51 objectForKeyedSubscript:@"signature"];
            v63 = [v51 objectForKeyedSubscript:@"url"];
            v97 = v42;
            v93 = v63;
            if (v63)
            {
              v94 = [NSURL URLWithString:v63];
            }

            else
            {
              v94 = 0;
            }

            v64 = +[NSDate date];
            [v64 timeIntervalSince1970];
            v66 = (v65 * 1000.0);

            v67 = [InstallAttributionPingback alloc];
            v68 = [NSNumber numberWithLongLong:v66];
            v69 = [(InstallAttributionPingback *)v67 initWithAppAdamId:v56 transactionId:v62 campaignId:v95 adNetworkId:v53 attributionSignature:v96 pingbackUrl:v94 retryCount:0 localTimestamp:v68];

            v70 = +[PurchaseActionsManager sharedInstance];
            [v70 insertInstallAttributionPingback:v69];

            v71 = +[PurchaseActionsManager sharedInstance];
            [v71 removeInstallAttributionParamsForApp:v56];
          }

          v5 = v103;
          v19 = v106;
          v21 = v100;
          v42 = v97;
          goto LABEL_82;
        }

LABEL_52:
        [(PurchaseManagerOperation *)v2 _updateAccount:v6 withPurchaseResponse:v7, v91];
        goto LABEL_53;
      }

LABEL_44:
      v8 = v19;
      if (v116)
      {
LABEL_46:
        v108 = 1;
        v39 = [NSNumber numberWithBool:1, v91];
        v41 = SSErrorBySettingUserInfoValue();

        v116 = v41;
        v19 = v8;
        goto LABEL_48;
      }

LABEL_45:
      v116 = SSError();
      goto LABEL_46;
    }

    v111 = v7;
    v102 = v5;
    v30 = +[SSLogConfig sharedDaemonConfig];
    if (!v30)
    {
      v30 = +[SSLogConfig sharedConfig];
    }

    v31 = [v30 shouldLog];
    if ([v30 shouldLogToDisk])
    {
      v32 = v31 | 2;
    }

    else
    {
      v32 = v31;
    }

    v33 = [v30 OSLogObject];
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v34 = v32;
    }

    else
    {
      v34 = v32 & 2;
    }

    if (v34)
    {
      v35 = v6;
      v36 = objc_opt_class();
      v110 = v36;
      v37 = AMSLogableError();
      v119 = 138412546;
      v120 = v36;
      v6 = v35;
      v121 = 2112;
      v122 = v37;
      LODWORD(v92) = 22;
      v91 = &v119;
      v38 = _os_log_send_and_compose_impl();

      v5 = v102;
      if (!v38)
      {
        goto LABEL_37;
      }

      v33 = [NSString stringWithCString:v38 encoding:4, &v119, v92];
      free(v38);
      v91 = v33;
      SSFileLog();
    }

    else
    {
      v5 = v102;
    }

LABEL_37:
    if ([v116 ams_hasDomain:ISErrorDomain code:16] & 1) != 0 || (objc_msgSend(v116, "ams_hasDomain:code:", SSErrorDomain, 140) & 1) != 0 || (objc_msgSend(v116, "ams_hasDomain:code:", AMSErrorDomain, 6))
    {

      v7 = v111;
      goto LABEL_44;
    }

    v7 = v111;
    goto LABEL_42;
  }

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

  if (!v11)
  {
    goto LABEL_15;
  }

  v13 = objc_opt_class();
  purchase = v2->_purchase;
  v119 = 138412546;
  v120 = v13;
  v121 = 2112;
  v122 = purchase;
  v15 = v13;
  LODWORD(v92) = 22;
  v91 = &v119;
  v16 = _os_log_send_and_compose_impl();

  if (v16)
  {
    v12 = [NSString stringWithCString:v16 encoding:4, &v119, v92];
    free(v16);
    v91 = v12;
    SSFileLog();
LABEL_15:
  }

  v116 = [(PurchaseManagerOperation *)v2 _incompatibleErrorWithPurchase:v2->_purchase];
  v17 = [(SSPurchase *)v2->_purchase valueForDownloadProperty:SSDownloadPropertyShouldSuppressErrorDialogs];
  v18 = [v17 BOOLValue];

  if ((v18 & 1) == 0)
  {
    [(PurchaseManagerOperation *)v2 _showDialogForPurchase:v2->_purchase error:v116];
  }

  v114 = 0;
  v115 = 0;
  v19 = 0;
  v108 = 0;
  v20 = 0;
  v7 = 0;
  v21 = 0;
  v109 = 0;
  v5 = 0;
LABEL_86:
  v72 = [(SSPurchase *)v2->_purchase enabledServiceType];
  v73 = v72;
  if (v5 && v72 && ![v72 integerValue])
  {
    v101 = v21;
    v74 = objc_alloc_init(SubscriptionOperation);
    [(SubscriptionOperation *)v74 setOperationType:1];
    [(SSPurchase *)v2->_purchase requestProperties];
    v75 = v104 = v5;
    v76 = [v75 HTTPHeaders];
    v77 = [v76 objectForKey:SSHTTPHeaderUserAgent];
    [(SubscriptionOperation *)v74 setUserAgent:v77];

    v5 = v104;
    [(PurchaseManagerOperation *)v2 runSubOperation:v74 returningError:0];

    v21 = v101;
  }

  v78 = [(PurchaseManagerOperation *)v2 purchaseBlock];
  if (v78)
  {
    v79 = v21;
    v113 = v7;
    v80 = v116;
    if (v80)
    {
      v81 = 1;
    }

    else
    {
      v81 = v5;
    }

    if ((v81 & 1) == 0)
    {
      v80 = SSError();
    }

    v82 = objc_alloc_init(DaemonPurchaseResponse);
    [(DaemonPurchaseResponse *)v82 setCancelsPurchaseBatch:v108];
    [(DaemonPurchaseResponse *)v82 setDecodedResponse:v79];
    [(DaemonPurchaseResponse *)v82 setError:v80];
    [(DaemonPurchaseResponse *)v82 setPurchase:v2->_purchase];
    [(DaemonPurchaseResponse *)v82 setTidHeaders:v115];
    [(DaemonPurchaseResponse *)v82 setURLResponse:v114];
    if (v20)
    {
      [v20 startTime];
      v84 = v83;
      [NSDate dateWithTimeIntervalSinceReferenceDate:?];
      v107 = v19;
      v86 = v85 = v5;
      [v86 timeIntervalSince1970];
      [(DaemonPurchaseResponse *)v82 setRequestStartTime:?];

      [v20 receivedResponseInterval];
      v88 = [NSDate dateWithTimeIntervalSinceReferenceDate:v84 + v87];
      [v88 timeIntervalSince1970];
      [(DaemonPurchaseResponse *)v82 setResponseStartTime:?];

      [v20 finishInterval];
      v90 = [NSDate dateWithTimeIntervalSinceReferenceDate:v84 + v89];
      [v90 timeIntervalSince1970];
      [(DaemonPurchaseResponse *)v82 setResponseEndTime:?];

      v5 = v85;
      v19 = v107;
    }

    (v78)[2](v78, v82);

    v7 = v113;
    v21 = v79;
  }

  [(PurchaseManagerOperation *)v2 setError:v116];
  [(PurchaseManagerOperation *)v2 setSuccess:v5];
}

- (id)_appleIDForApp:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [v5 appState];
  v7 = [v6 isValid];

  if ((v7 & 1) == 0)
  {
    v9 = +[SSLogConfig sharedDaemonConfig];
    if (!v9)
    {
      v9 = +[SSLogConfig sharedConfig];
    }

    v16 = [v9 shouldLog];
    if ([v9 shouldLogToDisk])
    {
      v17 = v16 | 2;
    }

    else
    {
      v17 = v16;
    }

    v18 = [v9 OSLogObject];
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v17 &= 2u;
    }

    if (v17)
    {
      v29 = 138543618;
      v30 = objc_opt_class();
      v31 = 2114;
      v32 = v5;
      v19 = v30;
      LODWORD(v27) = 22;
      v20 = _os_log_send_and_compose_impl();

      if (!v20)
      {
LABEL_21:
        v15 = 0;
        goto LABEL_39;
      }

      v18 = [NSString stringWithCString:v20 encoding:4, &v29, v27];
      free(v20);
      SSFileLog();
    }

    goto LABEL_21;
  }

  v8 = [v5 bundleContainerURL];
  v9 = [v8 URLByAppendingPathComponent:@"iTunesMetadata.plist"];

  if (v9)
  {
    v28[0] = @"com.apple.iTunesStore.downloadInfo";
    v28[1] = @"accountInfo";
    v28[2] = @"AppleID";
    v10 = [NSArray arrayWithObjects:v28 count:3];
    v11 = [v10 componentsJoinedByString:@":"];

    v12 = [MappedPropertyList readKeyPath:v11 fromURL:v9 error:a4];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v15 = 0;
LABEL_37:

      goto LABEL_38;
    }

    v13 = [v12 objectForKey:@"com.apple.iTunesStore.downloadInfo"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v15 = 0;
      goto LABEL_36;
    }

    v14 = [v13 objectForKey:@"accountInfo"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v14 objectForKey:@"AppleID"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_9:

LABEL_36:
        goto LABEL_37;
      }
    }

    v15 = 0;
    goto LABEL_9;
  }

  v11 = +[SSLogConfig sharedDaemonConfig];
  if (!v11)
  {
    v11 = +[SSLogConfig sharedConfig];
  }

  v21 = [v11 shouldLog];
  if ([v11 shouldLogToDisk])
  {
    v22 = v21 | 2;
  }

  else
  {
    v22 = v21;
  }

  v23 = [v11 OSLogObject];
  if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    v22 &= 2u;
  }

  if (!v22)
  {
    goto LABEL_32;
  }

  v29 = 138543618;
  v30 = objc_opt_class();
  v31 = 2114;
  v32 = v5;
  v24 = v30;
  LODWORD(v27) = 22;
  v25 = _os_log_send_and_compose_impl();

  if (v25)
  {
    v23 = [NSString stringWithCString:v25 encoding:4, &v29, v27];
    free(v25);
    SSFileLog();
LABEL_32:
  }

  v15 = 0;
LABEL_38:

LABEL_39:

  return v15;
}

- (id)_familyPurchaserAccountIdentifierForApplication:(id)a3
{
  v3 = [a3 bundleIdentifier];
  if (v3)
  {
    v4 = +[ApplicationWorkspace defaultWorkspace];
    v5 = [v4 sinfPathForBundleID:v3];

    if (v5)
    {
      v6 = [[NSData alloc] initWithContentsOfFile:v5];
      v7 = v6;
      if (v6)
      {
        v14 = 0;
        sub_1000B2914(v6, 4uLL, &v14);
        v8 = 0;
        if (v9)
        {
          v10 = 1;
        }

        else
        {
          v10 = v14 == 0;
        }

        if (!v10)
        {
          v13 = 0;
          sub_1000B2914(v7, 2uLL, &v13);
          v8 = 0;
          if (!v11)
          {
            if (v13)
            {
              v8 = [NSNumber numberWithUnsignedLongLong:?];
            }
          }
        }
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_incompatibleErrorWithPurchase:(id)a3
{
  v3 = [a3 valueForDownloadProperty:SSDownloadPropertyTitle];
  v4 = ISDeviceIncompatibleAppErrorWithAppTitle();

  return v4;
}

- (id)_installedSoftwareApplicationForPurchase:(id)a3
{
  v3 = a3;
  v4 = [v3 valueForDownloadProperty:SSDownloadPropertyStoreItemIdentifier];
  if (!v4 || ([LSApplicationProxy applicationProxyForItemID:v4], (v5 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v6 = [v3 valueForDownloadProperty:SSDownloadPropertyBundleIdentifier];
    if (v6)
    {
      v5 = [LSApplicationProxy applicationProxyForIdentifier:v6];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)_isDeviceCapableForPurchase
{
  v2 = [(SSPurchase *)self->_purchase requiredDeviceCapabilities];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
    v5 = MobileInstallationCheckCapabilitiesMatch();
    if (v5)
    {
      v6 = v5;
      Value = CFDictionaryGetValue(v5, @"CapabilitiesMatch");
      if (Value)
      {
        v8 = CFBooleanGetValue(Value) != 0;
      }

      else
      {
        v8 = 0;
      }

      CFRelease(v6);
    }

    else
    {
      v8 = 0;
    }

    CFRelease(v4);
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (id)_localRedownloadParametersForPurchase:(id)a3
{
  v3 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_10021EDBC;
  v15 = sub_10021EDCC;
  v16 = 0;
  v4 = [v3 valueForDownloadProperty:SSDownloadPropertyStoreItemIdentifier];
  if (v4)
  {
    v5 = +[SSAppPurchaseHistoryDatabase newDefaultInstance];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10021EDD4;
    v8[3] = &unk_10032CAC0;
    v9 = v4;
    v10 = &v11;
    [v5 readUsingTransactionBlock:v8];
  }

  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

- (id)_newPurchaseOperationWithPurchase:(id)a3
{
  v4 = a3;
  v5 = [[PurchaseOperation alloc] initWithPurchase:v4];

  [(PurchaseOperation *)v5 setBagType:[(PurchaseManagerOperation *)self URLBagType]];
  v6 = [(PurchaseManagerOperation *)self clientIdentifier];
  [(PurchaseOperation *)v5 setClientIdentifier:v6];

  v7 = [(PurchaseManagerOperation *)self clientIdentifierHeader];
  [(PurchaseOperation *)v5 setClientIdentifierHeader:v7];

  [(PurchaseOperation *)v5 setOriginalProductOwnerAccountDSID:self->_applicationOwnerAccountDSID];
  [(PurchaseOperation *)v5 setShouldSendKeyBagSyncData:1];
  v8 = [(PurchaseManagerOperation *)self _urlBagKey];
  [(PurchaseOperation *)v5 setUrlBagKey:v8];

  if ([(PurchaseManagerOperation *)self useRemoteAuthentication])
  {
    [(PurchaseOperation *)v5 setUseRemoteAuthentication:1];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10021F1DC;
    v10[3] = &unk_10032CAE8;
    v10[4] = self;
    [(PurchaseOperation *)v5 setRemoteAuthenticationHandler:v10];
  }

  return v5;
}

- (void)_performSetup
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = objc_alloc_init(RingtonePurchaseStore);
    purchase = self->_purchase;
    v4 = [NSArray arrayWithObjects:&purchase count:1];
    [(RingtonePurchaseStore *)v3 addRingtonesForPurchases:v4];
  }

  v5 = [(SSPurchase *)self->_purchase valueForDownloadProperty:SSDownloadPropertyKind];
  if (v5)
  {
    v6 = +[DownloadController controller];
    [v6 beginUsingNetworkForDownloadKind:v5];
  }

  if (SSDownloadKindIsSoftwareKind())
  {
    if (![(SSPurchase *)self->_purchase usesLocalRedownloadParametersIfPossible])
    {
      v88 = 0;
      goto LABEL_31;
    }

    v88 = [(PurchaseManagerOperation *)self _installedSoftwareApplicationForPurchase:self->_purchase];
    if (v88)
    {
      goto LABEL_31;
    }

    v7 = [(PurchaseManagerOperation *)self _personalizedRedownloadParametersForPurchase:self->_purchase];
    v8 = v7;
    if (v7)
    {
      v86 = [v7 length];
    }

    else
    {
      v8 = [(PurchaseManagerOperation *)self _localRedownloadParametersForPurchase:self->_purchase];
      v86 = [v8 length];
      if (!v8)
      {
        goto LABEL_31;
      }
    }

    v9 = [(SSPurchase *)self->_purchase buyParameters];
    v10 = [NSURL copyDictionaryForQueryString:v9 unescapedValues:1];

    v97 = *off_10032CB08;
    v11 = &v97;
    v12 = 1;
    do
    {
      v13 = v12;
      v14 = [v10 objectForKey:*v11];
      v15 = v14;
      if (v14)
      {
        v16 = [v8 stringByAppendingFormat:@"&%@=%@", *v11, v14];

        v8 = v16;
      }

      v12 = 0;
      v11 = (&v97 + 8);
    }

    while ((v13 & 1) != 0);
    v17 = +[SSLogConfig sharedDaemonConfig];
    if (!v17)
    {
      v17 = +[SSLogConfig sharedConfig];
    }

    v18 = [v17 shouldLog];
    if ([v17 shouldLogToDisk])
    {
      v18 |= 2u;
    }

    v19 = [v17 OSLogObject];
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v18 &= 2u;
    }

    if (v18)
    {
      *v93 = 138412546;
      *&v93[4] = objc_opt_class();
      *&v93[12] = 2112;
      *&v93[14] = v8;
      v20 = *&v93[4];
      LODWORD(v81) = 22;
      v79 = v93;
      v21 = _os_log_send_and_compose_impl();

      if (!v21)
      {
LABEL_26:

        if (v86)
        {
          [(SSPurchase *)self->_purchase setValue:&__kCFBooleanTrue forDownloadProperty:SSDownloadPropertyIsRedownload];
        }

        [(SSPurchase *)self->_purchase setBuyParameters:v8, v79];
        for (i = 8; i != -8; i -= 8)
        {
        }

LABEL_31:
        v23 = [(SSPurchase *)self->_purchase accountIdentifier];
        if (v23)
        {
          goto LABEL_54;
        }

        if (([(SSPurchase *)self->_purchase skipSoftwareAccountPreflight]& 1) != 0)
        {
          v23 = 0;
          goto LABEL_54;
        }

        v24 = v88;
        if (!v88)
        {
          v24 = [(PurchaseManagerOperation *)self _installedSoftwareApplicationForPurchase:self->_purchase];
        }

        v88 = v24;
        if ([v24 hasMIDBasedSINF])
        {
          goto LABEL_37;
        }

        applicationOwnerAccountDSID = [v88 purchaserDSID];
        if ([applicationOwnerAccountDSID unsignedLongLongValue] == -1)
        {
          v23 = 0;
        }

        else
        {
          v26 = [v88 purchaserDSID];
          v27 = [v26 unsignedLongLongValue] == 0;

          if (v27)
          {
LABEL_37:
            v23 = 0;
            goto LABEL_43;
          }

          v23 = [v88 purchaserDSID];
          v28 = [v23 copy];
          applicationOwnerAccountDSID = self->_applicationOwnerAccountDSID;
          self->_applicationOwnerAccountDSID = v28;
        }

LABEL_43:
        v29 = +[SSAccountStore defaultStore];
        v30 = [v29 activeAccount];
        v31 = [v30 uniqueIdentifier];

        if (!v23)
        {
LABEL_53:

LABEL_54:
          v38 = [(SSPurchase *)self->_purchase ownerAccountDSID];

          if (v38)
          {
            v39 = [(SSPurchase *)self->_purchase ownerAccountDSID];
            v40 = [v39 copy];
            v41 = self->_applicationOwnerAccountDSID;
            self->_applicationOwnerAccountDSID = v40;
          }

          if (!v23)
          {
LABEL_83:
            v61 = [(SSPurchase *)self->_purchase downloadProperties];
            v62 = [v61 objectForKeyedSubscript:SSDownloadPropertyIsRedownload];
            v63 = [v62 integerValue] == 0;

            if (!v63)
            {
LABEL_97:

              goto LABEL_98;
            }

            v64 = dispatch_semaphore_create(0);
            *v93 = 0;
            *&v93[8] = v93;
            *&v93[16] = 0x3032000000;
            v94 = sub_10021EDBC;
            v95 = sub_10021EDCC;
            v65 = [(SSPurchase *)self->_purchase buyParameters];
            v96 = [v65 copy];

            v66 = +[PurchaseActionsManager sharedInstance];
            v67 = [(SSPurchase *)self->_purchase downloadProperties];
            v68 = [v67 objectForKeyedSubscript:SSDownloadPropertyStoreItemIdentifier];
            v89[0] = _NSConcreteStackBlock;
            v89[1] = 3221225472;
            v89[2] = sub_10021FF84;
            v89[3] = &unk_10032CB20;
            v89[4] = self;
            v91 = v93;
            v69 = v64;
            v90 = v69;
            [v66 getInstallAttributionParamsForApp:v68 completionHandler:v89];

            v70 = dispatch_time(0, 30000000000);
            if (!dispatch_semaphore_wait(v69, v70))
            {
LABEL_96:
              [(SSPurchase *)self->_purchase setBuyParameters:*(*&v93[8] + 40), v80];

              _Block_object_dispose(v93, 8);
              goto LABEL_97;
            }

            v71 = +[SSLogConfig sharedDaemonConfig];
            if (!v71)
            {
              v71 = +[SSLogConfig sharedConfig];
            }

            v72 = [v71 shouldLog];
            v73 = [v71 shouldLogToDisk];
            v74 = [v71 OSLogObject];
            v75 = v74;
            if (v73)
            {
              v72 |= 2u;
            }

            if (!os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
            {
              v72 &= 2u;
            }

            if (v72)
            {
              v76 = objc_opt_class();
              LODWORD(v97) = 138543362;
              *(&v97 + 4) = v76;
              v77 = v76;
              LODWORD(v81) = 12;
              v80 = &v97;
              v78 = _os_log_send_and_compose_impl();

              if (!v78)
              {
LABEL_95:

                goto LABEL_96;
              }

              v75 = [NSString stringWithCString:v78 encoding:4, &v97, v81];
              free(v78);
              v80 = v75;
              SSFileLog();
            }

            goto LABEL_95;
          }

          v87 = +[SSAccountStore defaultStore];
          v42 = [v87 accountWithUniqueIdentifier:v23];
          if (v42)
          {
LABEL_82:

            goto LABEL_83;
          }

          v92 = 0;
          v84 = [(PurchaseManagerOperation *)self _appleIDForApp:v88 error:&v92];
          v83 = v92;
          if (!v84)
          {
            v53 = +[SSLogConfig sharedAccountsConfig];
            if (!v53)
            {
              v53 = +[SSLogConfig sharedConfig];
            }

            v85 = v53;
            v54 = [v53 shouldLog];
            if ([v85 shouldLogToDisk])
            {
              v54 |= 2u;
            }

            v55 = [v85 OSLogObject];
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
              v57 = objc_opt_class();
              v58 = v57;
              v59 = [v88 bundleIdentifier];
              *v93 = 138543874;
              *&v93[4] = v57;
              *&v93[12] = 2114;
              *&v93[14] = v59;
              *&v93[22] = 2114;
              v94 = v83;
              LODWORD(v81) = 32;
              v79 = v93;
              v60 = _os_log_send_and_compose_impl();

              if (!v60)
              {
                goto LABEL_81;
              }

              v55 = [NSString stringWithCString:v60 encoding:4, v93, v81];
              free(v60);
              v79 = v55;
              SSFileLog();
            }

            goto LABEL_81;
          }

          v85 = objc_alloc_init(SSAccount);
          [v85 setAccountName:v84];
          v43 = [v87 activeAccount];
          [v85 setActive:v43 == 0];

          v44 = [v88 storeFront];
          v45 = [v44 stringValue];
          [v85 setStoreFrontIdentifier:v45];

          [v85 setUniqueIdentifier:v23];
          v46 = +[SSLogConfig sharedAccountsConfig];
          if (!v46)
          {
            v46 = +[SSLogConfig sharedConfig];
          }

          v47 = [v46 shouldLog];
          if ([v46 shouldLogToDisk])
          {
            v47 |= 2u;
          }

          v48 = [v46 OSLogObject];
          if (!os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
          {
            v47 &= 2u;
          }

          if (v47)
          {
            v49 = objc_opt_class();
            v82 = v49;
            v50 = [v85 accountName];
            v51 = SSHashIfNeeded();
            *v93 = 138543618;
            *&v93[4] = v49;
            *&v93[12] = 2114;
            *&v93[14] = v51;
            LODWORD(v81) = 22;
            v79 = v93;
            v52 = _os_log_send_and_compose_impl();

            if (!v52)
            {
LABEL_69:

              [v87 saveAccount:v85 verifyCredentials:0 completion:0];
LABEL_81:

              v42 = 0;
              goto LABEL_82;
            }

            v48 = [NSString stringWithCString:v52 encoding:4, v93, v81];
            free(v52);
            v79 = v48;
            SSFileLog();
          }

          goto LABEL_69;
        }

        if (([v23 isEqual:v31] & 1) == 0)
        {
          v32 = [(PurchaseManagerOperation *)self _familyPurchaserAccountIdentifierForApplication:v88];
          if (v32)
          {
LABEL_46:
            v33 = [(SSPurchase *)self->_purchase buyParameters];
            v34 = [v33 stringByAppendingFormat:@"&ownerDsid=%llu", objc_msgSend(v32, "unsignedLongLongValue")];

            [(SSPurchase *)self->_purchase setBuyParameters:v34];
            v23 = 0;
            goto LABEL_53;
          }

          v35 = objc_alloc_init(FamilyCircleOperation);
          if ([(PurchaseManagerOperation *)self runSubOperation:v35 returningError:0])
          {
            v36 = [(FamilyCircleOperation *)v35 familyCircle];
            v37 = [v36 allITunesIdentifiers];

            if ([v37 containsObject:v23])
            {
              v32 = v23;

              goto LABEL_46;
            }
          }
        }

        [(SSPurchase *)self->_purchase setAccountIdentifier:v23];
        goto LABEL_53;
      }

      v19 = [NSString stringWithCString:v21 encoding:4, v93, v81];
      free(v21);
      v79 = v19;
      SSFileLog();
    }

    goto LABEL_26;
  }

LABEL_98:
}

- (void)_performTeardownWithResult:(BOOL)a3 queueResponse:(id)a4
{
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = objc_alloc_init(RingtonePurchaseStore);
    if (a3)
    {
      purchase = self->_purchase;
      v8 = [NSArray arrayWithObjects:&purchase count:1];
      v9 = [v6 downloads];
      [(RingtonePurchaseStore *)v7 updateRingtonesForPurchases:v8 withDownloads:v9];
    }

    else
    {
      v13 = self->_purchase;
      v8 = [NSArray arrayWithObjects:&v13 count:1];
      [(RingtonePurchaseStore *)v7 removeRingtonesForPurchases:v8];
    }
  }

  v10 = [(SSPurchase *)self->_purchase valueForDownloadProperty:SSDownloadPropertyKind];
  if (v10)
  {
    v11 = +[DownloadController controller];
    [v11 endUsingNetworkForDownloadKind:v10];
  }
}

- (id)_personalizedRedownloadParametersForPurchase:(id)a3
{
  v4 = [a3 valueForDownloadProperty:SSDownloadPropertyStoreItemIdentifier];
  v5 = [v4 stringValue];

  if (v5)
  {
    v6 = objc_alloc_init(SSLookupProperties);
    [v6 setKeyProfile:@"offer"];
    [v6 setTimeoutInterval:&off_10034CCF0];
    [v6 setValue:@"itunesstored" forRequestParameter:SSLookupParameterCaller];
    [v6 setValue:v5 forRequestParameter:SSLookupParameterItemIdentifiers];
    [v6 setValue:@"1" forRequestParameter:SSLookupParameterProtocolVersion];
    v7 = [[LookupRequestOperation alloc] initWithLookupProperties:v6];
    [(LookupRequestOperation *)v7 setPersonalizationStyle:0];
    v8 = 0;
    if ([(PurchaseManagerOperation *)self runSubOperation:v7 returningError:0])
    {
      v9 = [(LookupRequestOperation *)v7 lookupResponse];
      v10 = [v9 itemForKey:v5];

      [v10 offers];
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v11 = v26 = 0u;
      v12 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v12)
      {
        v13 = v12;
        v21 = v10;
        v22 = v5;
        v14 = *v24;
        while (2)
        {
          for (i = 0; i != v13; i = i + 1)
          {
            if (*v24 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v23 + 1) + 8 * i);
            v17 = [v16 offerType];
            v18 = [v17 isEqualToString:@"redownload"];

            if (v18)
            {
              v19 = [v16 buyParameters];
              v8 = [v19 copy];

              goto LABEL_14;
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
          if (v13)
          {
            continue;
          }

          break;
        }

        v8 = 0;
LABEL_14:
        v10 = v21;
        v5 = v22;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_showDialogForPurchase:(id)a3 error:(id)a4
{
  v5 = a4;
  v6 = a3;
  v10 = [[ISDialog alloc] initWithError:v5];

  v7 = [[DaemonDialogOperation alloc] initWithDialog:v10];
  v8 = [v6 displaysOnLockScreen];

  [(DaemonDialogOperation *)v7 setDisplaysOnLockscreen:v8];
  v9 = +[ISOperationQueue mainQueue];
  [v9 addOperation:v7];
}

- (void)_updateAccount:(id)a3 withPurchaseResponse:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[SSAccountStore defaultStore];
  v8 = [v7 accountWithUniqueIdentifier:v6];

  v9 = [v8 copy];
  if (!v9)
  {
    goto LABEL_22;
  }

  v10 = [v5 objectForKey:@"newCustomer"];
  if (!v10)
  {
    v11 = 0;
    goto LABEL_6;
  }

  if (objc_opt_respondsToSelector())
  {
    v11 = [v10 BOOLValue];
LABEL_6:
    [v9 setNewCustomer:v11];
  }

  v30 = v5;
  v12 = [v5 valueForKey:@"passwordSettings"];
  v13 = v12;
  if (v12)
  {
    v14 = [v12 valueForKey:@"free"];
    v15 = [v13 valueForKey:@"paid"];
    v16 = [UpdateAccountPasswordSettingsOperation _accountPasswordSettingValueForServerValue:v14];
    v17 = [UpdateAccountPasswordSettingsOperation _accountPasswordSettingValueForServerValue:v15];
    [v9 setFreeDownloadsPasswordSetting:v16];
    [v9 setPaidPurchasesPasswordSetting:v17];
  }

  v18 = +[SSLogConfig sharedAccountsConfig];
  if (!v18)
  {
    v18 = +[SSLogConfig sharedConfig];
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
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
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
    v29 = v23;
    [v9 accountName];
    v25 = v24 = v10;
    SSHashIfNeeded();
    v31 = 138543618;
    v32 = v23;
    v34 = v33 = 2114;
    LODWORD(v28) = 22;
    v26 = _os_log_send_and_compose_impl();

    v10 = v24;
    if (v26)
    {
      v27 = [NSString stringWithCString:v26 encoding:4, &v31, v28];
      free(v26);
      SSFileLog();
    }
  }

  else
  {
  }

  [v7 saveAccount:v9 verifyCredentials:0 completion:0];
  v5 = v30;
LABEL_22:
}

- (id)_urlBagKey
{
  v3 = [(SSPurchase *)self->_purchase valueForDownloadProperty:SSDownloadPropertyStorePreorderIdentifier];
  v4 = SSGetItemIdentifierFromValue();

  if (v4)
  {
    v5 = @"p2-order-pre-order";
  }

  else
  {
    v6 = [(SSPurchase *)self->_purchase requestProperties];
    v5 = [v6 URLBagKey];
  }

  return v5;
}

@end