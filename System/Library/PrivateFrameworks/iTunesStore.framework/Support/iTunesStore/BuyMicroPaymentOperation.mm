@interface BuyMicroPaymentOperation
- (BOOL)purchaseOperation:(id)operation shouldContinueWithNewStorefront:(id)storefront;
- (BOOL)simulatesAskToBuyInSandbox;
- (MicroPaymentQueueResponse)response;
- (NSData)clientAuditTokenData;
- (NSData)requestData;
- (NSString)applicationUsername;
- (NSString)buyParameters;
- (NSString)partnerIdentifier;
- (NSString)partnerTransactionIdentifier;
- (NSString)productIdentifier;
- (StoreKitClientIdentity)clientIdentity;
- (id)_appProxy;
- (id)_fullBuyParametersWithAppProxy:(id)proxy;
- (int64_t)quantity;
- (void)run;
- (void)setApplicationUsername:(id)username;
- (void)setBuyParameters:(id)parameters;
- (void)setClientAuditTokenData:(id)data;
- (void)setClientIdentity:(id)identity;
- (void)setPartnerIdentifier:(id)identifier;
- (void)setPartnerTransactionIdentifier:(id)identifier;
- (void)setProductIdentifier:(id)identifier;
- (void)setQuantity:(int64_t)quantity;
- (void)setRequestData:(id)data;
- (void)setSimulatesAskToBuyInSandbox:(BOOL)sandbox;
@end

@implementation BuyMicroPaymentOperation

- (NSString)applicationUsername
{
  [(BuyMicroPaymentOperation *)self lock];
  v3 = [(NSString *)self->_applicationUsername copy];
  [(BuyMicroPaymentOperation *)self unlock];

  return v3;
}

- (NSString)buyParameters
{
  [(BuyMicroPaymentOperation *)self lock];
  v3 = [(NSString *)self->_buyParameters copy];
  [(BuyMicroPaymentOperation *)self unlock];

  return v3;
}

- (NSData)clientAuditTokenData
{
  [(BuyMicroPaymentOperation *)self lock];
  v3 = self->_clientAuditTokenData;
  [(BuyMicroPaymentOperation *)self unlock];

  return v3;
}

- (StoreKitClientIdentity)clientIdentity
{
  [(BuyMicroPaymentOperation *)self lock];
  v3 = self->_clientIdentity;
  [(BuyMicroPaymentOperation *)self unlock];

  return v3;
}

- (NSString)partnerIdentifier
{
  [(BuyMicroPaymentOperation *)self lock];
  v3 = [(NSString *)self->_partnerIdentifier copy];
  [(BuyMicroPaymentOperation *)self unlock];

  return v3;
}

- (NSString)partnerTransactionIdentifier
{
  [(BuyMicroPaymentOperation *)self lock];
  v3 = [(NSString *)self->_partnerTransactionIdentifier copy];
  [(BuyMicroPaymentOperation *)self unlock];

  return v3;
}

- (NSString)productIdentifier
{
  [(BuyMicroPaymentOperation *)self lock];
  v3 = [(NSString *)self->_productIdentifier copy];
  [(BuyMicroPaymentOperation *)self unlock];

  return v3;
}

- (int64_t)quantity
{
  [(BuyMicroPaymentOperation *)self lock];
  quantity = self->_quantity;
  [(BuyMicroPaymentOperation *)self unlock];
  return quantity;
}

- (NSData)requestData
{
  [(BuyMicroPaymentOperation *)self lock];
  v3 = [(NSData *)self->_requestData copy];
  [(BuyMicroPaymentOperation *)self unlock];

  return v3;
}

- (MicroPaymentQueueResponse)response
{
  [(BuyMicroPaymentOperation *)self lock];
  v3 = self->_response;
  [(BuyMicroPaymentOperation *)self unlock];

  return v3;
}

- (BOOL)simulatesAskToBuyInSandbox
{
  [(BuyMicroPaymentOperation *)self lock];
  simulatesAskToBuyInSandbox = self->_simulatesAskToBuyInSandbox;
  [(BuyMicroPaymentOperation *)self unlock];
  return simulatesAskToBuyInSandbox;
}

- (void)setApplicationUsername:(id)username
{
  usernameCopy = username;
  [(BuyMicroPaymentOperation *)self lock];
  if (self->_applicationUsername != usernameCopy)
  {
    v4 = [(NSString *)usernameCopy copy];
    applicationUsername = self->_applicationUsername;
    self->_applicationUsername = v4;
  }

  [(BuyMicroPaymentOperation *)self unlock];
}

- (void)setBuyParameters:(id)parameters
{
  parametersCopy = parameters;
  [(BuyMicroPaymentOperation *)self lock];
  if (self->_buyParameters != parametersCopy)
  {
    v4 = [(NSString *)parametersCopy copy];
    buyParameters = self->_buyParameters;
    self->_buyParameters = v4;
  }

  [(BuyMicroPaymentOperation *)self unlock];
}

- (void)setClientAuditTokenData:(id)data
{
  dataCopy = data;
  [(BuyMicroPaymentOperation *)self lock];
  if (self->_clientAuditTokenData != dataCopy)
  {
    objc_storeStrong(&self->_clientAuditTokenData, data);
  }

  [(BuyMicroPaymentOperation *)self unlock];
}

- (void)setClientIdentity:(id)identity
{
  identityCopy = identity;
  [(BuyMicroPaymentOperation *)self lock];
  if (self->_clientIdentity != identityCopy)
  {
    objc_storeStrong(&self->_clientIdentity, identity);
  }

  [(BuyMicroPaymentOperation *)self unlock];
}

- (void)setPartnerIdentifier:(id)identifier
{
  identifierCopy = identifier;
  [(BuyMicroPaymentOperation *)self lock];
  if (self->_partnerIdentifier != identifierCopy)
  {
    v4 = [(NSString *)identifierCopy copy];
    partnerIdentifier = self->_partnerIdentifier;
    self->_partnerIdentifier = v4;
  }

  [(BuyMicroPaymentOperation *)self unlock];
}

- (void)setPartnerTransactionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  [(BuyMicroPaymentOperation *)self lock];
  if (self->_partnerTransactionIdentifier != identifierCopy)
  {
    v4 = [(NSString *)identifierCopy copy];
    partnerTransactionIdentifier = self->_partnerTransactionIdentifier;
    self->_partnerTransactionIdentifier = v4;
  }

  [(BuyMicroPaymentOperation *)self unlock];
}

- (void)setProductIdentifier:(id)identifier
{
  identifierCopy = identifier;
  [(BuyMicroPaymentOperation *)self lock];
  if (self->_productIdentifier != identifierCopy)
  {
    v4 = [(NSString *)identifierCopy copy];
    productIdentifier = self->_productIdentifier;
    self->_productIdentifier = v4;
  }

  [(BuyMicroPaymentOperation *)self unlock];
}

- (void)setQuantity:(int64_t)quantity
{
  [(BuyMicroPaymentOperation *)self lock];
  self->_quantity = quantity;

  [(BuyMicroPaymentOperation *)self unlock];
}

- (void)setRequestData:(id)data
{
  dataCopy = data;
  [(BuyMicroPaymentOperation *)self lock];
  if (self->_requestData != dataCopy)
  {
    v4 = [(NSData *)dataCopy copy];
    requestData = self->_requestData;
    self->_requestData = v4;
  }

  [(BuyMicroPaymentOperation *)self unlock];
}

- (void)setSimulatesAskToBuyInSandbox:(BOOL)sandbox
{
  [(BuyMicroPaymentOperation *)self lock];
  self->_simulatesAskToBuyInSandbox = sandbox;

  [(BuyMicroPaymentOperation *)self unlock];
}

- (BOOL)purchaseOperation:(id)operation shouldContinueWithNewStorefront:(id)storefront
{
  storefrontCopy = storefront;
  delegate = [(BuyMicroPaymentOperation *)self delegate];
  if (delegate && (v7 = delegate, [(BuyMicroPaymentOperation *)self delegate], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_opt_respondsToSelector(), v8, v7, (v9 & 1) != 0))
  {
    delegate2 = [(BuyMicroPaymentOperation *)self delegate];
    v11 = [delegate2 buyMicroPaymentOperation:self shouldContinueWithNewStorefront:storefrontCopy];
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (void)run
{
  clientIdentity = [(BuyMicroPaymentOperation *)self clientIdentity];
  v4 = [[ClaimStoreKitClientOperation alloc] initWithClientIdentity:clientIdentity];
  clientAuditTokenData = [(BuyMicroPaymentOperation *)self clientAuditTokenData];
  [(ClaimStoreKitClientOperation *)v4 setClientAuditTokenData:clientAuditTokenData];

  if ([(BuyMicroPaymentOperation *)self runSubOperation:v4 returningError:0])
  {
    clientIdentity2 = [(ClaimStoreKitClientOperation *)v4 clientIdentity];

    [(BuyMicroPaymentOperation *)self setClientIdentity:clientIdentity2];
    clientIdentity = clientIdentity2;
  }

  _appProxy = [(BuyMicroPaymentOperation *)self _appProxy];
  v8 = [(BuyMicroPaymentOperation *)self _fullBuyParametersWithAppProxy:_appProxy];
  if (!v8)
  {
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
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v17 &= 2u;
    }

    if (v17)
    {
      v60 = 138412290;
      v61 = objc_opt_class();
      v19 = v61;
      LODWORD(v53) = 12;
      v20 = _os_log_send_and_compose_impl();

      if (!v20)
      {
LABEL_18:

        v21 = ISError();
        [(BuyMicroPaymentOperation *)self setError:v21];
        goto LABEL_63;
      }

      oSLogObject = [NSString stringWithCString:v20 encoding:4, &v60, v53];
      free(v20);
      SSFileLog();
    }

    goto LABEL_18;
  }

  v9 = v8;
  v10 = objc_alloc_init(PurchaseOperation);
  [(PurchaseOperation *)v10 setMicroPayment:1];
  clientAuditTokenData2 = [(BuyMicroPaymentOperation *)self clientAuditTokenData];
  [(PurchaseOperation *)v10 setClientAuditTokenData:clientAuditTokenData2];

  if ([clientIdentity usesIdentityAttributes])
  {
    goto LABEL_23;
  }

  bundleIdentifier = [clientIdentity bundleIdentifier];
  v13 = [LSApplicationProxy applicationProxyForIdentifier:bundleIdentifier];
  if (v13)
  {
    v14 = v13;
    goto LABEL_20;
  }

  v14 = [AppExtensionSupport supportedProxyExtensionForBundleIdentifier:bundleIdentifier];
  if (v14)
  {
LABEL_20:
    if ([v14 hasMIDBasedSINF])
    {
      [(PurchaseOperation *)v10 setRequiresSerialNumber:1];
    }
  }

LABEL_23:
  bundleIdentifier2 = [clientIdentity bundleIdentifier];
  v23 = [bundleIdentifier2 length];

  if (v23)
  {
    bundleIdentifier3 = [clientIdentity bundleIdentifier];
    v25 = ISClientIdentifierForBundleIdentifier();
    [(PurchaseOperation *)v10 setClientIdentifierHeader:v25];

    bundleIdentifier4 = [clientIdentity bundleIdentifier];
    v27 = [NSURL escapedStringForString:bundleIdentifier4];

    v28 = [v9 stringByAppendingFormat:@"&%@=%@", @"originatingBundleID", v27];

    v9 = v28;
  }

  [(PurchaseOperation *)v10 setBuyParameters:v9];
  originatingStorefront = [(BuyMicroPaymentOperation *)self originatingStorefront];
  [(PurchaseOperation *)v10 setOriginatingStorefront:originatingStorefront];

  [(PurchaseOperation *)v10 setShouldSendKeyBagSyncData:1];
  [(PurchaseOperation *)v10 setUrlBagKey:@"p2-in-app-buy"];
  if ([clientIdentity allowsBootstrapCellularData])
  {
    [(PurchaseOperation *)v10 setAllowsBootstrapCellularData:1];
  }

  if ([clientIdentity hidesConfirmationDialogs])
  {
    [(PurchaseOperation *)v10 setSkipsConfirmationDialogs:1];
  }

  v57 = _appProxy;
  if ([_appProxy isBetaApp])
  {
    [(PurchaseOperation *)v10 setBagType:1];
    v30 = [ACAccountStore ams_sharedAccountStoreForMediaType:AMSAccountMediaTypeAppStoreBeta];
    ams_activeiTunesAccount = [v30 ams_activeiTunesAccount];

    if (!ams_activeiTunesAccount)
    {
      v32 = [ACAccountStore ams_sharedAccountStoreForMediaType:AMSAccountMediaTypeAppStore];
      ams_activeiTunesAccount = [v32 ams_activeiTunesAccount];

      if (!ams_activeiTunesAccount)
      {
        v33 = 0;
        goto LABEL_39;
      }
    }
  }

  else
  {
    if (![clientIdentity isSandboxed])
    {
      ams_activeiTunesAccount = +[SSAccountStore defaultStore];
      activeAccount = [ams_activeiTunesAccount activeAccount];
      goto LABEL_37;
    }

    [(PurchaseOperation *)v10 setBagType:1];
    v34 = [ACAccountStore ams_sharedAccountStoreForMediaType:AMSAccountMediaTypeAppStoreSandbox];
    ams_activeiTunesAccount = [v34 ams_activeiTunesAccount];

    if (!ams_activeiTunesAccount)
    {
      v33 = 0;
      goto LABEL_38;
    }
  }

  activeAccount = [[SSAccount alloc] initWithBackingAccount:ams_activeiTunesAccount];
LABEL_37:
  v33 = activeAccount;
LABEL_38:

LABEL_39:
  v36 = [[SSMutableAuthenticationContext alloc] initWithAccount:v33];
  [v36 setShouldCreateNewSession:1];
  [v36 setTokenType:1];
  if ([clientIdentity allowsBootstrapCellularData])
  {
    [v36 setAllowsBootstrapCellularData:1];
  }

  v56 = v9;
  if ([clientIdentity requiresAuthenticationForPayment])
  {
    [v36 setPromptStyle:1];
    [(PurchaseOperation *)v10 setRequiresAuthentication:1];
  }

  v58 = v4;
  [(PurchaseOperation *)v10 setAuthenticationContext:v36];
  v59 = 0;
  v37 = [(BuyMicroPaymentOperation *)self runSubOperation:v10 returningError:&v59];
  v38 = v59;
  v39 = objc_alloc_init(MicroPaymentQueueResponse);
  authenticatedAccountDSID = [(PurchaseOperation *)v10 authenticatedAccountDSID];
  if (!authenticatedAccountDSID)
  {
    authenticatedAccountDSID = [v33 uniqueIdentifier];
  }

  v55 = v33;
  [(MicroPaymentQueueResponse *)v39 setUserIdentifier:authenticatedAccountDSID];
  rawOutput = [(PurchaseOperation *)v10 rawOutput];
  v42 = ![(MicroPaymentQueueResponse *)v39 loadFromPropertyList:rawOutput]& v37;

  if (v42 == 1)
  {
    v43 = +[SSLogConfig sharedDaemonConfig];
    if (!v43)
    {
      v43 = +[SSLogConfig sharedConfig];
    }

    shouldLog2 = [v43 shouldLog];
    if ([v43 shouldLogToDisk])
    {
      shouldLog2 |= 2u;
    }

    oSLogObject2 = [v43 OSLogObject];
    if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      shouldLog2 &= 2u;
    }

    if (shouldLog2)
    {
      v46 = objc_opt_class();
      v60 = 138412290;
      v61 = v46;
      v54 = v46;
      LODWORD(v53) = 12;
      v47 = _os_log_send_and_compose_impl();

      if (!v47)
      {
LABEL_56:

        ISError();
        v37 = 0;
        v38 = appReceipt = v38;
        goto LABEL_58;
      }

      oSLogObject2 = [NSString stringWithCString:v47 encoding:4, &v60, v53];
      free(v47);
      SSFileLog();
    }

    goto LABEL_56;
  }

  appReceipt = [(MicroPaymentQueueResponse *)v39 appReceipt];
  [AppReceipt writeReceipt:appReceipt forStoreKitClient:clientIdentity];
LABEL_58:
  v4 = v58;

  [(BuyMicroPaymentOperation *)self setError:v38];
  [(BuyMicroPaymentOperation *)self setSuccess:v37];
  [(BuyMicroPaymentOperation *)self lock];
  response = self->_response;
  self->_response = v39;
  v50 = v39;

  [(BuyMicroPaymentOperation *)self unlock];
  LODWORD(response) = [(MicroPaymentQueueResponse *)v50 shouldTriggerQueueCheck];

  if (response && (v37 & 1) == 0 && !v38)
  {
    v51 = sub_1001FA1F0();
    v52 = ISErrorWithDomain();
    [(BuyMicroPaymentOperation *)self setError:v52];
  }

  v21 = v56;
  _appProxy = v57;
LABEL_63:
}

- (id)_appProxy
{
  clientIdentity = [(BuyMicroPaymentOperation *)self clientIdentity];
  if ([clientIdentity usesIdentityAttributes])
  {
    v3 = 0;
    goto LABEL_30;
  }

  bundleIdentifier = [clientIdentity bundleIdentifier];
  v3 = [LSApplicationProxy applicationProxyForIdentifier:bundleIdentifier];
  appState = [v3 appState];
  isValid = [appState isValid];

  if ((isValid & 1) == 0)
  {
    v7 = +[SSLogConfig sharedDaemonConfig];
    if (!v7)
    {
      v7 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      v9 = shouldLog | 2;
    }

    else
    {
      v9 = shouldLog;
    }

    oSLogObject = [v7 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v9 &= 2u;
    }

    if (v9)
    {
      *v24 = 138543618;
      *&v24[4] = objc_opt_class();
      *&v24[12] = 2114;
      *&v24[14] = bundleIdentifier;
      v11 = *&v24[4];
      LODWORD(v23) = 22;
      v22 = v24;
      v12 = _os_log_send_and_compose_impl();

      if (!v12)
      {
LABEL_15:

        v13 = [AppExtensionSupport supportedProxyExtensionForBundleIdentifier:bundleIdentifier];

        v3 = v13;
        goto LABEL_16;
      }

      oSLogObject = [NSString stringWithCString:v12 encoding:4, v24, v23, *v24, *&v24[16]];
      free(v12);
      v22 = oSLogObject;
      SSFileLog();
    }

    goto LABEL_15;
  }

LABEL_16:
  if (!v3)
  {
    v14 = +[SSLogConfig sharedDaemonConfig];
    if (!v14)
    {
      v14 = +[SSLogConfig sharedConfig];
    }

    shouldLog2 = [v14 shouldLog];
    if ([v14 shouldLogToDisk])
    {
      v16 = shouldLog2 | 2;
    }

    else
    {
      v16 = shouldLog2;
    }

    oSLogObject2 = [v14 OSLogObject];
    if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v16 &= 2u;
    }

    if (v16)
    {
      v18 = objc_opt_class();
      *v24 = 138412546;
      *&v24[4] = v18;
      *&v24[12] = 2112;
      *&v24[14] = bundleIdentifier;
      v19 = v18;
      LODWORD(v23) = 22;
      v20 = _os_log_send_and_compose_impl();

      if (!v20)
      {
LABEL_28:

        goto LABEL_29;
      }

      oSLogObject2 = [NSString stringWithCString:v20 encoding:4, v24, v23];
      free(v20);
      SSFileLog();
    }

    goto LABEL_28;
  }

LABEL_29:

LABEL_30:

  return v3;
}

- (id)_fullBuyParametersWithAppProxy:(id)proxy
{
  proxyCopy = proxy;
  clientIdentity = [(BuyMicroPaymentOperation *)self clientIdentity];
  v6 = [clientIdentity copy];

  if (proxyCopy)
  {
    [v6 setValuesWithSoftwareApplicationProxy:proxyCopy];
  }

  v7 = sub_1000E3A24(v6);
  [v7 removeObjectForKey:@"vid"];
  [v7 setObject:@"true" forKey:@"generateBuyParams"];
  v8 = [NSString stringWithFormat:@"%ld", [(BuyMicroPaymentOperation *)self quantity]];
  [v7 setObject:v8 forKey:@"quantity"];

  productIdentifier = [(BuyMicroPaymentOperation *)self productIdentifier];
  if (productIdentifier)
  {
    v10 = productIdentifier;
    v11 = [productIdentifier copyUTF8StringOfLength:100];

    if (v11)
    {
      [v7 setObject:v11 forKey:@"offerName"];
    }
  }

  buyParameters = [(BuyMicroPaymentOperation *)self buyParameters];
  if (buyParameters)
  {
    v13 = [NSURL copyDictionaryForQueryString:buyParameters unescapedValues:1];
    if (v13)
    {
      [v7 addEntriesFromDictionary:v13];
    }
  }

  v47 = buyParameters;
  v48 = v7;
  v14 = [NSURL queryStringForDictionary:v7 escapedValues:0];
  requestData = [(BuyMicroPaymentOperation *)self requestData];
  if ([requestData length])
  {
    [requestData bytes];
    [requestData length];
    v15 = ISCopyEncodedBase64();
    if (v15)
    {
      v16 = +[NSCharacterSet URLQueryAllowedCharacterSet];
      v17 = [v16 mutableCopy];

      [v17 removeCharactersInString:@"?=&+"];
      v18 = [v15 stringByAddingPercentEncodingWithAllowedCharacters:v17];
      v19 = v18;
      if (v18)
      {
        [v14 appendFormat:@"&%@=%@", @"requestData", v18];
      }
    }
  }

  purchaserDSID = [proxyCopy purchaserDSID];
  if ([purchaserDSID integerValue])
  {
    stringValue = [purchaserDSID stringValue];
    [v14 appendFormat:@"&%@=%@", @"appDsid", stringValue];
  }

  storeCohortMetadata = [proxyCopy storeCohortMetadata];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v23 = [NSURL escapedStringForString:storeCohortMetadata];
    v24 = v23;
    if (v23)
    {
      [v14 appendFormat:@"&%@=%@", @"storeCohort", v23];
    }
  }

  v46 = purchaserDSID;
  vendorIdentifier = [v6 vendorIdentifier];
  v26 = vendorIdentifier;
  if (vendorIdentifier)
  {
    [v14 appendFormat:@"&%@=%@", @"vid", vendorIdentifier];
  }

  if ([proxyCopy isBetaApp])
  {
    [v14 appendString:@"&beta=true"];
  }

  v49 = proxyCopy;
  if ([v6 isSandboxed] && -[BuyMicroPaymentOperation simulatesAskToBuyInSandbox](self, "simulatesAskToBuyInSandbox"))
  {
    [v14 appendString:@"&requiresAskToBuy=true"];
  }

  v45 = storeCohortMetadata;
  [(BuyMicroPaymentOperation *)self lock];
  v27 = 0;
  applicationUsername = self->_applicationUsername;
  v52[0] = @"applicationUsername";
  v52[1] = applicationUsername;
  partnerIdentifier = self->_partnerIdentifier;
  v52[2] = @"partnerId";
  v52[3] = partnerIdentifier;
  partnerTransactionIdentifier = self->_partnerTransactionIdentifier;
  v52[4] = @"partnerTransactionId";
  v52[5] = partnerTransactionIdentifier;
  do
  {
    v31 = v52[v27 + 1];
    if (v31)
    {
      v32 = [NSCharacterSet characterSetWithCharactersInString:@"?=&+"];
      v33 = [v31 stringByAddingPercentEncodingWithAllowedCharacters:v32];

      if (v33)
      {
        [v14 appendFormat:@"&%@=%@", v52[v27], v33];
      }
    }

    v27 += 2;
  }

  while (v27 != 6);
  if (self->_discountIdentifier && self->_discountKeyIdentifier && self->_discountNonceString && self->_discountSignature && self->_discountTimestamp)
  {
    v34 = +[NSCharacterSet URLQueryAllowedCharacterSet];
    v35 = [v34 mutableCopy];

    [v35 removeCharactersInString:@"?=&+"];
    discountIdentifier = self->_discountIdentifier;
    v51[0] = @"adHocOfferId";
    v51[1] = discountIdentifier;
    discountKeyIdentifier = self->_discountKeyIdentifier;
    v51[2] = @"adHocKeyId";
    v51[3] = discountKeyIdentifier;
    discountNonceString = self->_discountNonceString;
    v51[4] = @"adHocNonce";
    v51[5] = discountNonceString;
    discountSignature = self->_discountSignature;
    v51[6] = @"adHocSignature";
    v51[7] = discountSignature;
    v51[8] = @"adHocTimestamp";
    v40 = 0;
    v51[9] = [(NSNumber *)self->_discountTimestamp stringValue];
    do
    {
      v41 = v51[v40 + 1];
      if (v41)
      {
        v42 = [v41 stringByAddingPercentEncodingWithAllowedCharacters:v35];
        v43 = v42;
        if (v42)
        {
          [v14 appendFormat:@"&%@=%@", v51[v40], v42];
        }
      }

      v40 += 2;
    }

    while (v40 != 10);
  }

  [(BuyMicroPaymentOperation *)self unlock];

  return v14;
}

@end