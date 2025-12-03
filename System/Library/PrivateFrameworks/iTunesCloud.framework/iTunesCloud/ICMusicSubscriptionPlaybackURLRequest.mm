@interface ICMusicSubscriptionPlaybackURLRequest
- (id)_actionType;
- (id)_analyticSignature;
- (id)description;
- (void)_populateItemIdentifiers:(id)identifiers;
- (void)buildStoreURLRequestWithURLRequest:(id)request builderProperties:(id)properties completionHandler:(id)handler;
@end

@implementation ICMusicSubscriptionPlaybackURLRequest

- (id)_analyticSignature
{
  v3 = MEMORY[0x1E696AEC0];
  v13.receiver = self;
  v13.super_class = ICMusicSubscriptionPlaybackURLRequest;
  _analyticSignature = [(ICURLRequest *)&v13 _analyticSignature];
  _actionType = [(ICMusicSubscriptionPlaybackURLRequest *)self _actionType];
  urlRequest = [(ICURLRequest *)self urlRequest];
  v7 = [urlRequest URL];
  query = [v7 query];
  v9 = query;
  v10 = &stru_1F2C4A680;
  if (query)
  {
    v10 = query;
  }

  v11 = [v3 stringWithFormat:@"%@?%@ %@", _analyticSignature, _actionType, v10];

  return v11;
}

- (id)description
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [(ICMusicSubscriptionPlaybackURLRequest *)self _populateItemIdentifiers:dictionary];
  v8.receiver = self;
  v8.super_class = ICMusicSubscriptionPlaybackURLRequest;
  v4 = [(ICStoreURLRequest *)&v8 description];
  if ([dictionary count])
  {
    msv_compactDescription = [dictionary msv_compactDescription];
    v6 = [v4 stringByAppendingString:msv_compactDescription];

    v4 = v6;
  }

  return v4;
}

- (void)_populateItemIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v5 = identifiersCopy;
  storeSubscriptionAdamID = self->_storeSubscriptionAdamID;
  if (!self->_delegatedPlayback)
  {
    if (!storeSubscriptionAdamID)
    {
      goto LABEL_13;
    }

    v11 = identifiersCopy;
    v10 = [MEMORY[0x1E696AD98] numberWithLongLong:?];
    [v11 setObject:v10 forKey:@"salableAdamId"];

    goto LABEL_12;
  }

  v11 = identifiersCopy;
  if (storeSubscriptionAdamID)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithLongLong:?];
    [v11 setObject:v7 forKey:@"subscriptionAdamId"];
  }

  if (self->_storePurchasedAdamID)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithLongLong:?];
    [v11 setObject:v8 forKey:@"purchaseAdamId"];
  }

  if (self->_storeCloudID)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
    [v11 setObject:v9 forKey:@"sagaId"];
  }

  identifiersCopy = [(NSString *)self->_cloudUniversalLibraryID length];
  v5 = v11;
  if (identifiersCopy)
  {
    identifiersCopy = [v11 setObject:self->_cloudUniversalLibraryID forKey:@"universalLibraryId"];
LABEL_12:
    v5 = v11;
  }

LABEL_13:

  MEMORY[0x1EEE66BB8](identifiersCopy, v5);
}

- (id)_actionType
{
  requestType = self->_requestType;
  v3 = @"lease-renew";
  if (requestType == 2)
  {
    v3 = @"lease-start";
  }

  if (requestType == 3)
  {
    return @"accountless-streaming";
  }

  else
  {
    return v3;
  }
}

- (void)buildStoreURLRequestWithURLRequest:(id)request builderProperties:(id)properties completionHandler:(id)handler
{
  propertiesCopy = properties;
  handlerCopy = handler;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __112__ICMusicSubscriptionPlaybackURLRequest_buildStoreURLRequestWithURLRequest_builderProperties_completionHandler___block_invoke;
  v13[3] = &unk_1E7BF9218;
  v13[4] = self;
  v14 = propertiesCopy;
  v15 = handlerCopy;
  v12.receiver = self;
  v12.super_class = ICMusicSubscriptionPlaybackURLRequest;
  v10 = handlerCopy;
  v11 = propertiesCopy;
  [(ICStoreURLRequest *)&v12 buildStoreURLRequestWithURLRequest:request builderProperties:v11 completionHandler:v13];
}

void __112__ICMusicSubscriptionPlaybackURLRequest_buildStoreURLRequestWithURLRequest_builderProperties_completionHandler___block_invoke(id *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (!v5 || a3)
  {
    (*(a1[6] + 2))();
  }

  else
  {
    v6 = [a1[4] storeRequestContext];
    v7 = *(a1[4] + 46);
    if (v7 == 3)
    {
      v8 = 309;
    }

    else
    {
      v8 = 310;
    }

    if (v7 == 2)
    {
      v9 = 308;
    }

    else
    {
      v9 = v8;
    }

    if (v7 == 3)
    {
      v10 = -1;
    }

    else
    {
      v11 = [a1[5] DSID];
      v10 = [v11 unsignedLongLongValue];
    }

    v12 = +[ICMusicSubscriptionFairPlayController sharedController];
    v13 = a1[4];
    v14 = v13[43];
    v15 = v13[44];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __112__ICMusicSubscriptionPlaybackURLRequest_buildStoreURLRequestWithURLRequest_builderProperties_completionHandler___block_invoke_2;
    v17[3] = &unk_1E7BF7210;
    v17[4] = v13;
    v18 = v6;
    v19 = v5;
    v20 = a1[6];
    v16 = v6;
    [v12 generateSubscriptionLeaseRequestWithAccountUniqueID:v10 transactionType:v9 certificateData:v14 assetIDData:v15 completionHandler:v17];
  }
}

void __112__ICMusicSubscriptionPlaybackURLRequest_buildStoreURLRequestWithURLRequest_builderProperties_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v39 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = os_log_create("com.apple.amp.iTunesCloud", "Default_Oversize");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      *buf = 138543618;
      v36 = v11;
      v37 = 2114;
      v38 = v9;
      _os_log_impl(&dword_1B4491000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ Failed to generate subscription lease fairplay data. err=%{public}@", buf, 0x16u);
    }
  }

  v12 = [*(a1 + 32) _actionType];
  v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v13 setObject:v12 forKey:@"action"];
  if ([*(*(a1 + 32) + 336) length])
  {
    [v13 setObject:*(*(a1 + 32) + 336) forKey:@"assetStoreFront"];
  }

  if (v7)
  {
    v14 = [v7 base64EncodedStringWithOptions:0];
    if ([v14 length])
    {
      [v13 setObject:v14 forKey:@"spc"];
    }
  }

  if (v8)
  {
    v15 = [v8 base64EncodedStringWithOptions:0];
    if ([v15 length])
    {
      [v13 setObject:v15 forKey:@"sbsync"];
    }
  }

  v16 = [*(a1 + 40) deviceInfo];
  v17 = [v16 deviceGUID];

  if (v17)
  {
    [v13 setObject:v17 forKey:@"guid"];
  }

  v18 = [*(a1 + 40) deviceInfo];
  v19 = [v18 isWatch];

  if (v19)
  {
    v20 = +[ICNanoPairedDeviceStatusMonitor sharedMonitor];
    v21 = [v20 pairedDeviceMediaGUID];

    if (v21)
    {
      [v13 setObject:v21 forKey:@"companion-guid"];
    }
  }

  [*(a1 + 32) _populateItemIdentifiers:v13];
  v32 = 0;
  v22 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v13 options:0 error:&v32];
  v23 = v32;
  v24 = v23;
  if (!v22 || v23)
  {
    v28 = MEMORY[0x1E696ABC0];
    if (v23)
    {
      v33 = *MEMORY[0x1E696AA08];
      v34 = v23;
      v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
      v25 = [v28 errorWithDomain:@"ICError" code:-7101 userInfo:v29];
    }

    else
    {
      v25 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7101 userInfo:0];
    }

    v30 = *(a1 + 56);
    if (v30)
    {
      v27 = *(v30 + 16);
      goto LABEL_30;
    }
  }

  else
  {
    v25 = [*(a1 + 48) mutableCopy];
    [v25 setHTTPBody:v22];
    [v25 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    v26 = *(a1 + 56);
    if (v26)
    {
      v27 = *(v26 + 16);
LABEL_30:
      v27();
    }
  }
}

@end