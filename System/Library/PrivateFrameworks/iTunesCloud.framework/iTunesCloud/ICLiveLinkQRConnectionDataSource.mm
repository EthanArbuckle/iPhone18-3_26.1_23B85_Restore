@interface ICLiveLinkQRConnectionDataSource
+ (id)dataSourceForExistingSharedListeningSession:(id)session identity:(id)identity;
+ (id)dataSourceForNewSharedListeningSessionWithIdentity:(id)identity;
- (ICLiveLinkQRConnectionDataSource)initWithSharedListeningSessionIdentifier:(id)identifier identity:(id)identity;
- (ICSharedListeningConnectionReport)report;
- (IDSAccount)account;
- (id)sessionURLForBag:(id)bag error:(id *)error;
- (id)trustHandler;
- (void)_beginPseudonymAutoRenewal;
- (void)_joinSharedListeningSessionWithCompletion:(id)completion;
- (void)_provisionUserPseudonymWithCompletion:(id)completion;
- (void)_renewUserPseudonym;
- (void)_revokeUserPseudonymWithCompletion:(id)completion;
- (void)dealloc;
- (void)populateWithCompletion:(id)completion;
@end

@implementation ICLiveLinkQRConnectionDataSource

- (ICSharedListeningConnectionReport)report
{
  WeakRetained = objc_loadWeakRetained(&self->_report);

  return WeakRetained;
}

- (id)trustHandler
{
  objc_initWeak(&location, self);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __48__ICLiveLinkQRConnectionDataSource_trustHandler__block_invoke;
  v4[3] = &unk_1E7BF84F8;
  objc_copyWeak(&v5, &location);
  v2 = MEMORY[0x1B8C781E0](v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);

  return v2;
}

void __48__ICLiveLinkQRConnectionDataSource_trustHandler__block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v31 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (!MSVDeviceOSIsInternalInstall())
  {
    v16 = 0;
    v18 = @"music-colistening.itunes.apple.com";
LABEL_14:
    if ([(__CFString *)v16 isEqualToString:@"QA2"])
    {
      v10[2](v10, 1, 0);
    }

    else
    {
      AppleSSLPinned = SecPolicyCreateAppleSSLPinned();
      if (AppleSSLPinned)
      {
        v20 = AppleSSLPinned;
        v21 = sec_trust_copy_ref(v8);
        SecTrustSetPolicies(v21, v20);
        CFRelease(v20);
        result[0] = MEMORY[0x1E69E9820];
        result[1] = 3221225472;
        result[2] = __48__ICLiveLinkQRConnectionDataSource_trustHandler__block_invoke_236;
        result[3] = &unk_1E7BF84D0;
        v26 = v10;
        SecTrustEvaluateAsyncWithError(v21, v9, result);
      }

      else
      {
        v22 = os_log_create("com.apple.amp.iTunesCloud", "QuickRelay");
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          *buf = 134217984;
          v28 = WeakRetained;
          _os_log_impl(&dword_1B4491000, v22, OS_LOG_TYPE_ERROR, "[ICQRConnectionLLDS] <%p> Failed to create pinning policy.", buf, 0xCu);
        }

        v10[2](v10, 0, 0);
      }
    }

    goto LABEL_30;
  }

  v12 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.mobileipod"];
  v13 = [v12 stringForKey:@"PotluckEnvironment"];
  v14 = v13;
  v15 = @"Default";
  if (v13)
  {
    v15 = v13;
  }

  v16 = v15;

  v17 = os_log_create("com.apple.amp.iTunesCloud", "QuickRelay");
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218243;
    v28 = WeakRetained;
    v29 = 2113;
    v30 = v16;
    _os_log_impl(&dword_1B4491000, v17, OS_LOG_TYPE_DEFAULT, "[ICQRConnectionLLDS] <%p> Selected environment %{private}@.", buf, 0x16u);
  }

  if (([(__CFString *)v16 isEqualToString:@"Default"]& 1) != 0 || ([(__CFString *)v16 isEqualToString:@"Production"]& 1) != 0 || ([(__CFString *)v16 isEqualToString:@"Carry"]& 1) != 0 || ([(__CFString *)v16 isEqualToString:@"QA2"]& 1) != 0)
  {
    v18 = @"music-colistening.itunes.apple.com";
  }

  else if (([(__CFString *)v16 isEqualToString:@"Sandbox"]& 1) != 0)
  {
    v18 = @"music-colistening-sandbox.itunes.apple.com";
  }

  else
  {
    if (![(__CFString *)v16 isEqualToString:@"Custom"])
    {
      v18 = 0;
      goto LABEL_27;
    }

    v18 = [v12 stringForKey:@"PotluckCustomHostName"];
    if (!v18)
    {
      goto LABEL_27;
    }
  }

  if ([(__CFString *)v18 length])
  {

    goto LABEL_14;
  }

LABEL_27:
  v23 = os_log_create("com.apple.amp.iTunesCloud", "QuickRelay");
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    v28 = WeakRetained;
    _os_log_impl(&dword_1B4491000, v23, OS_LOG_TYPE_ERROR, "[ICQRConnectionLLDS] <%p> Cannot determine environment.", buf, 0xCu);
  }

  v24 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:*MEMORY[0x1E69B1378] code:300 debugDescription:@"Cannot determine environment."];
  (v10)[2](v10, 0, v24);

LABEL_30:
}

- (IDSAccount)account
{
  v17 = *MEMORY[0x1E69E9840];
  p_account = &self->_account;
  account = self->_account;
  if (!account)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    service = [(ICLiveLinkQRConnectionDataSource *)self service];
    accounts = [service accounts];

    v6 = [accounts countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(accounts);
          }

          v10 = *(*(&v12 + 1) + 8 * i);
          if ([v10 accountType] == 1 && objc_msgSend(v10, "isActive"))
          {
            objc_storeStrong(p_account, v10);
            goto LABEL_13;
          }
        }

        v7 = [accounts countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:

    account = *p_account;
  }

  return account;
}

- (id)sessionURLForBag:(id)bag error:(id *)error
{
  v27 = *MEMORY[0x1E69E9840];
  bagCopy = bag;
  v7 = [bagCopy dictionaryForBagKey:@"ampMusicAPIDomains"];
  if ((_NSIsNSDictionary() & 1) == 0)
  {
    v17 = os_log_create("com.apple.amp.iTunesCloud", "QuickRelay");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      selfCopy3 = self;
      _os_log_impl(&dword_1B4491000, v17, OS_LOG_TYPE_ERROR, "[ICQRConnectionLLDS] <%p> Missing music API domains.", buf, 0xCu);
    }

    if (error)
    {
      v18 = MEMORY[0x1E696ABC0];
      v19 = *MEMORY[0x1E69B1378];
      v20 = @"Missing music API domains.";
LABEL_11:
      [v18 msv_errorWithDomain:v19 code:102 debugDescription:v20];
      *error = v16 = 0;
      goto LABEL_24;
    }

LABEL_21:
    v16 = 0;
    goto LABEL_24;
  }

  v8 = [v7 objectForKeyedSubscript:@"sharedListening"];
  if (!v8)
  {
    v8 = [v7 objectForKeyedSubscript:@"default"];
    if (!v8)
    {
      v23 = os_log_create("com.apple.amp.iTunesCloud", "QuickRelay");
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        selfCopy3 = self;
        _os_log_impl(&dword_1B4491000, v23, OS_LOG_TYPE_ERROR, "[ICQRConnectionLLDS] <%p> Missing default music API domain.", buf, 0xCu);
      }

      if (error)
      {
        v18 = MEMORY[0x1E696ABC0];
        v19 = *MEMORY[0x1E69B1378];
        v20 = @"Missing default music API domain.";
        goto LABEL_11;
      }

      goto LABEL_21;
    }
  }

  v9 = v8;
  v10 = [bagCopy stringForBagKey:@"countryCode"];
  if (v10)
  {
    sharedListeningSessionIdentifier = [(ICLiveLinkQRConnectionDataSource *)self sharedListeningSessionIdentifier];

    v12 = MEMORY[0x1E695DFF8];
    v13 = MEMORY[0x1E696AEC0];
    if (sharedListeningSessionIdentifier)
    {
      sharedListeningSessionIdentifier2 = [(ICLiveLinkQRConnectionDataSource *)self sharedListeningSessionIdentifier];
      v15 = [v13 stringWithFormat:@"https://%@/v1/shared-media/%@/join/media-sessions/%@", v9, v10, sharedListeningSessionIdentifier2];
      v16 = [v12 URLWithString:v15];
    }

    else
    {
      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"https://%@/v1/shared-media/%@/create/media-sessions", v9, v10];
      v16 = [v12 URLWithString:v22];
    }
  }

  else
  {
    v21 = os_log_create("com.apple.amp.iTunesCloud", "QuickRelay");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      selfCopy3 = self;
      _os_log_impl(&dword_1B4491000, v21, OS_LOG_TYPE_ERROR, "[ICQRConnectionLLDS] <%p> bag is missing country code", buf, 0xCu);
    }

    if (error)
    {
      [MEMORY[0x1E696ABC0] msv_errorWithDomain:*MEMORY[0x1E69B1378] code:102 debugDescription:@"Bag is missing country code."];
      *error = v16 = 0;
    }

    else
    {
      v16 = 0;
    }
  }

LABEL_24:

  return v16;
}

- (void)_joinSharedListeningSessionWithCompletion:(id)completion
{
  v34 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  sharedListeningSessionIdentifier = [(ICLiveLinkQRConnectionDataSource *)self sharedListeningSessionIdentifier];

  v6 = os_log_create("com.apple.amp.iTunesCloud", "QuickRelay");
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (sharedListeningSessionIdentifier)
  {
    if (v7)
    {
      sharedListeningSessionIdentifier2 = [(ICLiveLinkQRConnectionDataSource *)self sharedListeningSessionIdentifier];
      pseudonym = [(ICLiveLinkQRConnectionDataSource *)self pseudonym];
      v10 = [pseudonym URI];
      prefixedURI = [v10 prefixedURI];
      *buf = 134218498;
      selfCopy2 = self;
      v30 = 2114;
      v31 = sharedListeningSessionIdentifier2;
      v32 = 2114;
      v33 = prefixedURI;
      _os_log_impl(&dword_1B4491000, v6, OS_LOG_TYPE_DEFAULT, "[ICQRConnectionLLDS] <%p> Joining shared listening session %{public}@ with handle %{public}@", buf, 0x20u);
    }

    v12 = @"Join Request";
  }

  else
  {
    if (v7)
    {
      pseudonym2 = [(ICLiveLinkQRConnectionDataSource *)self pseudonym];
      v14 = [pseudonym2 URI];
      prefixedURI2 = [v14 prefixedURI];
      *buf = 134218242;
      selfCopy2 = self;
      v30 = 2114;
      v31 = prefixedURI2;
      _os_log_impl(&dword_1B4491000, v6, OS_LOG_TYPE_DEFAULT, "[ICQRConnectionLLDS] <%p> Creating shared listening session with handle %{public}@", buf, 0x16u);
    }

    v12 = @"Create Request";
  }

  v16 = [ICStoreRequestContext alloc];
  v17 = +[ICUserIdentity activeAccount];
  v18 = [(ICStoreRequestContext *)v16 initWithIdentity:v17];

  report = [(ICLiveLinkQRConnectionDataSource *)self report];
  [report startEvent:@"Get Bag" withParentEvent:@"Session Discovery"];
  v20 = +[ICURLBagProvider sharedBagProvider];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __78__ICLiveLinkQRConnectionDataSource__joinSharedListeningSessionWithCompletion___block_invoke;
  v23[3] = &unk_1E7BF9768;
  v24 = report;
  selfCopy3 = self;
  v26 = v12;
  v27 = completionCopy;
  v21 = completionCopy;
  v22 = report;
  [v20 getBagForRequestContext:v18 withCompletionHandler:v23];
}

void __78__ICLiveLinkQRConnectionDataSource__joinSharedListeningSessionWithCompletion___block_invoke(id *a1, void *a2, void *a3)
{
  v62 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  [a1[4] endEvent:@"Get Bag" withError:v6];
  if (!v6)
  {
    v9 = a1[5];
    v48 = 0;
    v44 = [v9 sessionURLForBag:v5 error:&v48];
    v10 = v48;
    if (v10)
    {
      (*(a1[7] + 2))();
LABEL_23:

      goto LABEL_24;
    }

    v11 = os_log_create("com.apple.amp.iTunesCloud", "QuickRelay");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = a1[5];
      *buf = 134218242;
      *&buf[4] = v12;
      *&buf[12] = 2114;
      *&buf[14] = v44;
      _os_log_impl(&dword_1B4491000, v11, OS_LOG_TYPE_DEFAULT, "[ICQRConnectionLLDS] <%p> resolved session discovery URL %{public}@", buf, 0x16u);
    }

    v13 = [MEMORY[0x1E695AC18] requestWithURL:v44];
    [v13 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [v13 setHTTPMethod:@"POST"];
    v43 = [MEMORY[0x1E695DF90] dictionary];
    v14 = [a1[5] pseudonym];
    v15 = [v14 URI];
    v16 = [v15 prefixedURI];
    [v43 setObject:v16 forKeyedSubscript:@"anonymousHandle"];

    v17 = [a1[5] externalIdentifier];
    [v43 setObject:v17 forKeyedSubscript:@"externalParticipantId"];

    v18 = MEMORY[0x1E696ACB0];
    v57 = @"parameters";
    v58 = v43;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
    v20 = [v18 dataWithJSONObject:v19 options:0 error:0];
    [v13 setHTTPBody:v20];

    v42 = [[ICMusicKitRequestContext alloc] initWithBlock:&__block_literal_global_33135];
    v21 = [[ICMusicKitURLRequest alloc] initWithURLRequest:v13 requestContext:v42];
    v22 = [a1[5] sharedListeningSessionIdentifier];
    if (v22)
    {
      v23 = @"SharedListeningSession id:join";
    }

    else
    {
      v23 = @"SharedListeningSession id:create";
    }

    [(ICURLRequest *)v21 setRequestName:v23];

    v24 = [getMCProfileConnectionClass() sharedConnection];
    v49 = 0;
    v50 = &v49;
    v51 = 0x2020000000;
    v25 = getMCFeatureExplicitContentAllowedSymbolLoc_ptr;
    v52 = getMCFeatureExplicitContentAllowedSymbolLoc_ptr;
    if (!getMCFeatureExplicitContentAllowedSymbolLoc_ptr)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __getMCFeatureExplicitContentAllowedSymbolLoc_block_invoke;
      v60 = &unk_1E7BFA0A0;
      v61 = &v49;
      v26 = ManagedConfigurationLibrary();
      v27 = dlsym(v26, "MCFeatureExplicitContentAllowed");
      *(v61[1] + 24) = v27;
      getMCFeatureExplicitContentAllowedSymbolLoc_ptr = *(v61[1] + 24);
      v25 = v50[3];
    }

    _Block_object_dispose(&v49, 8);
    if (v25)
    {
      v28 = [v24 effectiveBoolValueForSetting:*v25] == 1;

      if (!v28)
      {
        v55 = @"itre";
        v56 = @"1";
        v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v56 forKeys:&v55 count:1];
        [(ICMusicKitURLRequest *)v21 setAdditionalHTTPCookies:v29];
      }

      v30 = [getMCProfileConnectionClass() sharedConnection];
      v49 = 0;
      v50 = &v49;
      v51 = 0x2020000000;
      v31 = getMCFeatureMusicVideosAllowedSymbolLoc_ptr;
      v52 = getMCFeatureMusicVideosAllowedSymbolLoc_ptr;
      if (!getMCFeatureMusicVideosAllowedSymbolLoc_ptr)
      {
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = __getMCFeatureMusicVideosAllowedSymbolLoc_block_invoke;
        v60 = &unk_1E7BFA0A0;
        v61 = &v49;
        v32 = ManagedConfigurationLibrary();
        v33 = dlsym(v32, "MCFeatureMusicVideosAllowed");
        *(v61[1] + 24) = v33;
        getMCFeatureMusicVideosAllowedSymbolLoc_ptr = *(v61[1] + 24);
        v31 = v50[3];
      }

      _Block_object_dispose(&v49, 8);
      if (v31)
      {
        v34 = [v30 effectiveBoolValueForSetting:*v31] == 1;

        if (!v34)
        {
          v53 = @"itrv";
          v54 = @"1";
          v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v54 forKeys:&v53 count:1];
          [(ICMusicKitURLRequest *)v21 setAdditionalHTTPCookies:v35];
        }

        v36 = [a1[5] report];
        [v36 startEvent:a1[6] withParentEvent:@"Session Discovery"];

        v37 = +[ICURLSessionManager highPrioritySession];
        v45[0] = MEMORY[0x1E69E9820];
        v45[1] = 3221225472;
        v45[2] = __78__ICLiveLinkQRConnectionDataSource__joinSharedListeningSessionWithCompletion___block_invoke_2;
        v45[3] = &unk_1E7BF84A8;
        v45[4] = a1[5];
        v46 = a1[6];
        v47 = a1[7];
        [v37 enqueueDataRequest:v21 withCompletionHandler:v45];

        goto LABEL_23;
      }

      v40 = [MEMORY[0x1E696AAA8] currentHandler];
      v41 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getMCFeatureMusicVideosAllowed(void)"];
      [v40 handleFailureInFunction:v41 file:@"ICLiveLinkQRConnectionDataSource.m" lineNumber:34 description:{@"%s", dlerror()}];
    }

    else
    {
      v38 = [MEMORY[0x1E696AAA8] currentHandler];
      v39 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getMCFeatureExplicitContentAllowed(void)"];
      [v38 handleFailureInFunction:v39 file:@"ICLiveLinkQRConnectionDataSource.m" lineNumber:33 description:{@"%s", dlerror()}];
    }

    __break(1u);
  }

  v7 = os_log_create("com.apple.amp.iTunesCloud", "QuickRelay");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = a1[5];
    *buf = 134218242;
    *&buf[4] = v8;
    *&buf[12] = 2114;
    *&buf[14] = v6;
    _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_ERROR, "[ICQRConnectionLLDS] <%p> Failed to load bag with error %{public}@", buf, 0x16u);
  }

  (*(a1[7] + 2))();
LABEL_24:
}

void __78__ICLiveLinkQRConnectionDataSource__joinSharedListeningSessionWithCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v80 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) report];
  [v7 endEvent:*(a1 + 40) withError:v6];

  if (v5 || !v6)
  {
    v10 = [v5 urlResponse];
    v11 = [v10 valueForHTTPHeaderField:@"x-responding-instance"];
    v69 = [v10 valueForHTTPHeaderField:@"x-apple-jingle-correlation-key"];
    v12 = [v5 parsedBodyDictionary];
    if (v12)
    {
      v13 = os_log_create("com.apple.amp.iTunesCloud", "QuickRelay");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v14 = *(a1 + 32);
        *buf = 134218242;
        v73 = v14;
        v74 = 2112;
        v75 = v12;
        _os_log_impl(&dword_1B4491000, v13, OS_LOG_TYPE_DEBUG, "[ICQRConnectionLLDS] <%p> Session discovery response %@", buf, 0x16u);
      }

      v15 = [v12 objectForKeyedSubscript:@"errors"];
      v64 = v15;
      if (_NSIsNSArray() && [v15 count])
      {
        v16 = os_log_create("com.apple.amp.iTunesCloud", "QuickRelay_Oversize");
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v17 = *(a1 + 32);
          *buf = 134218754;
          v73 = v17;
          v74 = 2114;
          v75 = v11;
          v76 = 2114;
          v77 = v69;
          v78 = 2114;
          v79 = v12;
          _os_log_impl(&dword_1B4491000, v16, OS_LOG_TYPE_ERROR, "<%p> response contains errors: instance=%{public}@ correlationKey=%{public}@ body=%{public}@", buf, 0x2Au);
        }

        v18 = [v15 firstObject];
        v19 = [v18 objectForKeyedSubscript:@"code"];
        v62 = v11;
        if (_NSIsNSString())
        {
          v20 = [v18 objectForKeyedSubscript:@"code"];
          v21 = [v20 integerValue];
        }

        else
        {
          v21 = 0;
        }

        v43 = [v18 objectForKeyedSubscript:@"messageForDisplay"];
        v44 = v43;
        v68 = v21;
        if (v43)
        {
          v45 = v43;
        }

        else
        {
          v46 = [v18 objectForKeyedSubscript:@"detail"];
          v47 = v46;
          if (v46)
          {
            v48 = v46;
          }

          else
          {
            v48 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Server Error [%ld]", v21];
          }

          v45 = v48;
        }

        v66 = v45;

        v49 = *(a1 + 48);
        v61 = MEMORY[0x1E696ABC0];
        v50 = *MEMORY[0x1E69B1380];
        v51 = *MEMORY[0x1E696A578];
        v70[0] = @"serverError";
        v70[1] = v51;
        v71[0] = v18;
        v71[1] = v45;
        v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v71 forKeys:v70 count:2];
        v53 = [v18 objectForKeyedSubscript:@"title"];
        v54 = [v18 objectForKeyedSubscript:@"detail"];
        v55 = [v61 msv_errorWithDomain:v50 code:v68 userInfo:v53 debugDescription:v54];
        (*(v49 + 16))(v49, 0, 0, v55);

        v11 = v62;
      }

      else
      {
        v22 = [v12 objectForKeyedSubscript:@"results"];
        v23 = [v22 objectForKeyedSubscript:@"session"];

        v67 = [v23 objectForKeyedSubscript:@"attributes"];
        v24 = [v12 objectForKeyedSubscript:@"results"];
        v65 = [v24 objectForKeyedSubscript:@"joinParams"];

        if (v23 && v67 && v65)
        {
          v57 = [v23 objectForKeyedSubscript:@"id"];
          v60 = [v67 objectForKeyedSubscript:@"groupId"];
          v59 = [v65 objectForKeyedSubscript:@"anonymousHandles"];
          v25 = [v65 objectForKeyedSubscript:@"joinToken"];
          v58 = [v67 objectForKeyedSubscript:@"url"];
          if (v58)
          {
            [MEMORY[0x1E695DFF8] URLWithString:v58];
            v27 = v26 = v25;
            [*(a1 + 32) setSharedListeningSessionInviteURL:v27];

            v25 = v26;
          }

          v28 = v57;
          if (v57 && v60 && v59 && v25)
          {
            [*(a1 + 32) setSharedListeningSessionIdentifier:v57];
            [*(a1 + 32) setSharedSessionToken:v25];
            v29 = *(*(a1 + 48) + 16);
            v30 = v60;
            v31 = v25;
            v32 = v59;
            v29();
          }

          else
          {
            v56 = v25;
            v63 = v11;
            v40 = os_log_create("com.apple.amp.iTunesCloud", "QuickRelay_Oversize");
            if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
            {
              v41 = *(a1 + 32);
              *buf = 134218754;
              v73 = v41;
              v74 = 2114;
              v75 = v63;
              v76 = 2114;
              v77 = v69;
              v78 = 2114;
              v79 = v12;
              _os_log_impl(&dword_1B4491000, v40, OS_LOG_TYPE_ERROR, "<%p> Response is missing required information. instance=%{public}@ correlationKey=%{public}@ body=%{public}@", buf, 0x2Au);
            }

            v42 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:*MEMORY[0x1E69B1378] code:102 underlyingError:v6 debugDescription:@"Session response is missing required fields."];
            (*(*(a1 + 48) + 16))();

            v30 = v60;
            v11 = v63;
            v32 = v59;
            v31 = v56;
          }
        }

        else
        {
          v37 = os_log_create("com.apple.amp.iTunesCloud", "QuickRelay_Oversize");
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            v38 = *(a1 + 32);
            *buf = 134218754;
            v73 = v38;
            v74 = 2114;
            v75 = v11;
            v76 = 2114;
            v77 = v69;
            v78 = 2114;
            v79 = v12;
            _os_log_impl(&dword_1B4491000, v37, OS_LOG_TYPE_ERROR, "<%p> response is missing required fields: instance=%{public}@ correlationKey=%{public}@ body=%{public}@", buf, 0x2Au);
          }

          v39 = *(a1 + 48);
          v28 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:*MEMORY[0x1E69B1378] code:102 underlyingError:v6 debugDescription:@"Session response is missing required fields."];
          (*(v39 + 16))(v39, 0, 0, v28);
        }
      }

      v36 = v64;
    }

    else
    {
      v33 = os_log_create("com.apple.amp.iTunesCloud", "QuickRelay_Oversize");
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v34 = *(a1 + 32);
        v35 = [v5 parsedBody];
        *buf = 134218754;
        v73 = v34;
        v74 = 2114;
        v75 = v11;
        v76 = 2114;
        v77 = v69;
        v78 = 2114;
        v79 = v35;
        _os_log_impl(&dword_1B4491000, v33, OS_LOG_TYPE_ERROR, "<%p> unexpected response instance=%{public}@ correlationKey=%{public}@ body=%{public}@", buf, 0x2Au);
      }

      v36 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:*MEMORY[0x1E69B1378] code:102 underlyingError:v6 debugDescription:@"Session data did not form dictionary."];
      (*(*(a1 + 48) + 16))();
    }
  }

  else
  {
    v8 = os_log_create("com.apple.amp.iTunesCloud", "QuickRelay");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      *buf = 134218242;
      v73 = v9;
      v74 = 2114;
      v75 = v6;
      _os_log_impl(&dword_1B4491000, v8, OS_LOG_TYPE_ERROR, "[ICQRConnectionLLDS] <%p> Response error %{public}@", buf, 0x16u);
    }

    v10 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:*MEMORY[0x1E69B1378] code:102 underlyingError:v6 debugDescription:@"Received error from session discovery."];
    (*(*(a1 + 48) + 16))();
  }
}

void __78__ICLiveLinkQRConnectionDataSource__joinSharedListeningSessionWithCompletion___block_invoke_94(uint64_t a1, void *a2)
{
  v2 = a2;
  v6 = MRMediaRemoteCopyLocalDeviceSystemMediaApplicationDisplayID();
  v3 = [ICClientInfo clientInfoForMusicKitRequestWithClientIdentifier:v6 clientVersion:@"1"];
  [v2 setClientInfo:v3];
  v4 = +[ICUserIdentityStore defaultIdentityStore];
  [v2 setIdentityStore:v4];

  v5 = +[ICUserIdentity activeAccount];
  [v2 setIdentity:v5];
}

- (void)_revokeUserPseudonymWithCompletion:(id)completion
{
  completionCopy = completion;
  pseudonymRenewalTimer = [(ICLiveLinkQRConnectionDataSource *)self pseudonymRenewalTimer];
  [pseudonymRenewalTimer invalidate];

  [(ICLiveLinkQRConnectionDataSource *)self setPseudonymRenewalTimer:0];
  pseudonym = [(ICLiveLinkQRConnectionDataSource *)self pseudonym];

  if (pseudonym)
  {
    service = [(ICLiveLinkQRConnectionDataSource *)self service];
    pseudonym2 = [(ICLiveLinkQRConnectionDataSource *)self pseudonym];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __71__ICLiveLinkQRConnectionDataSource__revokeUserPseudonymWithCompletion___block_invoke;
    v9[3] = &unk_1E7BF8450;
    v10 = completionCopy;
    [service revokePseudonym:pseudonym2 completion:v9];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 1, 0);
  }
}

- (void)_renewUserPseudonym
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = os_log_create("com.apple.amp.iTunesCloud", "QuickRelay");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    pseudonym = [(ICLiveLinkQRConnectionDataSource *)self pseudonym];
    v5 = [pseudonym URI];
    prefixedURI = [v5 prefixedURI];
    *buf = 134218242;
    selfCopy = self;
    v12 = 2114;
    v13 = prefixedURI;
    _os_log_impl(&dword_1B4491000, v3, OS_LOG_TYPE_DEFAULT, "[ICQRConnectionLLDS] <%p> Will renew pseudonym %{public}@", buf, 0x16u);
  }

  service = [(ICLiveLinkQRConnectionDataSource *)self service];
  pseudonym2 = [(ICLiveLinkQRConnectionDataSource *)self pseudonym];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __55__ICLiveLinkQRConnectionDataSource__renewUserPseudonym__block_invoke;
  v9[3] = &unk_1E7BF8428;
  v9[4] = self;
  [service renewPseudonym:pseudonym2 forUpdatedDuration:v9 completion:43200.0];
}

void __55__ICLiveLinkQRConnectionDataSource__renewUserPseudonym__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__ICLiveLinkQRConnectionDataSource__renewUserPseudonym__block_invoke_2;
  block[3] = &unk_1E7BFA178;
  block[4] = *(a1 + 32);
  v11 = v6;
  v12 = v5;
  v8 = v5;
  v9 = v6;
  dispatch_async(v7, block);
}

void __55__ICLiveLinkQRConnectionDataSource__renewUserPseudonym__block_invoke_2(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) pseudonym];

  if (!v2)
  {
    v8 = os_log_create("com.apple.amp.iTunesCloud", "QuickRelay");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 32);
      v25 = 134217984;
      v26 = v13;
      _os_log_impl(&dword_1B4491000, v8, OS_LOG_TYPE_DEFAULT, "[ICQRConnectionLLDS] <%p> Cleared while renewing pseudonym.", &v25, 0xCu);
    }

    goto LABEL_9;
  }

  v3 = *(a1 + 40);
  v4 = os_log_create("com.apple.amp.iTunesCloud", "QuickRelay");
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);
      v25 = 134218242;
      v26 = v6;
      v27 = 2114;
      v28 = v7;
      _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_ERROR, "[ICQRConnectionLLDS] <%p> Failed to renew pseudonym with error: %{public}@", &v25, 0x16u);
    }

    v8 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:*MEMORY[0x1E69B1378] code:101 underlyingError:*(a1 + 40) debugDescription:@"Failed to renew pseudonym."];
    v9 = [MEMORY[0x1E695E000] standardUserDefaults];
    [v9 removeObjectForKey:@"ICLiveLinkQRConnectionDataSourcePseudonymURI"];

    v10 = [MEMORY[0x1E695E000] standardUserDefaults];
    [v10 removeObjectForKey:@"ICLiveLinkQRConnectionDataSourcePseudonymURIExpirationTimestamp"];

    v11 = [*(a1 + 32) dataSourceErrorHandler];

    if (v11)
    {
      v12 = [*(a1 + 32) dataSourceErrorHandler];
      (v12)[2](v12, v8);
    }

LABEL_9:

    return;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(a1 + 32);
    v15 = [*(a1 + 48) URI];
    v16 = [v15 prefixedURI];
    v17 = [*(a1 + 48) properties];
    v18 = [v17 expirationDate];
    v25 = 134218498;
    v26 = v14;
    v27 = 2114;
    v28 = v16;
    v29 = 2114;
    v30 = v18;
    _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_DEFAULT, "[ICQRConnectionLLDS] <%p> Renewed pseudonym: %{public}@ with expiry: %{public}@", &v25, 0x20u);
  }

  v19 = [MEMORY[0x1E695E000] standardUserDefaults];
  v20 = [*(a1 + 48) URI];
  v21 = [v20 prefixedURI];
  [v19 setObject:v21 forKey:@"ICLiveLinkQRConnectionDataSourcePseudonymURI"];

  v22 = [MEMORY[0x1E695E000] standardUserDefaults];
  v23 = [*(a1 + 48) properties];
  v24 = [v23 expirationDate];
  [v24 timeIntervalSinceReferenceDate];
  [v22 setDouble:@"ICLiveLinkQRConnectionDataSourcePseudonymURIExpirationTimestamp" forKey:?];

  [*(a1 + 32) setPseudonym:*(a1 + 48)];
  [*(a1 + 32) _beginPseudonymAutoRenewal];
}

- (void)_beginPseudonymAutoRenewal
{
  pseudonym = [(ICLiveLinkQRConnectionDataSource *)self pseudonym];
  properties = [pseudonym properties];
  expirationDate = [properties expirationDate];
  [expirationDate timeIntervalSinceNow];
  v7 = v6 + -120.0;

  if (v7 < 0.0)
  {
    v7 = 0.0;
  }

  objc_initWeak(&location, self);
  v8 = objc_alloc(MEMORY[0x1E69B14D8]);
  queue = [(ICLiveLinkQRConnectionDataSource *)self queue];
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __62__ICLiveLinkQRConnectionDataSource__beginPseudonymAutoRenewal__block_invoke;
  v14 = &unk_1E7BFA328;
  objc_copyWeak(&v15, &location);
  v10 = [v8 initWithInterval:queue queue:&v11 block:v7];
  [(ICLiveLinkQRConnectionDataSource *)self setPseudonymRenewalTimer:v10, v11, v12, v13, v14];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __62__ICLiveLinkQRConnectionDataSource__beginPseudonymAutoRenewal__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained pseudonymRenewalTimer];
  [v1 invalidate];

  [WeakRetained _renewUserPseudonym];
}

- (void)_provisionUserPseudonymWithCompletion:(id)completion
{
  v62 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  account = [(ICLiveLinkQRConnectionDataSource *)self account];

  if (account)
  {
    account2 = [(ICLiveLinkQRConnectionDataSource *)self account];
    accountRegisteredURIs = [account2 accountRegisteredURIs];
    firstObject = [accountRegisteredURIs firstObject];

    if (firstObject)
    {
      standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
      v10 = [standardUserDefaults stringForKey:@"ICLiveLinkQRConnectionDataSourcePseudonymURI"];

      standardUserDefaults2 = [MEMORY[0x1E695E000] standardUserDefaults];
      [standardUserDefaults2 doubleForKey:@"ICLiveLinkQRConnectionDataSourcePseudonymURIExpirationTimestamp"];
      v13 = v12;

      v14 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v13];
      v15 = v14;
      v48 = v10;
      if (v10)
      {
        [v14 timeIntervalSinceNow];
        if (v16 >= 120.0)
        {
          selfCopy = self;
          service = [(ICLiveLinkQRConnectionDataSource *)self service];
          pseudonymURIMap = [service pseudonymURIMap];
          v19 = [pseudonymURIMap objectForKeyedSubscript:firstObject];

          if ([v19 count])
          {
            v44 = v15;
            v45 = firstObject;
            v46 = completionCopy;
            v53 = 0u;
            v54 = 0u;
            v51 = 0u;
            v52 = 0u;
            v43 = v19;
            v20 = v19;
            v21 = [v20 countByEnumeratingWithState:&v51 objects:v61 count:16];
            if (v21)
            {
              v22 = v21;
              v23 = *v52;
              while (2)
              {
                for (i = 0; i != v22; ++i)
                {
                  if (*v52 != v23)
                  {
                    objc_enumerationMutation(v20);
                  }

                  v25 = *(*(&v51 + 1) + 8 * i);
                  properties = [v25 properties];
                  expirationDate = [properties expirationDate];
                  [expirationDate timeIntervalSinceNow];
                  if (v28 >= 120.0)
                  {
                    [v25 URI];
                    v30 = v29 = v20;
                    prefixedURI = [v30 prefixedURI];
                    v32 = [prefixedURI isEqualToString:v48];

                    v20 = v29;
                    if (v32)
                    {
                      v38 = os_log_create("com.apple.amp.iTunesCloud", "QuickRelay");
                      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
                      {
                        v39 = [v25 URI];
                        prefixedURI2 = [v39 prefixedURI];
                        properties2 = [v25 properties];
                        expirationDate2 = [properties2 expirationDate];
                        *buf = 134218498;
                        selfCopy2 = selfCopy;
                        v57 = 2114;
                        v58 = prefixedURI2;
                        v59 = 2114;
                        v60 = expirationDate2;
                        _os_log_impl(&dword_1B4491000, v38, OS_LOG_TYPE_DEFAULT, "[ICQRConnectionLLDS] <%p> Using existing pseudonym: %{public}@ with expiry: %{public}@", buf, 0x20u);

                        v20 = v29;
                      }

                      completionCopy = v46;
                      (*(v46 + 2))(v46, v25, 0);

                      v15 = v44;
                      firstObject = v45;
                      goto LABEL_21;
                    }
                  }

                  else
                  {
                  }
                }

                v22 = [v20 countByEnumeratingWithState:&v51 objects:v61 count:16];
                if (v22)
                {
                  continue;
                }

                break;
              }
            }

            firstObject = v45;
            completionCopy = v46;
            v19 = v43;
            v15 = v44;
          }

          self = selfCopy;
        }
      }

      service2 = [(ICLiveLinkQRConnectionDataSource *)self service];
      v20 = [service2 pseudonymPropertiesWithFeatureID:@"SharedListening" scopeID:0 expiryDurationInSeconds:43200.0];

      v34 = os_log_create("com.apple.amp.iTunesCloud", "QuickRelay");
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218243;
        selfCopy2 = self;
        v57 = 2113;
        v58 = firstObject;
        _os_log_impl(&dword_1B4491000, v34, OS_LOG_TYPE_DEFAULT, "[ICQRConnectionLLDS] <%p> Provisioning pseudonym for uri: %{private}@.", buf, 0x16u);
      }

      service3 = [(ICLiveLinkQRConnectionDataSource *)self service];
      v49[0] = MEMORY[0x1E69E9820];
      v49[1] = 3221225472;
      v49[2] = __74__ICLiveLinkQRConnectionDataSource__provisionUserPseudonymWithCompletion___block_invoke;
      v49[3] = &unk_1E7BF8400;
      v49[4] = self;
      v50 = completionCopy;
      [service3 provisionPseudonymForURI:firstObject withProperties:v20 completion:v49];

LABEL_21:
    }

    else
    {
      v37 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:*MEMORY[0x1E69B1378] code:101 debugDescription:@"User account has no registered URIs."];
      (*(completionCopy + 2))(completionCopy, 0, v37);
    }
  }

  else
  {
    v36 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:*MEMORY[0x1E69B1378] code:100 debugDescription:@"No account found on service."];
    (*(completionCopy + 2))(completionCopy, 0, v36);
  }
}

void __74__ICLiveLinkQRConnectionDataSource__provisionUserPseudonymWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = os_log_create("com.apple.amp.iTunesCloud", "QuickRelay");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = [v5 URI];
    v10 = [v9 prefixedURI];
    v11 = [v5 properties];
    v12 = [v11 expirationDate];
    v20 = 134218754;
    v21 = v8;
    v22 = 2114;
    v23 = v10;
    v24 = 2114;
    v25 = v12;
    v26 = 2114;
    v27 = v6;
    _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_DEFAULT, "[ICQRConnectionLLDS] <%p> Provisioned pseudonym: %{public}@ with expiry: %{public}@, error: %{public}@", &v20, 0x2Au);
  }

  if (v6)
  {
    v13 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:*MEMORY[0x1E69B1378] code:101 underlyingError:v6 debugDescription:@"Failed to provision pseudonym."];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v14 = [MEMORY[0x1E695E000] standardUserDefaults];
    v15 = [v5 URI];
    v16 = [v15 prefixedURI];
    [v14 setObject:v16 forKey:@"ICLiveLinkQRConnectionDataSourcePseudonymURI"];

    v17 = [MEMORY[0x1E695E000] standardUserDefaults];
    v18 = [v5 properties];
    v19 = [v18 expirationDate];
    [v19 timeIntervalSinceReferenceDate];
    [v17 setDouble:@"ICLiveLinkQRConnectionDataSourcePseudonymURIExpirationTimestamp" forKey:?];

    (*(*(a1 + 40) + 16))();
  }
}

- (void)populateWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = [(ICLiveLinkQRConnectionDataSource *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __59__ICLiveLinkQRConnectionDataSource_populateWithCompletion___block_invoke;
  v7[3] = &unk_1E7BF9EC8;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(queue, v7);
}

void __59__ICLiveLinkQRConnectionDataSource_populateWithCompletion___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __59__ICLiveLinkQRConnectionDataSource_populateWithCompletion___block_invoke_2;
  v12[3] = &unk_1E7BF8388;
  v2 = *(a1 + 40);
  v12[4] = *(a1 + 32);
  v13 = v2;
  v3 = MEMORY[0x1B8C781E0](v12);
  v4 = os_log_create("com.apple.amp.iTunesCloud", "QuickRelay");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = @"com.apple.private.alloy.itunes";
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_DEFAULT, "[ICQRConnectionLLDS] Creating service %@", buf, 0xCu);
  }

  v5 = [objc_alloc(MEMORY[0x1E69A48A8]) initWithService:@"com.apple.private.alloy.itunes"];
  [*(a1 + 32) setService:v5];

  v6 = [*(a1 + 32) report];
  [v6 startEvent:@"Provision Pseudonym"];

  v7 = *(a1 + 32);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __59__ICLiveLinkQRConnectionDataSource_populateWithCompletion___block_invoke_39;
  v9[3] = &unk_1E7BF83D8;
  v9[4] = v7;
  v10 = *(a1 + 40);
  v11 = v3;
  v8 = v3;
  [v7 _provisionUserPseudonymWithCompletion:v9];
}

void __59__ICLiveLinkQRConnectionDataSource_populateWithCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v28[5] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [*(a1 + 32) report];
  [v10 endEvent:@"Session Discovery" withError:v9];
  if (v9)
  {
    v11 = [*(a1 + 32) pseudonymRenewalTimer];
    [v11 invalidate];

    v12 = *(*(a1 + 40) + 16);
  }

  else
  {
    [v10 setGroupSessionIdentifier:v7];
    v13 = [*(a1 + 32) sharedListeningSessionIdentifier];
    [v10 setSharedListeningSessionIdentifier:v13];

    v14 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v7];
    [*(a1 + 32) setGroupSessionIdentifier:v14];

    v15 = *MEMORY[0x1E69A5128];
    v27[0] = *MEMORY[0x1E69A5158];
    v27[1] = v15;
    v28[0] = &unk_1F2C92338;
    v28[1] = MEMORY[0x1E695E118];
    v16 = *MEMORY[0x1E69A4D68];
    v27[2] = *MEMORY[0x1E69A5150];
    v27[3] = v16;
    v28[2] = MEMORY[0x1E695E118];
    v28[3] = v8;
    v27[4] = *MEMORY[0x1E69A4D60];
    v17 = [*(a1 + 32) groupSessionIdentifier];
    v18 = [v17 UUIDString];
    v28[4] = v18;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:5];
    [*(a1 + 32) setGroupSessionOptions:v19];

    v20 = os_log_create("com.apple.amp.iTunesCloud", "QuickRelay");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = *(a1 + 32);
      v22 = [v21 sharedListeningSessionIdentifier];
      v23 = 134218242;
      v24 = v21;
      v25 = 2114;
      v26 = v22;
      _os_log_impl(&dword_1B4491000, v20, OS_LOG_TYPE_DEFAULT, "[ICQRConnectionLLDS] <%p> Populated with shared listening identifier: %{public}@", &v23, 0x16u);
    }

    v12 = *(*(a1 + 40) + 16);
  }

  v12();
}

void __59__ICLiveLinkQRConnectionDataSource_populateWithCompletion___block_invoke_39(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [a1[4] report];
  [v7 endEvent:@"Provision Pseudonym" withError:v6];

  v8 = [a1[4] queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__ICLiveLinkQRConnectionDataSource_populateWithCompletion___block_invoke_2_40;
  block[3] = &unk_1E7BF83B0;
  v13 = v6;
  v9 = a1[5];
  v15 = v5;
  v16 = v9;
  v14 = a1[4];
  v17 = a1[6];
  v10 = v5;
  v11 = v6;
  dispatch_async(v8, block);
}

uint64_t __59__ICLiveLinkQRConnectionDataSource_populateWithCompletion___block_invoke_2_40(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *(*(a1 + 56) + 16);

    return v2();
  }

  else
  {
    [*(a1 + 40) setPseudonym:*(a1 + 48)];
    [*(a1 + 40) _beginPseudonymAutoRenewal];
    v4 = [*(a1 + 40) report];
    [v4 startEvent:@"Session Discovery"];

    v5 = *(a1 + 40);
    v6 = *(a1 + 64);

    return [v5 _joinSharedListeningSessionWithCompletion:v6];
  }
}

- (void)dealloc
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = os_log_create("com.apple.amp.iTunesCloud", "QuickRelay");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_1B4491000, v3, OS_LOG_TYPE_DEFAULT, "[ICQRConnectionLLDS] <%p> Deallocating.", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = ICLiveLinkQRConnectionDataSource;
  [(ICLiveLinkQRConnectionDataSource *)&v4 dealloc];
}

- (ICLiveLinkQRConnectionDataSource)initWithSharedListeningSessionIdentifier:(id)identifier identity:(id)identity
{
  identifierCopy = identifier;
  identityCopy = identity;
  v17.receiver = self;
  v17.super_class = ICLiveLinkQRConnectionDataSource;
  v8 = [(ICLiveLinkQRConnectionDataSource *)&v17 init];
  if (v8)
  {
    externalIdentifier = [identityCopy externalIdentifier];
    externalIdentifier = v8->_externalIdentifier;
    v8->_externalIdentifier = externalIdentifier;

    v11 = [identifierCopy copy];
    sharedListeningSessionIdentifier = v8->_sharedListeningSessionIdentifier;
    v8->_sharedListeningSessionIdentifier = v11;

    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_create("com.apple.amp.mediaservices.MSVQRConnectionLiveLinkDataSource.serialQueue", v13);
    queue = v8->_queue;
    v8->_queue = v14;
  }

  return v8;
}

+ (id)dataSourceForExistingSharedListeningSession:(id)session identity:(id)identity
{
  identityCopy = identity;
  sessionCopy = session;
  v7 = [[ICLiveLinkQRConnectionDataSource alloc] initWithSharedListeningSessionIdentifier:sessionCopy identity:identityCopy];

  return v7;
}

+ (id)dataSourceForNewSharedListeningSessionWithIdentity:(id)identity
{
  identityCopy = identity;
  v4 = [[ICLiveLinkQRConnectionDataSource alloc] initWithSharedListeningSessionIdentifier:0 identity:identityCopy];

  return v4;
}

@end