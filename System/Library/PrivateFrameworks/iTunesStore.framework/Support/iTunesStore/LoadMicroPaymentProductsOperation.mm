@interface LoadMicroPaymentProductsOperation
- (BOOL)_loadResponseForIdentity:(id)identity batchSize:(int64_t)size returningError:(id *)error;
- (LoadMicroPaymentProductsOperation)initWithProductIdentifiers:(id)identifiers;
- (NSArray)productIdentifiers;
- (StoreKitClientIdentity)clientIdentity;
- (id)_copyQueryStringDictionaryForIdentity:(id)identity productIdentifiers:(id)identifiers;
- (id)_copyResponseForIdentity:(id)identity identifiers:(id)identifiers returningError:(id *)error;
- (id)copyProductsResponse;
- (int64_t)_batchSizeForIdentity:(id)identity error:(id *)error;
- (void)dealloc;
- (void)run;
- (void)setClientIdentity:(id)identity;
@end

@implementation LoadMicroPaymentProductsOperation

- (LoadMicroPaymentProductsOperation)initWithProductIdentifiers:(id)identifiers
{
  v6.receiver = self;
  v6.super_class = LoadMicroPaymentProductsOperation;
  v4 = [(LoadMicroPaymentProductsOperation *)&v6 init];
  if (v4)
  {
    v4->_productIdentifiers = [identifiers copy];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = LoadMicroPaymentProductsOperation;
  [(LoadMicroPaymentProductsOperation *)&v3 dealloc];
}

- (StoreKitClientIdentity)clientIdentity
{
  [(LoadMicroPaymentProductsOperation *)self lock];
  v3 = self->_clientIdentity;
  [(LoadMicroPaymentProductsOperation *)self unlock];
  return v3;
}

- (id)copyProductsResponse
{
  [(LoadMicroPaymentProductsOperation *)self lock];
  v3 = self->_response;
  [(LoadMicroPaymentProductsOperation *)self unlock];
  return v3;
}

- (NSArray)productIdentifiers
{
  v2 = self->_productIdentifiers;

  return v2;
}

- (void)setClientIdentity:(id)identity
{
  [(LoadMicroPaymentProductsOperation *)self lock];
  clientIdentity = self->_clientIdentity;
  if (clientIdentity != identity)
  {

    self->_clientIdentity = [identity copy];
  }

  [(LoadMicroPaymentProductsOperation *)self unlock];
}

- (void)run
{
  v32 = 0;
  clientIdentity = [(LoadMicroPaymentProductsOperation *)self clientIdentity];
  if (![(StoreKitClientIdentity *)clientIdentity usesIdentityAttributes])
  {
    v4 = objc_autoreleasePoolPush();
    v5 = [LSApplicationProxy applicationProxyForIdentifier:[(StoreKitClientIdentity *)clientIdentity bundleIdentifier]];
    bundleType = [v5 bundleType];
    if (([bundleType isEqualToString:LSUserApplicationType] & 1) == 0)
    {
      v5 = [AppExtensionSupport supportedProxyExtensionForBundleIdentifier:[(StoreKitClientIdentity *)clientIdentity bundleIdentifier]];
    }

    if (v5)
    {
      [(StoreKitClientIdentity *)clientIdentity setValuesWithSoftwareApplicationProxy:v5];
LABEL_17:
      objc_autoreleasePoolPop(v4);
      goto LABEL_18;
    }

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

    if (!os_log_type_enabled([v7 OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v9 &= 2u;
    }

    if (v9)
    {
      v33 = 138412546;
      v34 = objc_opt_class();
      v35 = 2112;
      bundleIdentifier = [(StoreKitClientIdentity *)clientIdentity bundleIdentifier];
      LODWORD(v31) = 22;
      v29 = &v33;
      clientIdentity = _os_log_send_and_compose_impl();
      if (!clientIdentity)
      {
        goto LABEL_17;
      }

      v10 = [NSString stringWithCString:clientIdentity encoding:4, &v33, v31];
      free(clientIdentity);
      v29 = v10;
      SSFileLog();
    }

    clientIdentity = 0;
    goto LABEL_17;
  }

LABEL_18:
  if (!clientIdentity)
  {
    selfCopy2 = self;
    v21 = 0;
LABEL_45:
    [(LoadMicroPaymentProductsOperation *)selfCopy2 setError:v21, v29];
    return;
  }

  v11 = [(LoadMicroPaymentProductsOperation *)self _batchSizeForIdentity:clientIdentity error:&v32];
  if (v11 <= 0)
  {
LABEL_44:
    v21 = v32;
    selfCopy2 = self;
    goto LABEL_45;
  }

  if (![(LoadMicroPaymentProductsOperation *)self _loadResponseForIdentity:clientIdentity batchSize:v11 returningError:&v32])
  {
    v22 = +[SSLogConfig sharedDaemonConfig];
    if (!v22)
    {
      v22 = +[SSLogConfig sharedConfig];
    }

    shouldLog2 = [v22 shouldLog];
    if ([v22 shouldLogToDisk])
    {
      v24 = shouldLog2 | 2;
    }

    else
    {
      v24 = shouldLog2;
    }

    if (!os_log_type_enabled([v22 OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v24 &= 2u;
    }

    if (v24)
    {
      v25 = objc_opt_class();
      v33 = 138412546;
      v34 = v25;
      v35 = 2112;
      bundleIdentifier = v32;
      LODWORD(v31) = 22;
      v29 = &v33;
      v26 = _os_log_send_and_compose_impl();
      if (v26)
      {
        v27 = v26;
        v28 = [NSString stringWithCString:v26 encoding:4, &v33, v31];
        free(v27);
        v29 = v28;
        SSFileLog();
      }
    }

    goto LABEL_44;
  }

  if (([(LoadMicroPaymentProductsOperation *)self isCancelled]& 1) == 0)
  {
    v12 = +[SSLogConfig sharedDaemonConfig];
    if (!v12)
    {
      v12 = +[SSLogConfig sharedConfig];
    }

    shouldLog3 = [v12 shouldLog];
    if ([v12 shouldLogToDisk])
    {
      v14 = shouldLog3 | 2;
    }

    else
    {
      v14 = shouldLog3;
    }

    if (!os_log_type_enabled([v12 OSLogObject], OS_LOG_TYPE_INFO))
    {
      v14 &= 2u;
    }

    if (v14)
    {
      v15 = objc_opt_class();
      v16 = [(NSArray *)self->_productIdentifiers count];
      v33 = 138412546;
      v34 = v15;
      v35 = 2048;
      bundleIdentifier = v16;
      LODWORD(v31) = 22;
      v30 = &v33;
      v17 = _os_log_send_and_compose_impl();
      if (v17)
      {
        v18 = v17;
        v19 = [NSString stringWithCString:v17 encoding:4, &v33, v31];
        free(v18);
        v30 = v19;
        SSFileLog();
      }
    }

    [(LoadMicroPaymentProductsOperation *)self setSuccess:1, v30];
  }
}

- (int64_t)_batchSizeForIdentity:(id)identity error:(id *)error
{
  v15 = 0;
  v6 = +[SSURLBagContext contextWithBagType:](SSURLBagContext, "contextWithBagType:", [identity isSandboxed]);
  if (([(LoadMicroPaymentProductsOperation *)self loadURLBagWithContext:v6 returningError:&v15]& 1) != 0)
  {
    v7 = [objc_msgSend(+[ISURLBagCache sharedCache](ISURLBagCache "sharedCache")];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || (result = [v7 integerValue]) == 0)
    {
      result = 25;
    }
  }

  else
  {
    v9 = +[SSLogConfig sharedDaemonConfig];
    if (!v9)
    {
      v9 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v9 shouldLog];
    if ([v9 shouldLogToDisk])
    {
      v11 = shouldLog | 2;
    }

    else
    {
      v11 = shouldLog;
    }

    if (!os_log_type_enabled([v9 OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v11 &= 2u;
    }

    if (v11)
    {
      v12 = objc_opt_class();
      v16 = 138412290;
      v17 = v12;
      LODWORD(v14) = 12;
      result = _os_log_send_and_compose_impl();
      if (!result)
      {
        goto LABEL_16;
      }

      v13 = result;
      [NSString stringWithCString:result encoding:4, &v16, v14];
      free(v13);
      SSFileLog();
    }

    result = 0;
  }

LABEL_16:
  if (error)
  {
    *error = v15;
  }

  return result;
}

- (id)_copyQueryStringDictionaryForIdentity:(id)identity productIdentifiers:(id)identifiers
{
  v6 = objc_alloc_init(NSMutableDictionary);
  bundleIdentifier = [identity bundleIdentifier];
  if (bundleIdentifier)
  {
    v8 = [bundleIdentifier copyUTF8StringOfLength:256];
    if (v8)
    {
      v9 = v8;
      [v6 setObject:v8 forKey:@"bid"];
    }
  }

  bundleVersion = [identity bundleVersion];
  if (bundleVersion)
  {
    v11 = [bundleVersion copyUTF8StringOfLength:100];
    if (v11)
    {
      v12 = v11;
      [v6 setObject:v11 forKey:@"bvrs"];
    }
  }

  storeIdentifier = [identity storeIdentifier];
  if (storeIdentifier)
  {
    [v6 setObject:objc_msgSend(storeIdentifier forKey:{"stringValue"), @"appAdamId"}];
  }

  v14 = +[NSLocale autoupdatingCurrentLocale];
  if (v14)
  {
    [v6 setObject:-[NSLocale localeIdentifier](v14 forKey:{"localeIdentifier"), @"icuLocale"}];
  }

  v15 = [identifiers componentsJoinedByString:{@", "}];
  if ([v15 length])
  {
    [v6 setObject:v15 forKey:@"offerNames"];
  }

  v16 = [+[SSDevice currentDevice](SSDevice "currentDevice")];
  if (v16)
  {
    [v6 setObject:v16 forKey:@"sfId"];
  }

  storeVersion = [identity storeVersion];
  if (storeVersion)
  {
    [v6 setObject:objc_msgSend(storeVersion forKey:{"stringValue"), @"appExtVrsId"}];
  }

  return v6;
}

- (id)_copyResponseForIdentity:(id)identity identifiers:(id)identifiers returningError:(id *)error
{
  v16 = 0;
  v9 = objc_alloc_init(ISStoreURLOperation);
  v10 = objc_alloc_init(DaemonProtocolDataProvider);
  [v9 setDataProvider:v10];

  v11 = objc_alloc_init(SSMutableURLRequestProperties);
  [v11 setAllowedRetryCount:0];
  [v11 setAllowsBootstrapCellularData:{objc_msgSend(identity, "allowsBootstrapCellularData")}];
  [v11 setCachePolicy:1];
  [v11 setURLBagKey:@"p2-product-offers"];
  [v11 setURLBagType:{objc_msgSend(identity, "isSandboxed")}];
  v12 = [(LoadMicroPaymentProductsOperation *)self _copyQueryStringDictionaryForIdentity:identity productIdentifiers:identifiers];
  [v11 setRequestParameters:v12];

  [v9 setRequestProperties:v11];
  v13 = [(LoadMicroPaymentProductsOperation *)self runSubOperation:v9 returningError:&v16];
  v14 = 0;
  if (v13)
  {
    v14 = objc_alloc_init(MicroPaymentProductsResponse);
    [(MicroPaymentProductsResponse *)v14 setExpectedIdentifiers:identifiers];
    if (![(MicroPaymentProductsResponse *)v14 loadFromDictionary:[(DaemonProtocolDataProvider *)v10 output] error:&v16])
    {

      v14 = 0;
    }
  }

  if (error)
  {
    *error = v16;
  }

  return v14;
}

- (BOOL)_loadResponseForIdentity:(id)identity batchSize:(int64_t)size returningError:(id *)error
{
  v46 = 0;
  v41 = [(NSArray *)[(LoadMicroPaymentProductsOperation *)self productIdentifiers] sortedArrayUsingSelector:"compare:"];
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

  if (!os_log_type_enabled([v6 OSLogObject], OS_LOG_TYPE_INFO))
  {
    v8 &= 2u;
  }

  if (v8)
  {
    v48 = 138412802;
    v49 = objc_opt_class();
    v50 = 2048;
    v51 = [(NSArray *)v41 count];
    v52 = 2048;
    sizeCopy = size;
    LODWORD(v37) = 32;
    v36 = &v48;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      v11 = [NSString stringWithCString:v9 encoding:4, &v48, v37];
      free(v10);
      v36 = v11;
      SSFileLog();
    }
  }

  v12 = objc_alloc_init(NSMutableArray);
  v13 = objc_alloc_init(NSMutableArray);
  v14 = objc_alloc_init(NSMutableArray);
  v15 = [(NSArray *)v41 count];
  if ((v15 & 0x8000000000000000) == 0)
  {
    v16 = v15;
    v17 = 0;
    v18 = 0;
    while (1)
    {
      if (([(LoadMicroPaymentProductsOperation *)self isCancelled]& 1) != 0)
      {
        goto LABEL_34;
      }

      if (v17 >= v16)
      {
        break;
      }

      v19 = [(NSArray *)v41 objectAtIndex:v17];
      v20 = [v19 length];
      if (v20 > 0x280)
      {
        goto LABEL_21;
      }

      if (!v19 || [v14 count] == size || v20 + v18 >= 0x281)
      {
LABEL_23:
        v22 = [(LoadMicroPaymentProductsOperation *)self _copyResponseForIdentity:identity identifiers:v14 returningError:&v46];
        v21 = v22 == 0;
        if (v22)
        {
          v23 = v22;
          [v12 addObjectsFromArray:{objc_msgSend(v22, "products")}];
          [v13 addObjectsFromArray:{objc_msgSend(v23, "invalidIdentifiers")}];
        }

        [v14 removeAllObjects];
        v18 = 0;
        goto LABEL_26;
      }

LABEL_22:
      v21 = 0;
LABEL_26:
      if (v20 - 1 <= 0x27F)
      {
        [v14 addObject:v19];
        v18 += v20;
      }

      v25 = v17++ >= v16 || v21;
      if (v25)
      {

        if (!v21)
        {
          goto LABEL_35;
        }

        [(LoadMicroPaymentProductsOperation *)self lock];

        self->_response = 0;
        [(LoadMicroPaymentProductsOperation *)self unlock];
        v26 = 0;
        goto LABEL_45;
      }
    }

    v20 = [0 length];
    v19 = 0;
    if (v20 < 0x281)
    {
      goto LABEL_23;
    }

LABEL_21:
    [v13 addObject:v19];
    goto LABEL_22;
  }

LABEL_34:

LABEL_35:
  v27 = objc_alloc_init(NSMutableArray);
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v28 = [v12 countByEnumeratingWithState:&v42 objects:v47 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v43;
    do
    {
      for (i = 0; i != v29; i = i + 1)
      {
        if (*v43 != v30)
        {
          objc_enumerationMutation(v12);
        }

        copyProduct = [*(*(&v42 + 1) + 8 * i) copyProduct];
        if (copyProduct)
        {
          v33 = copyProduct;
          [v27 addObject:copyProduct];
        }
      }

      v29 = [v12 countByEnumeratingWithState:&v42 objects:v47 count:16];
    }

    while (v29);
  }

  [(LoadMicroPaymentProductsOperation *)self lock];

  v34 = objc_alloc_init(sub_1001FA27C());
  self->_response = v34;
  [(SKProductsResponse *)v34 _setInvalidIdentifiers:v13];
  [(SKProductsResponse *)self->_response _setProducts:v27];
  [(LoadMicroPaymentProductsOperation *)self unlock];

  v26 = 1;
LABEL_45:

  if (error)
  {
    *error = v46;
  }

  return v26;
}

@end