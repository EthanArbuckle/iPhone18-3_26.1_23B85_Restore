@interface SSInstallAttributionParamsRequest
- (SSInstallAttributionParamsRequest)initWithAppAdamId:(id)id adNetworkId:(id)networkId campaignId:(id)campaignId impressionId:(id)impressionId timestamp:(id)timestamp attributionSignature:(id)signature originatingBundleId:(id)bundleId overrideCampaignLimit:(BOOL)self0;
- (SSInstallAttributionParamsRequest)initWithXPCEncoding:(id)encoding;
- (id)copyXPCEncoding;
- (void)startWithCompletionBlock:(id)block;
@end

@implementation SSInstallAttributionParamsRequest

- (SSInstallAttributionParamsRequest)initWithAppAdamId:(id)id adNetworkId:(id)networkId campaignId:(id)campaignId impressionId:(id)impressionId timestamp:(id)timestamp attributionSignature:(id)signature originatingBundleId:(id)bundleId overrideCampaignLimit:(BOOL)self0
{
  idCopy = id;
  networkIdCopy = networkId;
  campaignIdCopy = campaignId;
  impressionIdCopy = impressionId;
  timestampCopy = timestamp;
  signatureCopy = signature;
  bundleIdCopy = bundleId;
  v39.receiver = self;
  v39.super_class = SSInstallAttributionParamsRequest;
  v23 = [(SSRequest *)&v39 init];
  if (v23)
  {
    v24 = [idCopy copy];
    appAdamId = v23->_appAdamId;
    v23->_appAdamId = v24;

    v26 = [networkIdCopy copy];
    adNetworkId = v23->_adNetworkId;
    v23->_adNetworkId = v26;

    v28 = [campaignIdCopy copy];
    campaignId = v23->_campaignId;
    v23->_campaignId = v28;

    v30 = [impressionIdCopy copy];
    impressionId = v23->_impressionId;
    v23->_impressionId = v30;

    v32 = [timestampCopy copy];
    timestamp = v23->_timestamp;
    v23->_timestamp = v32;

    v34 = [signatureCopy copy];
    attributionSignature = v23->_attributionSignature;
    v23->_attributionSignature = v34;

    v36 = [bundleIdCopy copy];
    originatingBundleId = v23->_originatingBundleId;
    v23->_originatingBundleId = v36;

    v23->_overrideCampaignLimit = limit;
  }

  return v23;
}

- (void)startWithCompletionBlock:(id)block
{
  v23 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  if (SSIsInternalBuild() && _os_feature_enabled_impl())
  {
    v5 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v5)
    {
      v5 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v5 shouldLog];
    if ([v5 shouldLogToDisk])
    {
      v7 = shouldLog | 2;
    }

    else
    {
      v7 = shouldLog;
    }

    oSLogObject = [v5 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_FAULT))
    {
      v9 = v7;
    }

    else
    {
      v9 = v7 & 2;
    }

    if (v9)
    {
      v21 = 136446210;
      v22 = "[SSInstallAttributionParamsRequest startWithCompletionBlock:]";
      LODWORD(v18) = 12;
      v10 = _os_log_send_and_compose_impl();

      if (!v10)
      {
LABEL_15:

        goto LABEL_16;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v10 encoding:{4, &v21, v18}];
      free(v10);
      SSFileLog(v5, @"%@", v11, v12, v13, v14, v15, v16, oSLogObject);
    }

    goto LABEL_15;
  }

LABEL_16:
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __62__SSInstallAttributionParamsRequest_startWithCompletionBlock___block_invoke;
  v19[3] = &unk_1E84ABEF0;
  v19[4] = self;
  v20 = blockCopy;
  v17 = blockCopy;
  [(SSRequest *)self _startWithMessageID:200 messageBlock:v19];
}

void __62__SSInstallAttributionParamsRequest_startWithCompletionBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 40))
  {
    if (v3 == MEMORY[0x1E69E9E18])
    {
      v7 = SSError(@"SSErrorDomain", 121, 0, 0);
    }

    else
    {
      v5 = objc_alloc(MEMORY[0x1E696ABC0]);
      v6 = xpc_dictionary_get_value(v4, "1");
      v7 = [v5 initWithXPCEncoding:v6];
    }

    v8 = dispatch_get_global_queue(0, 0);
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __62__SSInstallAttributionParamsRequest_startWithCompletionBlock___block_invoke_2;
    v14 = &unk_1E84AC338;
    v9 = *(a1 + 40);
    v15 = v7;
    v16 = v9;
    v10 = v7;
    dispatch_async(v8, &v11);
  }

  [*(a1 + 32) _shutdownRequest];
}

- (id)copyXPCEncoding
{
  v3 = xpc_dictionary_create(0, 0, 0);
  dispatchQueue = self->super._dispatchQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __52__SSInstallAttributionParamsRequest_copyXPCEncoding__block_invoke;
  v8[3] = &unk_1E84AC028;
  v5 = v3;
  v9 = v5;
  selfCopy = self;
  dispatch_sync(dispatchQueue, v8);
  v6 = v5;

  return v6;
}

void __52__SSInstallAttributionParamsRequest_copyXPCEncoding__block_invoke(uint64_t a1)
{
  SSXPCDictionarySetObject(*(a1 + 32), "appAdamId", *(*(a1 + 40) + 104));
  SSXPCDictionarySetObject(*(a1 + 32), "adNetworkId", *(*(a1 + 40) + 112));
  SSXPCDictionarySetObject(*(a1 + 32), "campaignId", *(*(a1 + 40) + 120));
  SSXPCDictionarySetObject(*(a1 + 32), "impressionId", *(*(a1 + 40) + 128));
  SSXPCDictionarySetObject(*(a1 + 32), "timestamp", *(*(a1 + 40) + 136));
  SSXPCDictionarySetObject(*(a1 + 32), "attributionSignature", *(*(a1 + 40) + 144));
  SSXPCDictionarySetObject(*(a1 + 32), "originatingBundleId", *(*(a1 + 40) + 152));
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 96);

  xpc_dictionary_set_BOOL(v2, "overrideCampaignLimit", v3);
}

- (SSInstallAttributionParamsRequest)initWithXPCEncoding:(id)encoding
{
  v45 = *MEMORY[0x1E69E9840];
  encodingCopy = encoding;
  v5 = encodingCopy;
  if (!encodingCopy || MEMORY[0x1DA6E0380](encodingCopy) != MEMORY[0x1E69E9E80])
  {
    goto LABEL_22;
  }

  v42.receiver = self;
  v42.super_class = SSInstallAttributionParamsRequest;
  self = [(SSRequest *)&v42 init];
  if (self)
  {
    v6 = objc_opt_class();
    v7 = SSXPCDictionaryCopyObjectWithClass(v5, "appAdamId", v6);
    appAdamId = self->_appAdamId;
    self->_appAdamId = v7;

    v9 = objc_opt_class();
    v10 = SSXPCDictionaryCopyObjectWithClass(v5, "adNetworkId", v9);
    adNetworkId = self->_adNetworkId;
    self->_adNetworkId = v10;

    v12 = objc_opt_class();
    v13 = SSXPCDictionaryCopyObjectWithClass(v5, "campaignId", v12);
    campaignId = self->_campaignId;
    self->_campaignId = v13;

    v15 = objc_opt_class();
    v16 = SSXPCDictionaryCopyObjectWithClass(v5, "impressionId", v15);
    impressionId = self->_impressionId;
    self->_impressionId = v16;

    v18 = objc_opt_class();
    v19 = SSXPCDictionaryCopyObjectWithClass(v5, "timestamp", v18);
    timestamp = self->_timestamp;
    self->_timestamp = v19;

    v21 = objc_opt_class();
    v22 = SSXPCDictionaryCopyObjectWithClass(v5, "attributionSignature", v21);
    attributionSignature = self->_attributionSignature;
    self->_attributionSignature = v22;

    v24 = objc_opt_class();
    v25 = SSXPCDictionaryCopyObjectWithClass(v5, "originatingBundleId", v24);
    originatingBundleId = self->_originatingBundleId;
    self->_originatingBundleId = v25;

    self->_overrideCampaignLimit = xpc_dictionary_get_BOOL(v5, "overrideCampaignLimit");
    if (!self->_appAdamId || !self->_adNetworkId || !self->_campaignId || !self->_impressionId || !self->_timestamp || !self->_attributionSignature)
    {
      v27 = +[SSLogConfig sharedConfig];
      if (!v27)
      {
        v27 = +[SSLogConfig sharedConfig];
      }

      shouldLog = [v27 shouldLog];
      if ([v27 shouldLogToDisk])
      {
        v29 = shouldLog | 2;
      }

      else
      {
        v29 = shouldLog;
      }

      oSLogObject = [v27 OSLogObject];
      if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
      {
        v29 &= 2u;
      }

      if (v29)
      {
        v31 = objc_opt_class();
        v43 = 138543362;
        v44 = v31;
        v32 = v31;
        LODWORD(v41) = 12;
        v33 = _os_log_send_and_compose_impl();

        if (!v33)
        {
LABEL_21:

LABEL_22:
          self = 0;
          goto LABEL_23;
        }

        oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v33 encoding:{4, &v43, v41}];
        free(v33);
        SSFileLog(v27, @"%@", v34, v35, v36, v37, v38, v39, oSLogObject);
      }

      goto LABEL_21;
    }
  }

LABEL_23:

  return self;
}

@end