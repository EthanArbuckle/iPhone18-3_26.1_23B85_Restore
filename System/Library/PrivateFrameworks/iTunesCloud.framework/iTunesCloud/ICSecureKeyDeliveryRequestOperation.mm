@interface ICSecureKeyDeliveryRequestOperation
- (id)_createDefaultProtocolRequestBodyUsingPlaybackContextData:(id)data;
- (id)_createPodcastLicenseProtocolRequestBodyUsingPlaybackContextData:(id)data;
- (id)_createSimplifiedProtocolRequestBodyUsingPlaybackContextData:(id)data;
- (void)_createServerPlaybackContextWithCompletion:(id)completion;
- (void)execute;
@end

@implementation ICSecureKeyDeliveryRequestOperation

- (void)_createServerPlaybackContextWithCompletion:(id)completion
{
  completionCopy = completion;
  serverPlaybackContextData = [(ICSecureKeyDeliveryRequest *)self->_request serverPlaybackContextData];

  if (serverPlaybackContextData)
  {
    serverPlaybackContextData2 = [(ICSecureKeyDeliveryRequest *)self->_request serverPlaybackContextData];
    completionCopy[2](completionCopy, serverPlaybackContextData2, 0);
  }

  else
  {
    serverPlaybackContextData2 = [(ICSecureKeyDeliveryRequest *)self->_request requestContext];
    [(ICSecureKeyDeliveryRequest *)self->_request isITunesStoreRequest];
    v7 = objc_opt_class();
    certificateURL = [(ICSecureKeyDeliveryRequest *)self->_request certificateURL];
    v9 = [objc_alloc(MEMORY[0x1E695AC18]) initWithURL:certificateURL];
    [v9 setHTTPMethod:@"GET"];
    v10 = [[v7 alloc] initWithURLRequest:v9 requestContext:serverPlaybackContextData2];
    [v10 setRequestName:@"SKDCertificate"];
    v11 = +[ICCertificateCache shared];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __82__ICSecureKeyDeliveryRequestOperation__createServerPlaybackContextWithCompletion___block_invoke;
    v12[3] = &unk_1E7BF9FB0;
    v12[4] = self;
    v13 = completionCopy;
    [v11 getDataForCertificateRequest:v10 withCompletionHandler:v12];
  }
}

void __82__ICSecureKeyDeliveryRequestOperation__createServerPlaybackContextWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [*(*(a1 + 32) + 288) contentKeyRequest];
    v8 = [*(*(a1 + 32) + 288) resourceLoadingRequest];
    v9 = v8;
    if (v7)
    {
      v10 = [v7 identifier];
      v11 = [v10 dataUsingEncoding:4];

      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __82__ICSecureKeyDeliveryRequestOperation__createServerPlaybackContextWithCompletion___block_invoke_116;
      v29[3] = &unk_1E7BF9FB0;
      v12 = *(a1 + 40);
      v29[4] = *(a1 + 32);
      v30 = v12;
      [v7 makeStreamingContentKeyRequestDataForApp:v5 contentIdentifier:v11 options:MEMORY[0x1E695E0F8] completionHandler:v29];
      v13 = v30;
    }

    else
    {
      if (!v8)
      {
        v24 = os_log_create("com.apple.amp.iTunesCloud", "Default");
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v25 = *(a1 + 32);
          *buf = 138543362;
          v32 = v25;
          _os_log_impl(&dword_1B4491000, v24, OS_LOG_TYPE_ERROR, "[%{public}@]: [SKD] - No contentKeyRequest or resourceLoadingRequest provided", buf, 0xCu);
        }

        v26 = *(a1 + 40);
        v11 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"ICError" code:-7101 debugDescription:@"No contentKeyRequest or resourceLoadingRequest provided"];
        (*(v26 + 16))(v26, 0, v11);
        goto LABEL_18;
      }

      v16 = [v8 request];
      v11 = [v16 URL];

      v27 = [v11 host];
      v17 = [v27 dataUsingEncoding:4];
      v28 = 0;
      v18 = [v9 streamingContentKeyRequestDataForApp:v5 contentIdentifier:v17 options:0 error:&v28];
      v19 = v28;
      if (v19)
      {
        v20 = v19;
        v21 = os_log_create("com.apple.amp.iTunesCloud", "Default");
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v22 = *(a1 + 32);
          *buf = 138543618;
          v32 = v22;
          v33 = 2114;
          v34 = v20;
          _os_log_impl(&dword_1B4491000, v21, OS_LOG_TYPE_ERROR, "[%{public}@]: [SKD] - Failed to create content key request data. err=%{public}@", buf, 0x16u);
        }

        v23 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"ICError" code:0 underlyingError:v20 debugDescription:@"Failed to create content key request data"];
      }

      else
      {
        v23 = 0;
      }

      (*(*(a1 + 40) + 16))();

      v13 = v27;
    }

LABEL_18:
    goto LABEL_19;
  }

  v14 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v15 = *(a1 + 32);
    *buf = 138543618;
    v32 = v15;
    v33 = 2114;
    v34 = v6;
    _os_log_impl(&dword_1B4491000, v14, OS_LOG_TYPE_ERROR, "[%{public}@]: [SKD] - Failed to load certificate data with error: %{public}@", buf, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
LABEL_19:
}

void __82__ICSecureKeyDeliveryRequestOperation__createServerPlaybackContextWithCompletion___block_invoke_116(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v10 = 138543618;
      v11 = v8;
      v12 = 2114;
      v13 = v6;
      _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_ERROR, "[%{public}@]: [SKD] - Failed to create content key request data. err=%{public}@", &v10, 0x16u);
    }

    v9 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"ICError" code:0 underlyingError:v6 debugDescription:@"Failed to create content key request data"];
  }

  else
  {
    v9 = 0;
  }

  (*(*(a1 + 40) + 16))();
}

- (id)_createPodcastLicenseProtocolRequestBodyUsingPlaybackContextData:(id)data
{
  v15[2] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  request = [(ICSecureKeyDeliveryRequestOperation *)self request];
  v6 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:8];
  if ([dataCopy length])
  {
    v7 = [dataCopy base64EncodedStringWithOptions:0];
    if ([v7 length])
    {
      [v6 setObject:v7 forKey:@"spc"];
    }
  }

  contentURI = [request contentURI];
  if (contentURI)
  {
    [v6 setObject:contentURI forKey:@"uri"];
  }

  adamID = [request adamID];
  if (adamID)
  {
    [v6 setObject:adamID forKey:@"adam-id"];
  }

  [v6 setObject:&unk_1F2C923B0 forKey:@"id"];
  v14[1] = @"license-requests";
  v15[0] = &unk_1F2C923B0;
  v13 = v6;
  v14[0] = @"version";
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:1];
  v15[1] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];

  return v11;
}

- (id)_createSimplifiedProtocolRequestBodyUsingPlaybackContextData:(id)data
{
  dataCopy = data;
  request = [(ICSecureKeyDeliveryRequestOperation *)self request];
  requestContext = [request requestContext];
  v7 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:8];
  if ([dataCopy length])
  {
    v8 = [dataCopy base64EncodedStringWithOptions:0];
    if ([v8 length])
    {
      [v7 setObject:v8 forKey:@"spc"];
    }
  }

  if ([request shouldIncludeDeviceGUID])
  {
    deviceInfo = [requestContext deviceInfo];
    deviceGUID = [deviceInfo deviceGUID];

    if (deviceGUID)
    {
      [v7 setObject:deviceGUID forKey:@"guid"];
    }
  }

  contentURI = [request contentURI];
  if (contentURI)
  {
    [v7 setObject:contentURI forKey:@"keyUri"];
  }

  adamID = [request adamID];
  if (adamID)
  {
    [v7 setObject:adamID forKey:@"adamId"];
  }

  if ([request isOfflineDownload])
  {
    [v7 setObject:MEMORY[0x1E695E118] forKey:@"offline"];
  }

  return v7;
}

- (id)_createDefaultProtocolRequestBodyUsingPlaybackContextData:(id)data
{
  v23[1] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  request = [(ICSecureKeyDeliveryRequestOperation *)self request];
  requestContext = [request requestContext];
  v7 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:8];
  if ([dataCopy length])
  {
    v8 = [dataCopy base64EncodedStringWithOptions:0];
    if ([v8 length])
    {
      [v7 setObject:v8 forKey:@"spc"];
    }
  }

  if ([request shouldIncludeDeviceGUID])
  {
    deviceInfo = [requestContext deviceInfo];
    deviceGUID = [deviceInfo deviceGUID];

    if (deviceGUID)
    {
      [v7 setObject:deviceGUID forKey:@"guid"];
    }
  }

  [v7 setObject:&unk_1F2C92398 forKey:@"id"];
  contentURI = [request contentURI];
  if (contentURI)
  {
    [v7 setObject:contentURI forKey:@"uri"];
  }

  rentalID = [request rentalID];
  if (rentalID)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithLongLong:rentalID];
    [v7 setObject:v13 forKey:@"rental-id"];
  }

  if ([request skippedRentalCheckout])
  {
    [v7 setObject:MEMORY[0x1E695E118] forKey:@"skipped-rental-checkout"];
  }

  v14 = [request leaseActionType] - 1;
  if (v14 <= 2)
  {
    [v7 setObject:off_1E7BF9FD0[v14] forKey:@"lease-action"];
  }

  v22 = @"fairplay-streaming-request";
  v20[1] = @"streaming-keys";
  v21[0] = &unk_1F2C923B0;
  v19 = v7;
  v20[0] = @"version";
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:1];
  v21[1] = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:2];
  v23[0] = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];

  return v17;
}

- (void)execute
{
  v35 = *MEMORY[0x1E69E9840];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __46__ICSecureKeyDeliveryRequestOperation_execute__block_invoke;
  v28[3] = &unk_1E7BF9F20;
  v28[4] = self;
  v3 = MEMORY[0x1B8C781E0](v28, a2);
  request = [(ICSecureKeyDeliveryRequestOperation *)self request];
  v5 = os_log_create("com.apple.amp.iTunesCloud", "Default_Oversize");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy5 = self;
    v31 = 2114;
    v32 = request;
    _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ [SKD] - Executing request %{public}@", buf, 0x16u);
  }

  certificateURL = [request certificateURL];
  keyServerURL = [request keyServerURL];
  v8 = keyServerURL;
  if (certificateURL && keyServerURL)
  {
    resourceLoadingRequest = [request resourceLoadingRequest];
    if (resourceLoadingRequest || ([request contentKeyRequest], (resourceLoadingRequest = objc_claimAutoreleasedReturnValue()) != 0))
    {

      goto LABEL_8;
    }

    serverPlaybackContextData = [request serverPlaybackContextData];

    if (serverPlaybackContextData)
    {
LABEL_8:
      isITunesStoreRequest = [request isITunesStoreRequest];
      requestContext = [request requestContext];
      if (requestContext)
      {
        if (!isITunesStoreRequest || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v12 = +[ICURLSessionManager highPrioritySession];
          v21[0] = MEMORY[0x1E69E9820];
          v21[1] = 3221225472;
          v21[2] = __46__ICSecureKeyDeliveryRequestOperation_execute__block_invoke_7;
          v21[3] = &unk_1E7BF9F88;
          v21[4] = self;
          v26 = v3;
          v22 = request;
          v23 = v8;
          v27 = isITunesStoreRequest;
          v24 = requestContext;
          v25 = v12;
          v13 = v12;
          [(ICSecureKeyDeliveryRequestOperation *)self _createServerPlaybackContextWithCompletion:v21];

LABEL_22:
          goto LABEL_23;
        }

        v17 = os_log_create("com.apple.amp.iTunesCloud", "Default");
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          selfCopy5 = self;
          v18 = "[%{public}@]: [SKD] - Requesting iTunes Store content with a non-store request context.";
          goto LABEL_20;
        }
      }

      else
      {
        v17 = os_log_create("com.apple.amp.iTunesCloud", "Default");
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          selfCopy5 = self;
          v18 = "[%{public}@]: [SKD] - Missing request context.";
LABEL_20:
          _os_log_impl(&dword_1B4491000, v17, OS_LOG_TYPE_DEFAULT, v18, buf, 0xCu);
        }
      }

      v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7101 userInfo:0];
      (v3)[2](v3, 0, v13);
      goto LABEL_22;
    }

    v20 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy5 = self;
      _os_log_impl(&dword_1B4491000, v20, OS_LOG_TYPE_DEFAULT, "[%{public}@]: [SKD] - Missing content key request data", buf, 0xCu);
    }

    v15 = MEMORY[0x1E696ABC0];
    v16 = @"Missing content key request data";
  }

  else
  {
    v14 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      selfCopy5 = self;
      v31 = 2114;
      v32 = certificateURL;
      v33 = 2114;
      v34 = v8;
      _os_log_impl(&dword_1B4491000, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@]: [SKD] - Missing certificate URL: %{public}@ or key server URL: %{public}@", buf, 0x20u);
    }

    v15 = MEMORY[0x1E696ABC0];
    v16 = @"Missing certificate URL or key server URL";
  }

  requestContext = [v15 msv_errorWithDomain:@"ICError" code:-7101 debugDescription:v16];
  (v3)[2](v3, 0, requestContext);
LABEL_23:
}

void __46__ICSecureKeyDeliveryRequestOperation_execute__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v11 = 138543618;
    v12 = v8;
    v13 = 2114;
    v14 = v6;
    _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ [SKD] - Finished with error %{public}@", &v11, 0x16u);
  }

  v9 = *(a1 + 32);
  v10 = v9[37];
  if (v10)
  {
    (*(v10 + 16))(v9[37], v5, v6);
    v9 = *(a1 + 32);
  }

  [v9 finishWithError:v6];
}

void __46__ICSecureKeyDeliveryRequestOperation_execute__block_invoke_7(uint64_t a1, void *a2, void *a3)
{
  v52 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [*(a1 + 40) requestProtocolType];
    v8 = *(a1 + 32);
    if (v7 == 2)
    {
      v9 = [v8 _createPodcastLicenseProtocolRequestBodyUsingPlaybackContextData:v5];
    }

    else
    {
      if (v7 == 1)
      {
        [v8 _createSimplifiedProtocolRequestBodyUsingPlaybackContextData:v5];
      }

      else
      {
        [v8 _createDefaultProtocolRequestBodyUsingPlaybackContextData:v5];
      }
      v9 = ;
    }

    v13 = v9;
    v47 = 0;
    v14 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v9 options:0 error:&v47];
    v15 = v47;
    v16 = v15;
    if (!v14 || v15)
    {
      v32 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v33 = *(a1 + 32);
        *buf = 138543618;
        v49 = v33;
        v50 = 2114;
        v51 = v16;
        _os_log_impl(&dword_1B4491000, v32, OS_LOG_TYPE_ERROR, "[%{public}@]: [SKD] - Failed to serialize key server request data with error: %{public}@", buf, 0x16u);
      }

      v34 = *(a1 + 72);
      v17 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"ICError" code:-7101 underlyingError:v16 debugDescription:@"Failed to serialize key server request data"];
      (*(v34 + 16))(v34, 0, v17);
    }

    else
    {
      v42 = v6;
      v17 = [objc_alloc(MEMORY[0x1E695AC18]) initWithURL:*(a1 + 48)];
      [v17 setHTTPBody:v14];
      [v17 setHTTPMethod:@"POST"];
      [v17 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
      if ([*(a1 + 40) requestProtocolType] == 2 && objc_msgSend(*(a1 + 40), "leaseActionType") == 3)
      {
        v18 = [*(a1 + 40) accountDSID];

        if (v18)
        {
          v19 = [*(a1 + 40) accountDSID];
          v20 = [v19 stringValue];
          [v17 setValue:v20 forHTTPHeaderField:@"X-Secure-Invalidation-Dsid"];
        }
      }

      v39 = [objc_alloc(objc_opt_class()) initWithURLRequest:v17 requestContext:*(a1 + 56)];
      v21 = [*(a1 + 32) request];
      v22 = [v21 contentKeyRequest];
      v23 = [v22 originatingRecipient];

      objc_opt_class();
      v40 = v14;
      v41 = v13;
      v38 = v5;
      if (objc_opt_isKindOfClass())
      {
        v24 = [v23 loggingIdentifier];

        v23 = v24;
      }

      v25 = MEMORY[0x1E696AEC0];
      v26 = [*(a1 + 32) request];
      v27 = [v26 contentKeyRequest];
      v28 = [v27 contentKeySpecifier];
      v29 = [v28 identifier];
      v30 = [*(a1 + 32) request];
      v31 = [v30 isOfflineDownload];
      if (v23)
      {
        [v25 stringWithFormat:@"SKD key:%@ persistent:%d recipient:%@", v29, v31, v23];
      }

      else
      {
        [v25 stringWithFormat:@"SKD key:%@ persistent:%d", v29, v31, v37];
      }
      v35 = ;
      [v39 setRequestName:v35];

      v43[0] = MEMORY[0x1E69E9820];
      v43[1] = 3221225472;
      v43[2] = __46__ICSecureKeyDeliveryRequestOperation_execute__block_invoke_29;
      v43[3] = &unk_1E7BF9F60;
      v43[4] = *(a1 + 32);
      v36 = *(a1 + 64);
      v46 = *(a1 + 72);
      v44 = *(a1 + 40);
      v5 = v38;
      v45 = v38;
      [v36 enqueueDataRequest:v39 withCompletionHandler:v43];

      v13 = v41;
      v6 = v42;
      v16 = 0;
      v14 = v40;
    }
  }

  else
  {
    v10 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 32);
      *buf = 138543618;
      v49 = v11;
      v50 = 2114;
      v51 = v6;
      _os_log_impl(&dword_1B4491000, v10, OS_LOG_TYPE_ERROR, "[%{public}@]: [SKD] - Failed to generate server playback context data with error: %{public}@", buf, 0x16u);
    }

    v12 = *(a1 + 72);
    v13 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"ICError" code:-7101 underlyingError:v6 debugDescription:@"Failed to generate server playback context data"];
    (*(v12 + 16))(v12, 0, v13);
  }
}

void __46__ICSecureKeyDeliveryRequestOperation_execute__block_invoke_29(uint64_t a1, void *a2, void *a3)
{
  v46 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [a2 parsedBodyDictionary];
  if ([v6 count])
  {
    v7 = [*(a1 + 40) requestProtocolType];
    if (v7 == 2)
    {
      v16 = [v6 ic_arrayValueForKey:@"license-responses"];
      v17 = v16;
      if (v16)
      {
        v8 = [v16 objectAtIndexedSubscript:0];
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      if (v7 == 1)
      {
        v8 = v6;
        if (!v8)
        {
LABEL_5:
          v9 = os_log_create("com.apple.amp.iTunesCloud", "Default_Oversize");
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            v10 = *(a1 + 32);
            *buf = 138543618;
            v43 = v10;
            v44 = 2114;
            v45 = 0;
            _os_log_impl(&dword_1B4491000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@]: [SKD] - Missing key dictionary in response: %{public}@", buf, 0x16u);
          }

          v11 = *(a1 + 56);
          v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7102 userInfo:0];
          (*(v11 + 16))(v11, 0, v12);
          goto LABEL_38;
        }

LABEL_28:
        v12 = [[ICSecureKeyDeliveryResponse alloc] initWithResponseDictionary:v8 serverPlaybackContextData:*(a1 + 48)];
        if ([(ICSecureKeyDeliveryResponse *)v12 status])
        {
          v23 = os_log_create("com.apple.amp.iTunesCloud", "Default_Oversize");
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            v24 = *(a1 + 32);
            *buf = 138543618;
            v43 = v24;
            v44 = 2114;
            v45 = v8;
            _os_log_impl(&dword_1B4491000, v23, OS_LOG_TYPE_ERROR, "[%{public}@]: [SKD] - Received non-zero status in response: %{public}@", buf, 0x16u);
          }

          v25 = *(a1 + 56);
          v26 = MEMORY[0x1E696ABC0];
          v27 = [(ICSecureKeyDeliveryResponse *)v12 status];
          v28 = @"ICKeyServerError";
          v29 = @"Key server returned non-zero status in response";
          v30 = v26;
        }

        else
        {
          if ([*(a1 + 40) leaseActionType] == 3 || (-[ICSecureKeyDeliveryResponse contentKeyContextData](v12, "contentKeyContextData"), v32 = objc_claimAutoreleasedReturnValue(), v32, v32))
          {
            v33 = os_log_create("com.apple.amp.iTunesCloud", "Default");
            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
            {
              v34 = *(a1 + 32);
              *buf = 138543362;
              v43 = v34;
              _os_log_impl(&dword_1B4491000, v33, OS_LOG_TYPE_DEFAULT, "[%{public}@]: [SKD] - Loaded successfully.", buf, 0xCu);
            }

            (*(*(a1 + 56) + 16))(*(a1 + 56), v12, 0);
            goto LABEL_38;
          }

          v35 = os_log_create("com.apple.amp.iTunesCloud", "Default_Oversize");
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            v36 = *(a1 + 32);
            *buf = 138543618;
            v43 = v36;
            v44 = 2114;
            v45 = v8;
            _os_log_impl(&dword_1B4491000, v35, OS_LOG_TYPE_ERROR, "[%{public}@]: [SKD] - Missing content key context data in response: %{public}@", buf, 0x16u);
          }

          v25 = *(a1 + 56);
          v30 = MEMORY[0x1E696ABC0];
          v28 = @"ICError";
          v29 = @"Missing content key context data in response";
          v27 = -7102;
        }

        v31 = [v30 msv_errorWithDomain:v28 code:v27 debugDescription:{v29, v37}];
        (*(v25 + 16))(v25, 0, v31);

LABEL_38:
        goto LABEL_39;
      }

      v18 = [v6 ic_dictionaryValueForKey:@"fairplay-streaming-response"];
      v17 = v18;
      if (v18)
      {
        v18 = [v18 ic_arrayValueForKey:@"streaming-keys"];
      }

      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v19 = v18;
      v8 = [v19 countByEnumeratingWithState:&v37 objects:v41 count:16];
      if (v8)
      {
        v20 = *v38;
        while (2)
        {
          for (i = 0; i != v8; i = i + 1)
          {
            if (*v38 != v20)
            {
              objc_enumerationMutation(v19);
            }

            v22 = *(*(&v37 + 1) + 8 * i);
            if (_NSIsNSDictionary())
            {
              v8 = v22;
              goto LABEL_25;
            }
          }

          v8 = [v19 countByEnumeratingWithState:&v37 objects:v41 count:16];
          if (v8)
          {
            continue;
          }

          break;
        }
      }

LABEL_25:
    }

    if (!v8)
    {
      goto LABEL_5;
    }

    goto LABEL_28;
  }

  v13 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v14 = *(a1 + 32);
    *buf = 138543618;
    v43 = v14;
    v44 = 2114;
    v45 = v5;
    _os_log_impl(&dword_1B4491000, v13, OS_LOG_TYPE_ERROR, "[%{public}@]: [SKD] - Key server request returned error: %{public}@.", buf, 0x16u);
  }

  v15 = *(a1 + 56);
  v8 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"ICError" code:-7102 underlyingError:v5 debugDescription:@"Key server request returned error"];
  (*(v15 + 16))(v15, 0, v8);
LABEL_39:
}

@end