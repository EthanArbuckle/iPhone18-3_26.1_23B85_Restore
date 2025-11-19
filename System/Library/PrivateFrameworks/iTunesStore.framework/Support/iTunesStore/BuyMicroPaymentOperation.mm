@interface BuyMicroPaymentOperation
- (BOOL)purchaseOperation:(id)a3 shouldContinueWithNewStorefront:(id)a4;
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
- (id)_fullBuyParametersWithAppProxy:(id)a3;
- (int64_t)quantity;
- (void)run;
- (void)setApplicationUsername:(id)a3;
- (void)setBuyParameters:(id)a3;
- (void)setClientAuditTokenData:(id)a3;
- (void)setClientIdentity:(id)a3;
- (void)setPartnerIdentifier:(id)a3;
- (void)setPartnerTransactionIdentifier:(id)a3;
- (void)setProductIdentifier:(id)a3;
- (void)setQuantity:(int64_t)a3;
- (void)setRequestData:(id)a3;
- (void)setSimulatesAskToBuyInSandbox:(BOOL)a3;
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

- (void)setApplicationUsername:(id)a3
{
  v6 = a3;
  [(BuyMicroPaymentOperation *)self lock];
  if (self->_applicationUsername != v6)
  {
    v4 = [(NSString *)v6 copy];
    applicationUsername = self->_applicationUsername;
    self->_applicationUsername = v4;
  }

  [(BuyMicroPaymentOperation *)self unlock];
}

- (void)setBuyParameters:(id)a3
{
  v6 = a3;
  [(BuyMicroPaymentOperation *)self lock];
  if (self->_buyParameters != v6)
  {
    v4 = [(NSString *)v6 copy];
    buyParameters = self->_buyParameters;
    self->_buyParameters = v4;
  }

  [(BuyMicroPaymentOperation *)self unlock];
}

- (void)setClientAuditTokenData:(id)a3
{
  v5 = a3;
  [(BuyMicroPaymentOperation *)self lock];
  if (self->_clientAuditTokenData != v5)
  {
    objc_storeStrong(&self->_clientAuditTokenData, a3);
  }

  [(BuyMicroPaymentOperation *)self unlock];
}

- (void)setClientIdentity:(id)a3
{
  v5 = a3;
  [(BuyMicroPaymentOperation *)self lock];
  if (self->_clientIdentity != v5)
  {
    objc_storeStrong(&self->_clientIdentity, a3);
  }

  [(BuyMicroPaymentOperation *)self unlock];
}

- (void)setPartnerIdentifier:(id)a3
{
  v6 = a3;
  [(BuyMicroPaymentOperation *)self lock];
  if (self->_partnerIdentifier != v6)
  {
    v4 = [(NSString *)v6 copy];
    partnerIdentifier = self->_partnerIdentifier;
    self->_partnerIdentifier = v4;
  }

  [(BuyMicroPaymentOperation *)self unlock];
}

- (void)setPartnerTransactionIdentifier:(id)a3
{
  v6 = a3;
  [(BuyMicroPaymentOperation *)self lock];
  if (self->_partnerTransactionIdentifier != v6)
  {
    v4 = [(NSString *)v6 copy];
    partnerTransactionIdentifier = self->_partnerTransactionIdentifier;
    self->_partnerTransactionIdentifier = v4;
  }

  [(BuyMicroPaymentOperation *)self unlock];
}

- (void)setProductIdentifier:(id)a3
{
  v6 = a3;
  [(BuyMicroPaymentOperation *)self lock];
  if (self->_productIdentifier != v6)
  {
    v4 = [(NSString *)v6 copy];
    productIdentifier = self->_productIdentifier;
    self->_productIdentifier = v4;
  }

  [(BuyMicroPaymentOperation *)self unlock];
}

- (void)setQuantity:(int64_t)a3
{
  [(BuyMicroPaymentOperation *)self lock];
  self->_quantity = a3;

  [(BuyMicroPaymentOperation *)self unlock];
}

- (void)setRequestData:(id)a3
{
  v6 = a3;
  [(BuyMicroPaymentOperation *)self lock];
  if (self->_requestData != v6)
  {
    v4 = [(NSData *)v6 copy];
    requestData = self->_requestData;
    self->_requestData = v4;
  }

  [(BuyMicroPaymentOperation *)self unlock];
}

- (void)setSimulatesAskToBuyInSandbox:(BOOL)a3
{
  [(BuyMicroPaymentOperation *)self lock];
  self->_simulatesAskToBuyInSandbox = a3;

  [(BuyMicroPaymentOperation *)self unlock];
}

- (BOOL)purchaseOperation:(id)a3 shouldContinueWithNewStorefront:(id)a4
{
  v5 = a4;
  v6 = [(BuyMicroPaymentOperation *)self delegate];
  if (v6 && (v7 = v6, [(BuyMicroPaymentOperation *)self delegate], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_opt_respondsToSelector(), v8, v7, (v9 & 1) != 0))
  {
    v10 = [(BuyMicroPaymentOperation *)self delegate];
    v11 = [v10 buyMicroPaymentOperation:self shouldContinueWithNewStorefront:v5];
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (void)run
{
  v3 = [(BuyMicroPaymentOperation *)self clientIdentity];
  v4 = [[ClaimStoreKitClientOperation alloc] initWithClientIdentity:v3];
  v5 = [(BuyMicroPaymentOperation *)self clientAuditTokenData];
  [(ClaimStoreKitClientOperation *)v4 setClientAuditTokenData:v5];

  if ([(BuyMicroPaymentOperation *)self runSubOperation:v4 returningError:0])
  {
    v6 = [(ClaimStoreKitClientOperation *)v4 clientIdentity];

    [(BuyMicroPaymentOperation *)self setClientIdentity:v6];
    v3 = v6;
  }

  v7 = [(BuyMicroPaymentOperation *)self _appProxy];
  v8 = [(BuyMicroPaymentOperation *)self _fullBuyParametersWithAppProxy:v7];
  if (!v8)
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

      v18 = [NSString stringWithCString:v20 encoding:4, &v60, v53];
      free(v20);
      SSFileLog();
    }

    goto LABEL_18;
  }

  v9 = v8;
  v10 = objc_alloc_init(PurchaseOperation);
  [(PurchaseOperation *)v10 setMicroPayment:1];
  v11 = [(BuyMicroPaymentOperation *)self clientAuditTokenData];
  [(PurchaseOperation *)v10 setClientAuditTokenData:v11];

  if ([v3 usesIdentityAttributes])
  {
    goto LABEL_23;
  }

  v12 = [v3 bundleIdentifier];
  v13 = [LSApplicationProxy applicationProxyForIdentifier:v12];
  if (v13)
  {
    v14 = v13;
    goto LABEL_20;
  }

  v14 = [AppExtensionSupport supportedProxyExtensionForBundleIdentifier:v12];
  if (v14)
  {
LABEL_20:
    if ([v14 hasMIDBasedSINF])
    {
      [(PurchaseOperation *)v10 setRequiresSerialNumber:1];
    }
  }

LABEL_23:
  v22 = [v3 bundleIdentifier];
  v23 = [v22 length];

  if (v23)
  {
    v24 = [v3 bundleIdentifier];
    v25 = ISClientIdentifierForBundleIdentifier();
    [(PurchaseOperation *)v10 setClientIdentifierHeader:v25];

    v26 = [v3 bundleIdentifier];
    v27 = [NSURL escapedStringForString:v26];

    v28 = [v9 stringByAppendingFormat:@"&%@=%@", @"originatingBundleID", v27];

    v9 = v28;
  }

  [(PurchaseOperation *)v10 setBuyParameters:v9];
  v29 = [(BuyMicroPaymentOperation *)self originatingStorefront];
  [(PurchaseOperation *)v10 setOriginatingStorefront:v29];

  [(PurchaseOperation *)v10 setShouldSendKeyBagSyncData:1];
  [(PurchaseOperation *)v10 setUrlBagKey:@"p2-in-app-buy"];
  if ([v3 allowsBootstrapCellularData])
  {
    [(PurchaseOperation *)v10 setAllowsBootstrapCellularData:1];
  }

  if ([v3 hidesConfirmationDialogs])
  {
    [(PurchaseOperation *)v10 setSkipsConfirmationDialogs:1];
  }

  v57 = v7;
  if ([v7 isBetaApp])
  {
    [(PurchaseOperation *)v10 setBagType:1];
    v30 = [ACAccountStore ams_sharedAccountStoreForMediaType:AMSAccountMediaTypeAppStoreBeta];
    v31 = [v30 ams_activeiTunesAccount];

    if (!v31)
    {
      v32 = [ACAccountStore ams_sharedAccountStoreForMediaType:AMSAccountMediaTypeAppStore];
      v31 = [v32 ams_activeiTunesAccount];

      if (!v31)
      {
        v33 = 0;
        goto LABEL_39;
      }
    }
  }

  else
  {
    if (![v3 isSandboxed])
    {
      v31 = +[SSAccountStore defaultStore];
      v35 = [v31 activeAccount];
      goto LABEL_37;
    }

    [(PurchaseOperation *)v10 setBagType:1];
    v34 = [ACAccountStore ams_sharedAccountStoreForMediaType:AMSAccountMediaTypeAppStoreSandbox];
    v31 = [v34 ams_activeiTunesAccount];

    if (!v31)
    {
      v33 = 0;
      goto LABEL_38;
    }
  }

  v35 = [[SSAccount alloc] initWithBackingAccount:v31];
LABEL_37:
  v33 = v35;
LABEL_38:

LABEL_39:
  v36 = [[SSMutableAuthenticationContext alloc] initWithAccount:v33];
  [v36 setShouldCreateNewSession:1];
  [v36 setTokenType:1];
  if ([v3 allowsBootstrapCellularData])
  {
    [v36 setAllowsBootstrapCellularData:1];
  }

  v56 = v9;
  if ([v3 requiresAuthenticationForPayment])
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
  v40 = [(PurchaseOperation *)v10 authenticatedAccountDSID];
  if (!v40)
  {
    v40 = [v33 uniqueIdentifier];
  }

  v55 = v33;
  [(MicroPaymentQueueResponse *)v39 setUserIdentifier:v40];
  v41 = [(PurchaseOperation *)v10 rawOutput];
  v42 = ![(MicroPaymentQueueResponse *)v39 loadFromPropertyList:v41]& v37;

  if (v42 == 1)
  {
    v43 = +[SSLogConfig sharedDaemonConfig];
    if (!v43)
    {
      v43 = +[SSLogConfig sharedConfig];
    }

    v44 = [v43 shouldLog];
    if ([v43 shouldLogToDisk])
    {
      v44 |= 2u;
    }

    v45 = [v43 OSLogObject];
    if (!os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      v44 &= 2u;
    }

    if (v44)
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
        v38 = v48 = v38;
        goto LABEL_58;
      }

      v45 = [NSString stringWithCString:v47 encoding:4, &v60, v53];
      free(v47);
      SSFileLog();
    }

    goto LABEL_56;
  }

  v48 = [(MicroPaymentQueueResponse *)v39 appReceipt];
  [AppReceipt writeReceipt:v48 forStoreKitClient:v3];
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
  v7 = v57;
LABEL_63:
}

- (id)_appProxy
{
  v2 = [(BuyMicroPaymentOperation *)self clientIdentity];
  if ([v2 usesIdentityAttributes])
  {
    v3 = 0;
    goto LABEL_30;
  }

  v4 = [v2 bundleIdentifier];
  v3 = [LSApplicationProxy applicationProxyForIdentifier:v4];
  v5 = [v3 appState];
  v6 = [v5 isValid];

  if ((v6 & 1) == 0)
  {
    v7 = +[SSLogConfig sharedDaemonConfig];
    if (!v7)
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
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v9 &= 2u;
    }

    if (v9)
    {
      *v24 = 138543618;
      *&v24[4] = objc_opt_class();
      *&v24[12] = 2114;
      *&v24[14] = v4;
      v11 = *&v24[4];
      LODWORD(v23) = 22;
      v22 = v24;
      v12 = _os_log_send_and_compose_impl();

      if (!v12)
      {
LABEL_15:

        v13 = [AppExtensionSupport supportedProxyExtensionForBundleIdentifier:v4];

        v3 = v13;
        goto LABEL_16;
      }

      v10 = [NSString stringWithCString:v12 encoding:4, v24, v23, *v24, *&v24[16]];
      free(v12);
      v22 = v10;
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
      v18 = objc_opt_class();
      *v24 = 138412546;
      *&v24[4] = v18;
      *&v24[12] = 2112;
      *&v24[14] = v4;
      v19 = v18;
      LODWORD(v23) = 22;
      v20 = _os_log_send_and_compose_impl();

      if (!v20)
      {
LABEL_28:

        goto LABEL_29;
      }

      v17 = [NSString stringWithCString:v20 encoding:4, v24, v23];
      free(v20);
      SSFileLog();
    }

    goto LABEL_28;
  }

LABEL_29:

LABEL_30:

  return v3;
}

- (id)_fullBuyParametersWithAppProxy:(id)a3
{
  v4 = a3;
  v5 = [(BuyMicroPaymentOperation *)self clientIdentity];
  v6 = [v5 copy];

  if (v4)
  {
    [v6 setValuesWithSoftwareApplicationProxy:v4];
  }

  v7 = sub_1000E3A24(v6);
  [v7 removeObjectForKey:@"vid"];
  [v7 setObject:@"true" forKey:@"generateBuyParams"];
  v8 = [NSString stringWithFormat:@"%ld", [(BuyMicroPaymentOperation *)self quantity]];
  [v7 setObject:v8 forKey:@"quantity"];

  v9 = [(BuyMicroPaymentOperation *)self productIdentifier];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 copyUTF8StringOfLength:100];

    if (v11)
    {
      [v7 setObject:v11 forKey:@"offerName"];
    }
  }

  v12 = [(BuyMicroPaymentOperation *)self buyParameters];
  if (v12)
  {
    v13 = [NSURL copyDictionaryForQueryString:v12 unescapedValues:1];
    if (v13)
    {
      [v7 addEntriesFromDictionary:v13];
    }
  }

  v47 = v12;
  v48 = v7;
  v14 = [NSURL queryStringForDictionary:v7 escapedValues:0];
  v50 = [(BuyMicroPaymentOperation *)self requestData];
  if ([v50 length])
  {
    [v50 bytes];
    [v50 length];
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

  v20 = [v4 purchaserDSID];
  if ([v20 integerValue])
  {
    v21 = [v20 stringValue];
    [v14 appendFormat:@"&%@=%@", @"appDsid", v21];
  }

  v22 = [v4 storeCohortMetadata];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v23 = [NSURL escapedStringForString:v22];
    v24 = v23;
    if (v23)
    {
      [v14 appendFormat:@"&%@=%@", @"storeCohort", v23];
    }
  }

  v46 = v20;
  v25 = [v6 vendorIdentifier];
  v26 = v25;
  if (v25)
  {
    [v14 appendFormat:@"&%@=%@", @"vid", v25];
  }

  if ([v4 isBetaApp])
  {
    [v14 appendString:@"&beta=true"];
  }

  v49 = v4;
  if ([v6 isSandboxed] && -[BuyMicroPaymentOperation simulatesAskToBuyInSandbox](self, "simulatesAskToBuyInSandbox"))
  {
    [v14 appendString:@"&requiresAskToBuy=true"];
  }

  v45 = v22;
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