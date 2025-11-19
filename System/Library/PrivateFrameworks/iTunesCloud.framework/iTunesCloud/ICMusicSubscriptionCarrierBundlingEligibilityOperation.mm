@interface ICMusicSubscriptionCarrierBundlingEligibilityOperation
- (ICMusicSubscriptionCarrierBundlingEligibilityOperation)initWithRequestContext:(id)a3;
- (id)_newDefaultRequestBodyDictionary;
- (id)_newDefaultRequestBodyDictionaryWithResponseCode:(int64_t)a3 error:(id)a4;
- (void)_finishEnrichmentWithBodyDictionary:(id)a3 completionHandler:(id)a4;
- (void)_sendEnrichmentRequestWithURL:(id)a3 preflightResponse:(id)a4 completionHandler:(id)a5;
- (void)_sendPreflightRequestWithCompletionHandler:(id)a3;
- (void)_sendSilentSMSRequestWithMessage:(id)a3 number:(id)a4 preflightResponse:(id)a5 completionHandler:(id)a6;
- (void)execute;
@end

@implementation ICMusicSubscriptionCarrierBundlingEligibilityOperation

- (void)_sendSilentSMSRequestWithMessage:(id)a3 number:(id)a4 preflightResponse:(id)a5 completionHandler:(id)a6
{
  v41 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = +[ICTelephonyController sharedController];
  v36 = 0;
  v15 = [v14 sendSMSWithText:v10 toPhoneNumber:v11 error:&v36];
  v16 = v36;

  v17 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
  v18 = v17;
  if (v15)
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v38 = self;
      _os_log_impl(&dword_1B4491000, v18, OS_LOG_TYPE_INFO, "%{public}@ Silent SMS succeeded.", buf, 0xCu);
    }

    v19 = 200;
  }

  else
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      requestContext = self->_requestContext;
      *buf = 138543618;
      v38 = self;
      v39 = 2114;
      v40 = requestContext;
      _os_log_impl(&dword_1B4491000, v18, OS_LOG_TYPE_ERROR, "%{public}@ Failed to send silent SMS for %{public}@.", buf, 0x16u);
    }

    v19 = 460;
  }

  v21 = self->_requestContext;
  v22 = [v12 headerEnrichmentSessionIdentifier];
  v23 = [(ICMusicSubscriptionCarrierBundlingEligibilityOperation *)self _newDefaultRequestBodyDictionaryWithResponseCode:v19 error:v16];
  v24 = v23;
  if (v22)
  {
    [v23 setObject:v22 forKey:@"sessionId"];
  }

  if (self->_deepLink)
  {
    [v24 setObject:@"true" forKey:@"deepLink"];
  }

  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __134__ICMusicSubscriptionCarrierBundlingEligibilityOperation__sendSilentSMSRequestWithMessage_number_preflightResponse_completionHandler___block_invoke;
  v30[3] = &unk_1E7BF5E18;
  v30[4] = self;
  v31 = v21;
  v32 = v10;
  v33 = v11;
  v34 = v12;
  v35 = v13;
  v25 = v12;
  v26 = v11;
  v27 = v10;
  v28 = v13;
  v29 = v21;
  [(ICMusicSubscriptionCarrierBundlingEligibilityOperation *)self _finishEnrichmentWithBodyDictionary:v24 completionHandler:v30];
}

void __134__ICMusicSubscriptionCarrierBundlingEligibilityOperation__sendSilentSMSRequestWithMessage_number_preflightResponse_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
LABEL_6:
    v12 = *(a1 + 72);
    if (v12)
    {
      (*(v12 + 16))(v12, 0, v7);
    }

    goto LABEL_15;
  }

  v8 = [v5 error];
  if (v8)
  {
    v7 = v8;
    v9 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 32);
      v11 = *(a1 + 40);
      *buf = 138543874;
      v27 = v10;
      v28 = 2114;
      v29 = v11;
      v30 = 2114;
      v31 = v7;
      _os_log_impl(&dword_1B4491000, v9, OS_LOG_TYPE_ERROR, "%{public}@ Carrier bundling eligibility operation failed for %{public}@ due to error in response body: %{public}@", buf, 0x20u);
    }

    goto LABEL_6;
  }

  v13 = v5;
  if ([v13 needsSilentSMS])
  {
    [v13 delayInterval];
    v15 = v14;
    v16 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = *(a1 + 32);
      *buf = 138543618;
      v27 = v17;
      v28 = 2050;
      v29 = v15;
      _os_log_impl(&dword_1B4491000, v16, OS_LOG_TYPE_INFO, "%{public}@ Performing delayed retry after %{public}f seconds: still needs silent SMS.", buf, 0x16u);
    }

    v18 = dispatch_time(0, (v15 * 1000000000.0));
    v19 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __134__ICMusicSubscriptionCarrierBundlingEligibilityOperation__sendSilentSMSRequestWithMessage_number_preflightResponse_completionHandler___block_invoke_105;
    block[3] = &unk_1E7BF70D8;
    block[4] = *(a1 + 32);
    v22 = *(a1 + 48);
    v23 = *(a1 + 56);
    v24 = *(a1 + 64);
    v25 = *(a1 + 72);
    dispatch_after(v18, v19, block);
  }

  else
  {
    v20 = *(a1 + 72);
    if (v20)
    {
      (*(v20 + 16))(v20, v13, 0);
    }
  }

  v7 = 0;
LABEL_15:
}

- (void)_sendPreflightRequestWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(ICMusicSubscriptionCarrierBundlingEligibilityOperation *)self _newDefaultRequestBodyDictionary];
  v6 = v5;
  phoneNumber = self->_phoneNumber;
  if (phoneNumber)
  {
    [v5 setObject:phoneNumber forKey:@"phoneNumber"];
  }

  if (self->_deepLink)
  {
    [v6 setObject:@"true" forKey:@"deepLink"];
  }

  v8 = self->_requestContext;
  v9 = self->_cellularProviderName;
  v10 = self->_phoneNumber;
  v11 = +[ICURLBagProvider sharedBagProvider];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __101__ICMusicSubscriptionCarrierBundlingEligibilityOperation__sendPreflightRequestWithCompletionHandler___block_invoke;
  v17[3] = &unk_1E7BF5D58;
  v17[4] = self;
  v18 = v8;
  v19 = v6;
  v20 = v9;
  v21 = v10;
  v22 = v4;
  v12 = v10;
  v13 = v9;
  v14 = v6;
  v15 = v4;
  v16 = v8;
  [v11 getBagForRequestContext:v16 withCompletionHandler:v17];
}

void __101__ICMusicSubscriptionCarrierBundlingEligibilityOperation__sendPreflightRequestWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v41 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v11 = @"fuseHeaderEnrichment";
    v12 = [v5 urlForBagKey:@"fuseHeaderEnrichment"];
    if (v12)
    {
      v13 = *(a1 + 48);
      v34 = 0;
      v14 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v13 options:0 error:&v34];
      v15 = v34;
      v16 = v15;
      if (!v14 || v15)
      {
        v17 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v18 = *(a1 + 32);
          *buf = 138543874;
          v36 = v18;
          v37 = 2114;
          v38 = @"fuseHeaderEnrichment";
          v39 = 2114;
          v40 = v16;
          _os_log_impl(&dword_1B4491000, v17, OS_LOG_TYPE_ERROR, "%{public}@ Encountered error trying to serialize body data for %{public}@: %{public}@.", buf, 0x20u);
        }
      }

      v19 = [objc_alloc(MEMORY[0x1E695AC18]) initWithURL:v12];
      [v19 setHTTPMethod:@"POST"];
      [v19 setHTTPBody:v14];
      [v19 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
      v20 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = *(a1 + 32);
        *buf = 138543362;
        v36 = v21;
        _os_log_impl(&dword_1B4491000, v20, OS_LOG_TYPE_INFO, "%{public}@ Sending preflight request.", buf, 0xCu);
      }

      v22 = [[ICStoreURLRequest alloc] initWithURLRequest:v19 requestContext:*(a1 + 40)];
      [(ICStoreURLRequest *)v22 setAnisetteVersion:2];
      [(ICURLRequest *)v22 setMaxRetryCount:0];
      v23 = +[ICURLSessionManager highPrioritySession];
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __101__ICMusicSubscriptionCarrierBundlingEligibilityOperation__sendPreflightRequestWithCompletionHandler___block_invoke_103;
      v28[3] = &unk_1E7BF5DF0;
      v24 = *(a1 + 40);
      v28[4] = *(a1 + 32);
      v29 = v24;
      v33 = *(a1 + 72);
      v30 = @"fuseHeaderEnrichment";
      v31 = *(a1 + 56);
      v32 = *(a1 + 64);
      [v23 enqueueDataRequest:v22 withCompletionHandler:v28];
    }

    else
    {
      v25 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = *(a1 + 32);
        v27 = *(a1 + 40);
        *buf = 138543618;
        v36 = v26;
        v37 = 2114;
        v38 = v27;
        _os_log_impl(&dword_1B4491000, v25, OS_LOG_TYPE_ERROR, "%{public}@ Carrier bundling eligibility operation failed for %{public}@ due to missing the key in the bag.", buf, 0x16u);
      }

      if (!*(a1 + 72))
      {
        goto LABEL_20;
      }

      v16 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7201 userInfo:0];
      (*(*(a1 + 72) + 16))();
    }

LABEL_20:
    goto LABEL_21;
  }

  v7 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    *buf = 138543874;
    v36 = v8;
    v37 = 2114;
    v38 = v9;
    v39 = 2114;
    v40 = v6;
    _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_ERROR, "%{public}@ Carrier bundling eligibility operation failed for %{public}@ due to URL bag load failure: %{public}@", buf, 0x20u);
  }

  v10 = *(a1 + 72);
  if (v10)
  {
    (*(v10 + 16))(v10, 0, v6);
  }

LABEL_21:
}

void __101__ICMusicSubscriptionCarrierBundlingEligibilityOperation__sendPreflightRequestWithCompletionHandler___block_invoke_103(uint64_t a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v11 = [v5 parsedBodyDictionary];
    v12 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
    v13 = v12;
    if (v11)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *(a1 + 32);
        v15 = *(a1 + 48);
        *buf = 138543874;
        v27 = v14;
        v28 = 2114;
        v29 = v15;
        v30 = 2114;
        v31 = v11;
        _os_log_impl(&dword_1B4491000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ Got carrier bundling response for %{public}@ with body: %{public}@", buf, 0x20u);
      }

      v16 = [[ICMusicSubscriptionCarrierBundlingEligibilityResponse alloc] initWithEligibilityDictionary:v11 cellularProviderName:*(a1 + 56) phoneNumber:*(a1 + 64)];
      if ([(ICMusicSubscriptionCarrierBundlingEligibilityResponse *)v16 wantsDelayedRetry])
      {
        [(ICMusicSubscriptionCarrierBundlingEligibilityResponse *)v16 delayInterval];
        v18 = dispatch_time(0, (v17 * 1000000000.0));
        v19 = dispatch_get_global_queue(0, 0);
        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v24[2] = __101__ICMusicSubscriptionCarrierBundlingEligibilityOperation__sendPreflightRequestWithCompletionHandler___block_invoke_104;
        v24[3] = &unk_1E7BF9EC8;
        v24[4] = *(a1 + 32);
        v25 = *(a1 + 72);
        dispatch_after(v18, v19, v24);

LABEL_18:
LABEL_19:

        goto LABEL_20;
      }

      v23 = *(a1 + 72);
      if (!v23)
      {
        goto LABEL_18;
      }

      v22 = *(v23 + 16);
    }

    else
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v20 = *(a1 + 32);
        v21 = *(a1 + 40);
        *buf = 138543618;
        v27 = v20;
        v28 = 2114;
        v29 = v21;
        _os_log_impl(&dword_1B4491000, v13, OS_LOG_TYPE_ERROR, "%{public}@ Carrier bundling eligibility operation failed for %{public}@ due to invalid response.", buf, 0x16u);
      }

      if (!*(a1 + 72))
      {
        goto LABEL_19;
      }

      v16 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7102 userInfo:0];
      v22 = *(*(a1 + 72) + 16);
    }

    v22();
    goto LABEL_18;
  }

  v7 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    *buf = 138543874;
    v27 = v8;
    v28 = 2114;
    v29 = v9;
    v30 = 2114;
    v31 = v6;
    _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_ERROR, "%{public}@ Carrier bundling eligibility operation failed for %{public}@ error while issuing preflight request: %{public}@", buf, 0x20u);
  }

  v10 = *(a1 + 72);
  if (v10)
  {
    (*(v10 + 16))(v10, 0, v6);
  }

LABEL_20:
}

- (void)_sendEnrichmentRequestWithURL:(id)a3 preflightResponse:(id)a4 completionHandler:(id)a5
{
  v34 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self->_requestContext;
  deepLink = self->_deepLink;
  v13 = [objc_alloc(MEMORY[0x1E695AC18]) initWithURL:v8];
  [v13 setHTTPMethod:@"POST"];
  [v13 setValue:@"text/xml; charset=utf-8" forHTTPHeaderField:@"Content-Type"];
  [v13 setValue:@"ValidateMobile" forHTTPHeaderField:@"SOAPAction"];
  v14 = [v9 headerEnrichmentMessage];
  v15 = v14;
  if (v14)
  {
    v16 = [v14 dataUsingEncoding:4];
    [v13 setHTTPBody:v16];
  }

  v17 = +[ICURLSessionManager sharedSessionManager];
  v18 = [v17 sessionWithIdentifier:@"com.apple.iTunesCloud.ICMusicSubscriptionCarrierBundlingEligibilityOperation" creationBlock:&__block_literal_global_16816];

  v19 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v33 = self;
    _os_log_impl(&dword_1B4491000, v19, OS_LOG_TYPE_INFO, "%{public}@ Sending header enrichment request.", buf, 0xCu);
  }

  v20 = [[ICURLRequest alloc] initWithURLRequest:v13 requestContext:v11];
  [(ICURLRequest *)v20 setCancelOnHTTPErrors:0];
  [(ICURLRequest *)v20 setMaxRetryCount:0];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __124__ICMusicSubscriptionCarrierBundlingEligibilityOperation__sendEnrichmentRequestWithURL_preflightResponse_completionHandler___block_invoke_81;
  v25[3] = &unk_1E7BF5DC8;
  v26 = v8;
  v27 = self;
  v29 = v9;
  v30 = v10;
  v28 = v11;
  v31 = deepLink;
  v21 = v9;
  v22 = v10;
  v23 = v11;
  v24 = v8;
  [v18 enqueueDataRequest:v20 withCompletionHandler:v25];
}

void __124__ICMusicSubscriptionCarrierBundlingEligibilityOperation__sendEnrichmentRequestWithURL_preflightResponse_completionHandler___block_invoke_81(uint64_t a1, void *a2, void *a3)
{
  v42 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v5 urlResponse];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
LABEL_3:
    v10 = [*(a1 + 56) headerEnrichmentSessionIdentifier];
    v11 = [v5 bodyData];
    if (v11)
    {
      v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v11 encoding:4];
    }

    else
    {
      v12 = 0;
    }

    v16 = [*(a1 + 40) _newDefaultRequestBodyDictionaryWithResponseCode:objc_msgSend(v8 error:{"statusCode"), v9}];
    v17 = v16;
    if (v12)
    {
      [v16 setObject:v12 forKey:@"responseMessage"];
    }

    if (v10)
    {
      [v17 setObject:v10 forKey:@"sessionId"];
    }

    if (*(a1 + 72) == 1)
    {
      [v17 setObject:@"true" forKey:@"deepLink"];
    }

    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __124__ICMusicSubscriptionCarrierBundlingEligibilityOperation__sendEnrichmentRequestWithURL_preflightResponse_completionHandler___block_invoke_98;
    v32[3] = &unk_1E7BF5DA0;
    v31 = *(a1 + 40);
    v18 = *(&v31 + 1);
    v35 = *(a1 + 64);
    v19 = *(a1 + 32);
    v20 = *(a1 + 56);
    *&v21 = v19;
    *(&v21 + 1) = v20;
    v33 = v31;
    v34 = v21;
    [v31 _finishEnrichmentWithBodyDictionary:v17 completionHandler:v32];

    goto LABEL_16;
  }

  v13 = [v6 domain];
  v14 = *MEMORY[0x1E696A978];
  v15 = [v13 isEqualToString:*MEMORY[0x1E696A978]];

  if (v15)
  {
    v9 = [v6 copy];
    if (!v9)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v22 = [v6 userInfo];
    v23 = [v22 objectForKey:*MEMORY[0x1E696AA08]];

    v24 = [v23 domain];
    v25 = [v24 isEqualToString:v14];

    if (v25)
    {
      v9 = [v23 copy];
    }

    else
    {
      v9 = 0;
    }

    if (!v9)
    {
      goto LABEL_23;
    }
  }

  v26 = [objc_alloc(MEMORY[0x1E695AC08]) initWithURL:*(a1 + 32) statusCode:400 HTTPVersion:@"HTTP/1.1" headerFields:0];
  if (v26)
  {
    v8 = v26;
    goto LABEL_3;
  }

LABEL_23:
  v8 = v6;
  if (!v8)
  {
    v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7601 userInfo:0];
  }

  v27 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    v28 = *(a1 + 40);
    v29 = *(a1 + 48);
    *buf = 138543874;
    v37 = v28;
    v38 = 2114;
    v39 = v29;
    v40 = 2114;
    v41 = v8;
    _os_log_impl(&dword_1B4491000, v27, OS_LOG_TYPE_ERROR, "%{public}@ Carrier bundling eligibility operation failed for %{public}@ because header enrichment failed with error: %{public}@.", buf, 0x20u);
  }

  v30 = *(a1 + 64);
  if (v30)
  {
    (*(v30 + 16))(v30, 0, v8);
  }

LABEL_16:
}

void __124__ICMusicSubscriptionCarrierBundlingEligibilityOperation__sendEnrichmentRequestWithURL_preflightResponse_completionHandler___block_invoke_98(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
LABEL_6:
    v12 = *(a1 + 64);
    if (v12)
    {
      (*(v12 + 16))(v12, 0, v7);
    }

    goto LABEL_15;
  }

  v8 = [v5 error];
  if (v8)
  {
    v7 = v8;
    v9 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 32);
      v11 = *(a1 + 40);
      *buf = 138543874;
      v26 = v10;
      v27 = 2114;
      v28 = v11;
      v29 = 2114;
      v30 = v7;
      _os_log_impl(&dword_1B4491000, v9, OS_LOG_TYPE_ERROR, "%{public}@ Carrier bundling eligibility operation failed for %{public}@ due to error in response body: %{public}@", buf, 0x20u);
    }

    goto LABEL_6;
  }

  v13 = v5;
  if ([v13 needsHeaderEnrichment])
  {
    [v13 delayInterval];
    v15 = v14;
    v16 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = *(a1 + 32);
      *buf = 138543618;
      v26 = v17;
      v27 = 2050;
      v28 = v15;
      _os_log_impl(&dword_1B4491000, v16, OS_LOG_TYPE_INFO, "%{public}@ Performing delayed retry after %{public}f seconds: still needs header enrichment.", buf, 0x16u);
    }

    v18 = dispatch_time(0, (v15 * 1000000000.0));
    v19 = dispatch_get_global_queue(0, 0);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __124__ICMusicSubscriptionCarrierBundlingEligibilityOperation__sendEnrichmentRequestWithURL_preflightResponse_completionHandler___block_invoke_99;
    v21[3] = &unk_1E7BF9E78;
    v21[4] = *(a1 + 32);
    v22 = *(a1 + 48);
    v23 = *(a1 + 56);
    v24 = *(a1 + 64);
    dispatch_after(v18, v19, v21);
  }

  else
  {
    v20 = *(a1 + 64);
    if (v20)
    {
      (*(v20 + 16))(v20, v13, 0);
    }
  }

  v7 = 0;
LABEL_15:
}

ICURLSession *__124__ICMusicSubscriptionCarrierBundlingEligibilityOperation__sendEnrichmentRequestWithURL_preflightResponse_completionHandler___block_invoke()
{
  v0 = [MEMORY[0x1E695AC80] defaultSessionConfiguration];
  [v0 setHTTPShouldSetCookies:1];
  [v0 setHTTPShouldUsePipelining:1];
  [v0 set_CTDataConnectionServiceType:*MEMORY[0x1E6965270]];
  [v0 setAllowsCellularAccess:1];
  v1 = [[ICURLSession alloc] initWithConfiguration:v0];

  return v1;
}

- (id)_newDefaultRequestBodyDictionaryWithResponseCode:(int64_t)a3 error:(id)a4
{
  v6 = a4;
  v7 = [(ICMusicSubscriptionCarrierBundlingEligibilityOperation *)self _newDefaultRequestBodyDictionary];
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", a3];
  [v7 setObject:v8 forKey:@"responseCode"];

  if (v6)
  {
    v9 = [v6 domain];
    if (v9)
    {
      [v7 setObject:v9 forKey:@"error-domain"];
    }

    v10 = [v6 code];
    if (v10)
    {
      v11 = [MEMORY[0x1E696AD98] numberWithInteger:v10];
      [v7 setObject:v11 forKey:@"error-code"];
    }

    v12 = [v6 userInfo];
    v13 = [v12 objectForKey:*MEMORY[0x1E696A578]];
    if (v13)
    {
      [v7 setObject:v13 forKey:@"error-title"];
    }

    v14 = [v12 objectForKey:*MEMORY[0x1E696A588]];
    if (v14)
    {
      [v7 setObject:v14 forKey:@"error-message"];
    }

    v15 = [v12 objectForKey:*MEMORY[0x1E696AA08]];
    if (v15)
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v15];
      [v7 setObject:v16 forKey:@"error-underlying"];
    }
  }

  return v7;
}

- (id)_newDefaultRequestBodyDictionary
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(ICRequestContext *)self->_requestContext deviceInfo];
  v5 = [v4 deviceGUID];

  if (v5)
  {
    [v3 setObject:v5 forKey:@"guid"];
  }

  cellularProviderName = self->_cellularProviderName;
  if (cellularProviderName)
  {
    [v3 setObject:cellularProviderName forKey:@"carrier"];
  }

  mobileSubscriberCountryCode = self->_mobileSubscriberCountryCode;
  if (mobileSubscriberCountryCode)
  {
    [v3 setObject:mobileSubscriberCountryCode forKey:@"MCC"];
  }

  mobileSubscriberNetworkCode = self->_mobileSubscriberNetworkCode;
  if (mobileSubscriberNetworkCode)
  {
    [v3 setObject:mobileSubscriberNetworkCode forKey:@"MNC"];
  }

  IMEI = self->_IMEI;
  if (IMEI)
  {
    [v3 setObject:IMEI forKey:@"IMEI"];
  }

  return v3;
}

- (void)_finishEnrichmentWithBodyDictionary:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self->_requestContext;
  v9 = self->_cellularProviderName;
  v10 = self->_phoneNumber;
  v11 = +[ICURLBagProvider sharedBagProvider];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __112__ICMusicSubscriptionCarrierBundlingEligibilityOperation__finishEnrichmentWithBodyDictionary_completionHandler___block_invoke;
  v17[3] = &unk_1E7BF5D58;
  v17[4] = self;
  v18 = v8;
  v19 = v6;
  v20 = v9;
  v21 = v10;
  v22 = v7;
  v12 = v10;
  v13 = v9;
  v14 = v6;
  v15 = v7;
  v16 = v8;
  [v11 getBagForRequestContext:v16 withCompletionHandler:v17];
}

void __112__ICMusicSubscriptionCarrierBundlingEligibilityOperation__finishEnrichmentWithBodyDictionary_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v48 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v11 = @"fuseHeaderEnrichmentResponse";
    v12 = [v5 urlForBagKey:@"fuseHeaderEnrichmentResponse"];
    if (v12)
    {
      v13 = *(a1 + 48);
      v41 = 0;
      v14 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v13 options:0 error:&v41];
      v15 = v41;
      v16 = v15;
      if (!v14 || v15)
      {
        v17 = os_log_create("com.apple.amp.iTunesCloud", "Default");
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v18 = *(a1 + 32);
          *buf = 138543874;
          v43 = v18;
          v44 = 2114;
          v45 = @"fuseHeaderEnrichmentResponse";
          v46 = 2114;
          v47 = v16;
          _os_log_impl(&dword_1B4491000, v17, OS_LOG_TYPE_ERROR, "%{public}@ Encountered error trying to serialize body data for %{public}@: %{public}@.", buf, 0x20u);
        }
      }

      v35 = v16;
      v19 = [objc_alloc(MEMORY[0x1E695AC18]) initWithURL:v12];
      [v19 setHTTPMethod:@"POST"];
      v34 = v14;
      [v19 setHTTPBody:v14];
      [v19 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
      v20 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = *(a1 + 32);
        *buf = 138543362;
        v43 = v21;
        _os_log_impl(&dword_1B4491000, v20, OS_LOG_TYPE_INFO, "%{public}@ Sending header enrichment response.", buf, 0xCu);
      }

      v22 = [[ICStoreURLRequest alloc] initWithURLRequest:v19 requestContext:*(a1 + 40)];
      [(ICURLRequest *)v22 setMaxRetryCount:0];
      v23 = +[ICURLSessionManager highPrioritySession];
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __112__ICMusicSubscriptionCarrierBundlingEligibilityOperation__finishEnrichmentWithBodyDictionary_completionHandler___block_invoke_21;
      v36[3] = &unk_1E7BF5D30;
      v24 = *(a1 + 40);
      v36[4] = *(a1 + 32);
      v37 = v24;
      v25 = *(a1 + 72);
      v38 = @"fuseHeaderEnrichmentResponse";
      v26 = *(a1 + 56);
      v27 = *(a1 + 64);
      *&v28 = *(a1 + 48);
      *(&v28 + 1) = v25;
      *&v29 = v26;
      *(&v29 + 1) = v27;
      v39 = v29;
      v40 = v28;
      [v23 enqueueDataRequest:v22 withCompletionHandler:v36];

      v30 = v35;
    }

    else
    {
      v31 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v32 = *(a1 + 32);
        v33 = *(a1 + 40);
        *buf = 138543618;
        v43 = v32;
        v44 = 2114;
        v45 = v33;
        _os_log_impl(&dword_1B4491000, v31, OS_LOG_TYPE_ERROR, "%{public}@ Carrier bundling eligibility operation failed for %{public}@ due to missing the key in the bag.", buf, 0x16u);
      }

      if (!*(a1 + 72))
      {
        goto LABEL_20;
      }

      v30 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7201 userInfo:0];
      (*(*(a1 + 72) + 16))();
    }

LABEL_20:
    goto LABEL_21;
  }

  v7 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    *buf = 138543874;
    v43 = v8;
    v44 = 2114;
    v45 = v9;
    v46 = 2114;
    v47 = v6;
    _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_ERROR, "%{public}@ Carrier bundling eligibility operation failed for %{public}@ due to URL bag load failure: %{public}@", buf, 0x20u);
  }

  v10 = *(a1 + 72);
  if (v10)
  {
    (*(v10 + 16))(v10, 0, v6);
  }

LABEL_21:
}

void __112__ICMusicSubscriptionCarrierBundlingEligibilityOperation__finishEnrichmentWithBodyDictionary_completionHandler___block_invoke_21(uint64_t a1, void *a2, void *a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v11 = [v5 parsedBodyDictionary];
    v12 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
    v13 = v12;
    if (v11)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *(a1 + 32);
        v15 = *(a1 + 48);
        *buf = 138543874;
        v31 = v14;
        v32 = 2114;
        v33 = v15;
        v34 = 2114;
        v35 = v11;
        _os_log_impl(&dword_1B4491000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ Got carrier bundling response for %{public}@ with body: %{public}@", buf, 0x20u);
      }

      v16 = [[ICMusicSubscriptionCarrierBundlingEligibilityResponse alloc] initWithEligibilityDictionary:v11 cellularProviderName:*(a1 + 56) phoneNumber:*(a1 + 64)];
      if ([(ICMusicSubscriptionCarrierBundlingEligibilityResponse *)v16 wantsDelayedRetry])
      {
        [(ICMusicSubscriptionCarrierBundlingEligibilityResponse *)v16 delayInterval];
        v18 = dispatch_time(0, (v17 * 1000000000.0));
        v19 = dispatch_get_global_queue(0, 0);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __112__ICMusicSubscriptionCarrierBundlingEligibilityOperation__finishEnrichmentWithBodyDictionary_completionHandler___block_invoke_23;
        block[3] = &unk_1E7BF9E28;
        block[4] = *(a1 + 32);
        v28 = *(a1 + 72);
        v29 = *(a1 + 80);
        dispatch_after(v18, v19, block);
      }

      else
      {
        v22 = [(ICMusicSubscriptionCarrierBundlingEligibilityResponse *)v16 error];
        if (v22)
        {
          v23 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            v24 = *(a1 + 32);
            v25 = *(a1 + 40);
            *buf = 138543874;
            v31 = v24;
            v32 = 2114;
            v33 = v25;
            v34 = 2114;
            v35 = v22;
            _os_log_impl(&dword_1B4491000, v23, OS_LOG_TYPE_ERROR, "%{public}@ Carrier bundling eligibility operation failed for %{public}@ due to error in response body: %{public}@", buf, 0x20u);
          }

          v16 = 0;
        }

        v26 = *(a1 + 80);
        if (v26)
        {
          (*(v26 + 16))(v26, v16, v22);
        }
      }
    }

    else
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v20 = *(a1 + 32);
        v21 = *(a1 + 40);
        *buf = 138543618;
        v31 = v20;
        v32 = 2114;
        v33 = v21;
        _os_log_impl(&dword_1B4491000, v13, OS_LOG_TYPE_ERROR, "%{public}@ Carrier bundling eligibility operation failed for %{public}@ due to invalid response.", buf, 0x16u);
      }

      if (!*(a1 + 80))
      {
        goto LABEL_23;
      }

      v16 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7102 userInfo:0];
      (*(*(a1 + 80) + 16))();
    }

LABEL_23:
    goto LABEL_24;
  }

  v7 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    *buf = 138543874;
    v31 = v8;
    v32 = 2114;
    v33 = v9;
    v34 = 2114;
    v35 = v6;
    _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_ERROR, "%{public}@ Carrier bundling eligibility operation failed for %{public}@ error while sending header enrichment response: %{public}@", buf, 0x20u);
  }

  v10 = *(a1 + 80);
  if (v10)
  {
    (*(v10 + 16))(v10, 0, v6);
  }

LABEL_24:
}

- (void)execute
{
  v4 = +[ICDeviceInfo currentDeviceInfo];
  v5 = [v4 isPhoneNumberAccessRestricted];

  if (v5)
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"ICMusicSubscriptionCarrierBundlingEligibilityOperation.m" lineNumber:47 description:@"Phone number access is restricted."];
  }

  v6 = self->_requestContext;
  v7 = MEMORY[0x1B8C781E0](self->_responseHandler);
  v8 = +[ICTelephonyController sharedController];
  v9 = [v8 providerName];
  cellularProviderName = self->_cellularProviderName;
  self->_cellularProviderName = v9;

  v11 = [v8 mobileSubscriberCountryCode];
  mobileSubscriberCountryCode = self->_mobileSubscriberCountryCode;
  self->_mobileSubscriberCountryCode = v11;

  v13 = [v8 mobileSubscriberNetworkCode];
  mobileSubscriberNetworkCode = self->_mobileSubscriberNetworkCode;
  self->_mobileSubscriberNetworkCode = v13;

  v15 = [v8 phoneNumber];
  phoneNumber = self->_phoneNumber;
  self->_phoneNumber = v15;

  v17 = [v8 IMEI];
  IMEI = self->_IMEI;
  self->_IMEI = v17;

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __65__ICMusicSubscriptionCarrierBundlingEligibilityOperation_execute__block_invoke;
  v22[3] = &unk_1E7BF5D08;
  v22[4] = self;
  v23 = v6;
  v24 = v7;
  v19 = v7;
  v20 = v6;
  [(ICMusicSubscriptionCarrierBundlingEligibilityOperation *)self _sendPreflightRequestWithCompletionHandler:v22];
}

void __65__ICMusicSubscriptionCarrierBundlingEligibilityOperation_execute__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v72 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v60 = 0;
  v61 = &v60;
  v62 = 0x3032000000;
  v63 = __Block_byref_object_copy__16893;
  v64 = __Block_byref_object_dispose__16894;
  v65 = 0;
  v54 = 0;
  v55 = &v54;
  v56 = 0x3032000000;
  v57 = __Block_byref_object_copy__16893;
  v58 = __Block_byref_object_dispose__16894;
  v7 = a3;
  v59 = v7;
  v8 = v7;
  if (!v7)
  {
    v10 = [v6 error];
    v11 = v55[5];
    v55[5] = v10;

    if (!v55[5])
    {
      goto LABEL_9;
    }

    v12 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 32);
      v14 = *(a1 + 40);
      v15 = v55[5];
      *buf = 138543874;
      v67 = v13;
      v68 = 2114;
      v69 = v14;
      v70 = 2114;
      v71 = v15;
      _os_log_impl(&dword_1B4491000, v12, OS_LOG_TYPE_ERROR, "%{public}@ Carrier bundling eligibility operation failed for %{public}@ due to error in response body: %{public}@", buf, 0x20u);
    }

    v8 = v55[5];
    if (!v8)
    {
LABEL_9:
      if (([v6 carrierBundlingStatusType] - 1) < 4)
      {
        objc_storeStrong(v61 + 5, a2);
      }

      v52[0] = MEMORY[0x1E69E9820];
      v52[1] = 3221225472;
      v52[2] = __65__ICMusicSubscriptionCarrierBundlingEligibilityOperation_execute__block_invoke_6;
      v52[3] = &unk_1E7BF5CB8;
      v16 = v6;
      v53 = v16;
      v17 = MEMORY[0x1B8C781E0](v52);
      v47[0] = MEMORY[0x1E69E9820];
      v47[1] = 3221225472;
      v47[2] = __65__ICMusicSubscriptionCarrierBundlingEligibilityOperation_execute__block_invoke_2;
      v47[3] = &unk_1E7BF5CE0;
      v18 = *(a1 + 32);
      v19 = *(a1 + 40);
      v50 = &v54;
      v47[4] = v18;
      v48 = v19;
      v51 = &v60;
      v49 = *(a1 + 48);
      v20 = MEMORY[0x1B8C781E0](v47);
      if ([v16 needsHeaderEnrichment])
      {
        v21 = [v16 headerEnrichmentURL];
        if (v21)
        {
          v43[0] = MEMORY[0x1E69E9820];
          v43[1] = 3221225472;
          v43[2] = __65__ICMusicSubscriptionCarrierBundlingEligibilityOperation_execute__block_invoke_10;
          v43[3] = &unk_1E7BF9E78;
          v43[4] = *(a1 + 32);
          v22 = v21;
          v44 = v22;
          v45 = v16;
          v46 = v20;
          (v17)[2](v17, v43);
        }

        else
        {
          v26 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7601 userInfo:0];
          v27 = v55[5];
          v55[5] = v26;

          v28 = os_log_create("com.apple.amp.iTunesCloud", "Default");
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            v29 = *(a1 + 32);
            v30 = *(a1 + 40);
            v31 = v55[5];
            *buf = 138543874;
            v67 = v29;
            v68 = 2114;
            v69 = v30;
            v70 = 2114;
            v71 = v31;
            _os_log_impl(&dword_1B4491000, v28, OS_LOG_TYPE_ERROR, "%{public}@ Carrier bundling eligibility operation failed for %{public}@ due to missing header enrichment URL in response body: %{public}@", buf, 0x20u);
          }

          v20[2](v20, 0, v55[5]);
          v22 = 0;
        }
      }

      else
      {
        if (![v16 needsSilentSMS])
        {
          v25 = *(a1 + 48);
          if (v25)
          {
            (*(v25 + 16))(v25, v61[5], 0);
          }

          [*(a1 + 32) finishWithError:0];
          goto LABEL_29;
        }

        v22 = [v16 silentSMSMessage];
        v23 = [v16 silentSMSNumber];
        v24 = v23;
        if (v22 && v23)
        {
          v38[0] = MEMORY[0x1E69E9820];
          v38[1] = 3221225472;
          v38[2] = __65__ICMusicSubscriptionCarrierBundlingEligibilityOperation_execute__block_invoke_12;
          v38[3] = &unk_1E7BF70D8;
          v38[4] = *(a1 + 32);
          v39 = v22;
          v40 = v24;
          v41 = v16;
          v42 = v20;
          (v17)[2](v17, v38);
        }

        else
        {
          v32 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7601 userInfo:0];
          v33 = v55[5];
          v55[5] = v32;

          v34 = os_log_create("com.apple.amp.iTunesCloud", "Default");
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            v35 = *(a1 + 32);
            v36 = *(a1 + 40);
            v37 = v55[5];
            *buf = 138543874;
            v67 = v35;
            v68 = 2114;
            v69 = v36;
            v70 = 2114;
            v71 = v37;
            _os_log_impl(&dword_1B4491000, v34, OS_LOG_TYPE_ERROR, "%{public}@ Carrier bundling eligibility operation failed for %{public}@ due to missing silent SMS message or number in response body: %{public}@", buf, 0x20u);
          }

          v20[2](v20, 0, v55[5]);
        }
      }

LABEL_29:
      goto LABEL_30;
    }
  }

  v9 = *(a1 + 48);
  if (v9)
  {
    (*(v9 + 16))(v9, 0, v8);
    v8 = v55[5];
  }

  [*(a1 + 32) finishWithError:v8];
LABEL_30:
  _Block_object_dispose(&v54, 8);

  _Block_object_dispose(&v60, 8);
}

void __65__ICMusicSubscriptionCarrierBundlingEligibilityOperation_execute__block_invoke_6(uint64_t a1, void *a2)
{
  block = a2;
  [*(a1 + 32) delayInterval];
  if (v3 <= 0.00000011920929)
  {
    block[2]();
  }

  else
  {
    v4 = dispatch_time(0, (v3 * 1000000000.0));
    v5 = dispatch_get_global_queue(0, 0);
    dispatch_after(v4, v5, block);
  }
}

void __65__ICMusicSubscriptionCarrierBundlingEligibilityOperation_execute__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
  v8 = *(a1 + 56);
  if (!*(*(v8 + 8) + 40))
  {
    v9 = [v6 error];
    v10 = *(*(a1 + 56) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    if (!*(*(*(a1 + 56) + 8) + 40))
    {
      goto LABEL_6;
    }

    v12 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 32);
      v14 = *(a1 + 40);
      v15 = *(*(*(a1 + 56) + 8) + 40);
      v17 = 138543874;
      v18 = v13;
      v19 = 2114;
      v20 = v14;
      v21 = 2114;
      v22 = v15;
      _os_log_impl(&dword_1B4491000, v12, OS_LOG_TYPE_ERROR, "%{public}@ Carrier bundling eligibility operation failed for %{public}@ due to error in response body: %{public}@", &v17, 0x20u);
    }

    v8 = *(a1 + 56);
    if (!*(*(v8 + 8) + 40))
    {
LABEL_6:
      objc_storeStrong((*(*(a1 + 64) + 8) + 40), a2);
      v8 = *(a1 + 56);
    }
  }

  v16 = *(a1 + 48);
  if (v16)
  {
    (*(v16 + 16))(v16, *(*(*(a1 + 64) + 8) + 40), *(*(v8 + 8) + 40));
    v8 = *(a1 + 56);
  }

  [*(a1 + 32) finishWithError:*(*(v8 + 8) + 40)];
}

- (ICMusicSubscriptionCarrierBundlingEligibilityOperation)initWithRequestContext:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ICMusicSubscriptionCarrierBundlingEligibilityOperation;
  v6 = [(ICAsyncOperation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_requestContext, a3);
  }

  return v7;
}

@end