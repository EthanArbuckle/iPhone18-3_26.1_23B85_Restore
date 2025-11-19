@interface ICMusicSubscriptionStatusRequestOperation
- (BOOL)_carrierBundleStatusIsValidForCachedSubscriptionStatus:(id)a3;
- (ICMusicSubscriptionStatusRequestOperation)initWithRequest:(id)a3;
- (void)_cacheAccountEligibilityWithStatus:(id)a3 requestContext:(id)a4;
- (void)_performSubscriptionStatusURLRequestWithRequestContext:(id)a3 subscriptionStatusURL:(id)a4 allowsAuthentication:(BOOL)a5 completion:(id)a6;
- (void)execute;
@end

@implementation ICMusicSubscriptionStatusRequestOperation

- (void)execute
{
  v41 = *MEMORY[0x1E69E9840];
  v3 = self->_request;
  v4 = MEMORY[0x1B8C781E0](self->_responseHandler);
  shouldRequestLightweightStatus = self->_shouldRequestLightweightStatus;
  v6 = [(ICMusicSubscriptionStatusRequest *)v3 shouldIgnoreCache];
  if (self->_allowsFuseHeaderEnrichment && !shouldRequestLightweightStatus)
  {
    v8 = +[ICDeviceInfo currentDeviceInfo];
    v9 = [v8 isPhoneNumberAccessRestricted];

    if (!v9)
    {
      v11 = 1;
      goto LABEL_11;
    }

    v10 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v40 = self;
      _os_log_impl(&dword_1B4491000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ Loading carrier bundling status is not allowed because phone number access is restricted.", buf, 0xCu);
    }
  }

  v11 = 0;
LABEL_11:
  v12 = !v6;
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __52__ICMusicSubscriptionStatusRequestOperation_execute__block_invoke;
  v37[3] = &unk_1E7BF7FE0;
  v13 = v4;
  v38 = v13;
  v14 = MEMORY[0x1B8C781E0](v37);
  v15 = [(ICMusicSubscriptionStatusRequest *)v3 storeRequestContext];
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __52__ICMusicSubscriptionStatusRequestOperation_execute__block_invoke_2;
  v35[3] = &unk_1E7BF91F0;
  v16 = v3;
  v36 = v16;
  v17 = [v15 copyWithBlock:v35];

  v18 = +[ICMusicSubscriptionStatusCache sharedCache];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __52__ICMusicSubscriptionStatusRequestOperation_execute__block_invoke_3;
  v24[3] = &unk_1E7BF4C90;
  v25 = v16;
  v26 = self;
  v27 = v17;
  v28 = v14;
  v31 = v12;
  v32 = shouldRequestLightweightStatus;
  v33 = v11;
  v34 = !shouldRequestLightweightStatus;
  v29 = v13;
  v30 = a2;
  v19 = v13;
  v20 = v14;
  v21 = v17;
  v22 = v16;
  [v18 getCachedSubscriptionStatusResponseForRequestContext:v21 completion:v24];
}

void __52__ICMusicSubscriptionStatusRequestOperation_execute__block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = +[ICClientInfo defaultInfo];
  [v4 setClientInfo:v3];

  if ([*(a1 + 32) shouldBypassEnforcementOfPrivacyAcknowledgement])
  {
    [v4 setPersonalizationStyle:2];
  }
}

void __52__ICMusicSubscriptionStatusRequestOperation_execute__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v44 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5 && (([*(a1 + 32) allowsFallbackToExpiredStatus] & 1) != 0 || (objc_msgSend(v5, "isExpired") & 1) == 0))
  {
    if ([*(a1 + 32) allowsFallbackToStatusNeedingReload])
    {
      LOBYTE(v7) = 1;
    }

    else
    {
      v7 = [v5 needsReload] ^ 1;
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  if ([*(a1 + 32) shouldReturnLastKnownStatusOnly])
  {
    v8 = v6;
    if (!(v5 | v8))
    {
      v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7008 userInfo:0];
    }

    v9 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 40);
      v11 = *(a1 + 48);
      *buf = 138544130;
      v37 = v10;
      v38 = 2114;
      v39 = v5;
      v40 = 2114;
      v41 = v8;
      v42 = 2114;
      v43 = v11;
      _os_log_impl(&dword_1B4491000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ Returning last known subscription status %{public}@ with error %{public}@ for: %{public}@", buf, 0x2Au);
    }

    v12 = *(*(a1 + 56) + 16);
LABEL_14:
    v12();
    [*(a1 + 40) finishWithError:v8];

    goto LABEL_25;
  }

  if (!v5 || (*(a1 + 80) & 1) == 0 || ([v5 isExpired] & 1) != 0 || (objc_msgSend(v5, "needsReload") & 1) != 0)
  {
    if (([*(a1 + 32) shouldBypassEnforcementOfPrivacyAcknowledgement] & 1) != 0 || (objc_msgSend(*(a1 + 48), "identity"), v13 = objc_claimAutoreleasedReturnValue(), +[ICPrivacyInfo sharedPrivacyInfoForUserIdentity:](ICPrivacyInfo, "sharedPrivacyInfoForUserIdentity:", v13), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "shouldBlockPersonalizedNetworkRequestsForMusic"), v14, v13, !v15))
    {
      v18 = +[ICURLBagProvider sharedBagProvider];
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __52__ICMusicSubscriptionStatusRequestOperation_execute__block_invoke_7;
      v25[3] = &unk_1E7BF4C68;
      v19 = *(a1 + 48);
      v25[4] = *(a1 + 40);
      v26 = v19;
      v29 = *(a1 + 56);
      v32 = v7;
      v20 = v5;
      v33 = *(a1 + 81);
      v21 = *(a1 + 72);
      v27 = v20;
      v31 = v21;
      v28 = *(a1 + 32);
      v34 = *(a1 + 83);
      v30 = *(a1 + 64);
      v35 = *(a1 + 80);
      [v18 getBagForRequestContext:v26 withCompletionHandler:v25];

      goto LABEL_25;
    }

    v16 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = *(a1 + 40);
      *buf = 138543362;
      v37 = v17;
      _os_log_impl(&dword_1B4491000, v16, OS_LOG_TYPE_ERROR, "%{public}@ Aborted fetching subscription status because privacy link needs to be displayed first.", buf, 0xCu);
    }

    v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7007 userInfo:0];
    v12 = *(*(a1 + 56) + 16);
    goto LABEL_14;
  }

  v22 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = *(a1 + 40);
    v24 = *(a1 + 48);
    *buf = 138543874;
    v37 = v23;
    v38 = 2114;
    v39 = v5;
    v40 = 2114;
    v41 = v24;
    _os_log_impl(&dword_1B4491000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@ Using cached subscription status %{public}@ for: %{public}@", buf, 0x20u);
  }

  (*(*(a1 + 56) + 16))();
  [*(a1 + 40) finishWithError:v6];
LABEL_25:
}

void __52__ICMusicSubscriptionStatusRequestOperation_execute__block_invoke(uint64_t a1, void *a2, void *a3)
{
  if (*(a1 + 32))
  {
    v5 = a3;
    v6 = [a2 copy];
    [v6 setFinalResponse:1];
    (*(*(a1 + 32) + 16))();
  }
}

- (BOOL)_carrierBundleStatusIsValidForCachedSubscriptionStatus:(id)a3
{
  v5 = a3;
  v6 = +[ICDeviceInfo currentDeviceInfo];
  v7 = [v6 isPhoneNumberAccessRestricted];

  if (v7)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"ICMusicSubscriptionStatusRequestOperation.m" lineNumber:417 description:@"Phone number access is restricted."];
  }

  if (([v5 carrierBundlingStatusType] - 1) > 2)
  {
    v11 = 0;
  }

  else
  {
    v8 = +[ICTelephonyController sharedController];
    v9 = [v8 phoneNumber];

    v10 = [v5 phoneNumber];
    if (v9 == v10)
    {
      v11 = 1;
    }

    else
    {
      v11 = [v9 isEqualToString:v10];
    }
  }

  return v11;
}

- (void)_cacheAccountEligibilityWithStatus:(id)a3 requestContext:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v5 identityStore];
  v8 = [v5 identity];
  v17 = 0;
  v9 = [v7 getPropertiesForUserIdentity:v8 error:&v17];
  v10 = v17;

  v11 = [v6 statusType];
  v12 = v11 == 1;
  if (v10 || v12 != [v9 isSubscriptionStatusEnabled])
  {
    v13 = +[ICUserIdentityStore defaultIdentityStore];
    v14 = [v5 identity];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __95__ICMusicSubscriptionStatusRequestOperation__cacheAccountEligibilityWithStatus_requestContext___block_invoke;
    v15[3] = &__block_descriptor_33_e41_v16__0__ICMutableUserIdentityProperties_8l;
    v16 = v12;
    [v13 updatePropertiesForUserIdentity:v14 usingBlock:v15];
  }
}

- (void)_performSubscriptionStatusURLRequestWithRequestContext:(id)a3 subscriptionStatusURL:(id)a4 allowsAuthentication:(BOOL)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [[ICStoreURLRequest alloc] initWithURL:v11 requestContext:v10];
  [(ICURLRequest *)v13 setMaxRetryCount:0];
  v14 = +[ICURLSessionManager defaultSession];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __154__ICMusicSubscriptionStatusRequestOperation__performSubscriptionStatusURLRequestWithRequestContext_subscriptionStatusURL_allowsAuthentication_completion___block_invoke;
  v18[3] = &unk_1E7BF4CB8;
  v18[4] = self;
  v19 = v10;
  v22 = a5;
  v20 = v11;
  v21 = v12;
  v15 = v11;
  v16 = v12;
  v17 = v10;
  [v14 enqueueDataRequest:v13 withCompletionHandler:v18];
}

void __154__ICMusicSubscriptionStatusRequestOperation__performSubscriptionStatusURLRequestWithRequestContext_subscriptionStatusURL_allowsAuthentication_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v54 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      *buf = 138543874;
      v49 = v8;
      v50 = 2114;
      v51 = v9;
      v52 = 2114;
      v53 = v6;
      _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_ERROR, "%{public}@ Subscription status load failed for %{public}@ due to response error: %{public}@", buf, 0x20u);
    }

    v10 = 0;
    v11 = v6;
    goto LABEL_25;
  }

  v12 = [v5 parsedBodyDictionary];
  if (!v12)
  {
    v32 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = *(a1 + 32);
      v34 = *(a1 + 40);
      *buf = 138543618;
      v49 = v33;
      v50 = 2114;
      v51 = v34;
      _os_log_impl(&dword_1B4491000, v32, OS_LOG_TYPE_ERROR, "%{public}@ Subscription status load failed for %{public}@ due to invalid response.", buf, 0x16u);
    }

    v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7102 userInfo:0];
    goto LABEL_23;
  }

  v13 = v12;
  v14 = os_log_create("com.apple.amp.iTunesCloud", "Subscription_Oversize");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(a1 + 32);
    v16 = *(a1 + 40);
    *buf = 138543874;
    v49 = v15;
    v50 = 2114;
    v51 = v16;
    v52 = 2114;
    v53 = v13;
    _os_log_impl(&dword_1B4491000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ Received subscription status response for %{public}@: %{public}@", buf, 0x20u);
  }

  v47 = 0;
  v17 = [ICMusicSubscriptionStatusResponse isValidSubscriptionStatusResponseDictionary:v13 error:&v47];
  v11 = v47;
  if (!v17)
  {
    v35 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v36 = *(a1 + 32);
      v37 = *(a1 + 40);
      *buf = 138543874;
      v49 = v36;
      v50 = 2114;
      v51 = v37;
      v52 = 2114;
      v53 = v11;
      _os_log_impl(&dword_1B4491000, v35, OS_LOG_TYPE_ERROR, "%{public}@ Failed parsing subscription status response for %{public}@ with error: %{public}@.", buf, 0x20u);
    }

LABEL_23:
    v10 = 0;
    goto LABEL_25;
  }

  v10 = [[ICMusicSubscriptionStatusResponse alloc] initWithResponseDictionary:v13 expirationDate:0];
  v18 = [(ICMusicSubscriptionStatusResponse *)v10 subscriptionStatus];
  if ([v18 statusType] == 1 || objc_msgSend(v18, "reasonType") != 4)
  {

    v11 = 0;
LABEL_25:
    v38 = *(a1 + 56);
    if (v38)
    {
      (*(v38 + 16))(v38, v10, v11);
    }

    goto LABEL_27;
  }

  v19 = [*(a1 + 40) authenticationProvider];
  v20 = v19;
  if (*(a1 + 64) == 1 && ([v19 interactionLevel] != 1 || (objc_msgSend(v18, "acceptSilentAuth"), v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "BOOLValue"), v21, v22)))
  {
    v23 = _ICLogCategorySubscription();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = *(a1 + 32);
      v25 = *(a1 + 40);
      *buf = 138543618;
      v49 = v24;
      v50 = 2114;
      v51 = v25;
      _os_log_impl(&dword_1B4491000, v23, OS_LOG_TYPE_ERROR, "%{public}@ Received invalid token response for %{public}@, authenticating...", buf, 0x16u);
    }

    v43 = *(a1 + 40);
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __154__ICMusicSubscriptionStatusRequestOperation__performSubscriptionStatusURLRequestWithRequestContext_subscriptionStatusURL_allowsAuthentication_completion___block_invoke_42;
    v44[3] = &unk_1E7BF7630;
    v42 = *(a1 + 32);
    v26 = *(a1 + 56);
    v27 = *(a1 + 40);
    *&v28 = *(a1 + 48);
    *(&v28 + 1) = v26;
    *&v29 = v42;
    *(&v29 + 1) = v27;
    v45 = v29;
    v46 = v28;
    [v20 performAuthenticationUsingRequestContext:v43 withCompletionHandler:v44];

    v30 = 0;
    v31 = 1;
  }

  else
  {
    v39 = _ICLogCategorySubscription();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v40 = *(a1 + 32);
      v41 = *(a1 + 40);
      *buf = 138543618;
      v49 = v40;
      v50 = 2114;
      v51 = v41;
      _os_log_impl(&dword_1B4491000, v39, OS_LOG_TYPE_ERROR, "%{public}@ Received invalid token response but not allowed to authenticate for: %{public}@", buf, 0x16u);
    }

    v30 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7901 userInfo:0];

    v10 = 0;
    v31 = 0;
  }

  v11 = v30;
  if ((v31 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_27:
}

void __154__ICMusicSubscriptionStatusRequestOperation__performSubscriptionStatusURLRequestWithRequestContext_subscriptionStatusURL_allowsAuthentication_completion___block_invoke_42(uint64_t a1, char a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    [*(a1 + 32) _performSubscriptionStatusURLRequestWithRequestContext:*(a1 + 40) subscriptionStatusURL:*(a1 + 48) allowsAuthentication:0 completion:*(a1 + 56)];
  }

  else
  {
    v6 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v9 = 138543618;
      v10 = v7;
      v11 = 2114;
      v12 = v5;
      _os_log_impl(&dword_1B4491000, v6, OS_LOG_TYPE_ERROR, "%{public}@ Authentication failed with error: %{public}@", &v9, 0x16u);
    }

    if (!v5)
    {
      v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7901 userInfo:0];
    }

    v8 = *(a1 + 56);
    if (v8)
    {
      (*(v8 + 16))(v8, 0, v5);
    }
  }
}

void __52__ICMusicSubscriptionStatusRequestOperation_execute__block_invoke_7(uint64_t a1, void *a2, void *a3)
{
  v47 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      v10 = *(a1 + 40);
      *buf = 138543874;
      v40 = v9;
      v41 = 2114;
      v42 = v10;
      v43 = 2114;
      v44 = v6;
      _os_log_impl(&dword_1B4491000, v8, OS_LOG_TYPE_ERROR, "%{public}@ Subscription status load failed for %{public}@ due to URL bag load failure: %{public}@", buf, 0x20u);
    }

    if (*(a1 + 88) == 1)
    {
      v11 = *(a1 + 48);
    }

    else
    {
      v11 = 0;
    }

    (*(*(a1 + 64) + 16))(*(a1 + 64), v11, v6);
    [*(a1 + 32) finishWithError:v6];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 32);
      v13 = [v5 serverCorrelationKey];
      v14 = [v5 serverEnvironment];
      *buf = 138544130;
      v40 = v12;
      v41 = 2114;
      v42 = v5;
      v43 = 2114;
      v44 = v13;
      v45 = 2114;
      v46 = v14;
      _os_log_impl(&dword_1B4491000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ Successfully loaded bag: %{public}@ (serverCorrelationKey: %{public}@; serverEnvironment: %{public}@).", buf, 0x2Au);
    }

    v15 = [v5 urlForBagKey:@"getSubscriptionStatusSrv"];
    if (*(a1 + 89) == 1)
    {
      v16 = [MEMORY[0x1E696AF60] queryItemWithName:@"minimal" value:@"true"];
      v38 = v16;
      v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v38 count:1];
      v18 = [v15 ic_URLByAppendingQueryItems:v17];

      v15 = v18;
    }

    if (v15)
    {
      v19 = *(a1 + 32);
      v20 = *(a1 + 40);
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __52__ICMusicSubscriptionStatusRequestOperation_execute__block_invoke_14;
      v26[3] = &unk_1E7BF4C40;
      v33 = *(a1 + 80);
      v26[4] = v19;
      v34 = *(a1 + 88);
      v27 = *(a1 + 48);
      v35 = *(a1 + 90);
      v28 = *(a1 + 56);
      v29 = v5;
      v30 = *(a1 + 40);
      v36 = *(a1 + 91);
      v31 = *(a1 + 64);
      v32 = *(a1 + 72);
      v37 = *(a1 + 92);
      [v19 _performSubscriptionStatusURLRequestWithRequestContext:v20 subscriptionStatusURL:v15 allowsAuthentication:1 completion:v26];
    }

    else
    {
      v21 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = *(a1 + 32);
        v23 = *(a1 + 40);
        *buf = 138543618;
        v40 = v22;
        v41 = 2114;
        v42 = v23;
        _os_log_impl(&dword_1B4491000, v21, OS_LOG_TYPE_ERROR, "%{public}@ Subscription status load failed for %{public}@ due to missing the key in the bag.", buf, 0x16u);
      }

      v24 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7201 userInfo:0];
      v25 = 0;
      if (*(a1 + 88) == 1)
      {
        v25 = *(a1 + 48);
      }

      (*(*(a1 + 64) + 16))(*(a1 + 64), v25, v24);
      [*(a1 + 32) finishWithError:v24];
    }
  }
}

void __52__ICMusicSubscriptionStatusRequestOperation_execute__block_invoke_14(uint64_t a1, void *a2, void *a3)
{
  v69 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5 | v6)
  {
    if (v5)
    {
      v7 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:*(a1 + 88) object:*(a1 + 32) file:? lineNumber:? description:?];
  }

  if (*(a1 + 96) == 1)
  {
    v5 = *(a1 + 40);
    v7 = 1;
  }

  else
  {
    v7 = 0;
    v5 = 0;
  }

LABEL_8:
  if (*(a1 + 97) != 1)
  {
    goto LABEL_28;
  }

  if ([*(a1 + 48) reason] != 1)
  {
    v9 = [*(a1 + 56) stringForBagKey:@"fuseCarrierMccMncList"];
    if (_NSIsNSString())
    {
      v10 = v9;
      v11 = [v10 length];
      v12 = v11 - 2;
      if (v11 >= 2 && [v10 hasPrefix:@"] && objc_msgSend(v10, "hasSuffix:", @"))
      {
        v13 = [v10 substringWithRange:{1, v12}];

        v10 = v13;
      }

      v14 = [v10 componentsSeparatedByString:{@", "}];
    }

    else
    {
      v14 = 0;
    }

    if ([v14 count])
    {
      v44 = v9;
      v15 = +[ICTelephonyController sharedController];
      v16 = [v15 mobileSubscriberCountryCode];
      v17 = [v15 mobileSubscriberNetworkCode];
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", v16, v17];
      v19 = [v14 containsObject:v18];
      if ((v19 & 1) == 0)
      {
        log = os_log_create("com.apple.amp.iTunesCloud", "Subscription");
        if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
        {
          v20 = *(a1 + 32);
          *buf = 138543874;
          v64 = v20;
          v65 = 2114;
          v66 = v16;
          v67 = 2114;
          v68 = v17;
          _os_log_impl(&dword_1B4491000, log, OS_LOG_TYPE_DEFAULT, "%{public}@ Skipping loading of carrier bundling status because the combination (MCC: %{public}@, MNC: %{public}@) for the current active SIM card is not in the allow list.", buf, 0x20u);
        }
      }

      v21 = v19 ^ 1;

      v9 = v44;
    }

    else
    {
      v21 = 0;
    }

    if (((v7 | v21) & 1) == 0)
    {
      goto LABEL_37;
    }

LABEL_28:
    if (!v5)
    {
LABEL_34:
      v23 = 0;
LABEL_35:
      (*(*(a1 + 72) + 16))();
      [*(a1 + 32) finishWithError:v6];

      goto LABEL_36;
    }

    if ((v7 & 1) == 0)
    {
      v22 = [v5 subscriptionStatus];
      [*(a1 + 32) _cacheAccountEligibilityWithStatus:v22 requestContext:*(a1 + 64)];
    }

LABEL_31:
    v23 = [v5 copy];
    [v23 setFinalResponse:1];
    if ((v7 & 1) == 0 && *(a1 + 98) == 1)
    {
      v24 = +[ICMusicSubscriptionStatusCache sharedCache];
      [v24 setCachedSubscriptionStatusResponse:v23 forRequestContext:*(a1 + 64) completion:0];
    }

    goto LABEL_35;
  }

  if (v7)
  {
    if (!v5)
    {
      goto LABEL_34;
    }

    goto LABEL_31;
  }

LABEL_37:
  if (!v5)
  {
    (*(*(a1 + 72) + 16))();
    [*(a1 + 32) finishWithError:v6];
    goto LABEL_36;
  }

  v59[0] = MEMORY[0x1E69E9820];
  v59[1] = 3221225472;
  v59[2] = __52__ICMusicSubscriptionStatusRequestOperation_execute__block_invoke_33;
  v59[3] = &unk_1E7BF4BE8;
  v62 = *(a1 + 80);
  v25 = v5;
  v60 = v25;
  v26 = v6;
  v61 = v26;
  v27 = MEMORY[0x1B8C781E0](v59);
  v28 = [v25 subscriptionStatus];
  v29 = [v28 mutableCopy];

  [*(a1 + 32) _cacheAccountEligibilityWithStatus:v29 requestContext:*(a1 + 64)];
  v30 = +[ICDeviceInfo currentDeviceInfo];
  v31 = [v30 hasCellularDataCapability];

  if ((v31 & 1) == 0)
  {
    [v29 setCarrierBundlingStatusType:3];
    v34 = 0;
LABEL_58:
    (v27)[2](v27, v29, !v34);
    v37 = 0;
    goto LABEL_59;
  }

  v32 = [v29 carrierBundlingStatusType] - 1;
  v33 = [*(a1 + 48) carrierBundleProvisioningStyle];
  if (v33 == 1)
  {
    v34 = v32 >= 2 && [v29 statusType] != 1;
    v35 = [v29 carrierBundlingStatusType] == 2 && objc_msgSend(v29, "statusType") == 0;
  }

  else
  {
    v35 = 0;
    v34 = v33 == 2;
  }

  if (*(a1 + 99) == 1)
  {
    v45 = v32;
    v36 = [*(a1 + 40) subscriptionStatus];
    if (v36 && [*(a1 + 32) _carrierBundleStatusIsValidForCachedSubscriptionStatus:v36])
    {
      if (v45 >= 2)
      {
        [v29 setCarrierBundlingStatusType:{objc_msgSend(v36, "carrierBundlingStatusType")}];
      }

      v46 = [v36 cellularOperatorName];
      [v29 setCellularOperatorName:v46];

      v47 = [v36 phoneNumber];
      [v29 setPhoneNumber:v47];

      v48 = [v36 sessionIdentifier];
      [v29 setSessionIdentifier:v48];
    }
  }

  if (!v35)
  {
    goto LABEL_58;
  }

  v37 = 1;
LABEL_59:
  v38 = [[ICMusicSubscriptionCarrierBundlingEligibilityOperation alloc] initWithRequestContext:*(a1 + 64)];
  if ([*(a1 + 48) reason] == 1)
  {
    [(ICMusicSubscriptionCarrierBundlingEligibilityOperation *)v38 setDeepLink:1];
  }

  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = __52__ICMusicSubscriptionStatusRequestOperation_execute__block_invoke_2_36;
  v49[3] = &unk_1E7BF4C18;
  v56 = v37;
  v55 = v27;
  v50 = v29;
  v57 = v34;
  v58 = *(a1 + 98);
  v51 = v25;
  v39 = *(a1 + 64);
  v40 = *(a1 + 32);
  v52 = v39;
  v53 = v40;
  v54 = v26;
  v41 = v29;
  v42 = v27;
  [(ICMusicSubscriptionCarrierBundlingEligibilityOperation *)v38 setResponseHandler:v49];
  [*(a1 + 32) enqueueChildOperation:v38];

LABEL_36:
}

void __52__ICMusicSubscriptionStatusRequestOperation_execute__block_invoke_33(uint64_t a1, void *a2, uint64_t a3)
{
  if (*(a1 + 48))
  {
    v5 = *(a1 + 32);
    v6 = a2;
    v7 = [v5 copy];
    [v7 setSubscriptionStatus:v6];

    [v7 setFinalResponse:a3];
    (*(*(a1 + 48) + 16))();
  }
}

void __52__ICMusicSubscriptionStatusRequestOperation_execute__block_invoke_2_36(uint64_t a1, void *a2, void *a3)
{
  v20 = a2;
  v5 = a3;
  if (v20)
  {
    v6 = [v20 carrierBundlingStatusType];
    v7 = v6;
    if (*(a1 + 80) == 1 && v6 == 1)
    {
      (*(*(a1 + 72) + 16))();
    }

    v9 = *(a1 + 32);
    v10 = [v20 cellularProviderName];
    [v9 setCellularOperatorName:v10];

    v11 = *(a1 + 32);
    v12 = [v20 phoneNumber];
    [v11 setPhoneNumber:v12];

    if (v7 == 1)
    {
      if (![*(a1 + 32) statusType] || objc_msgSend(*(a1 + 32), "statusType") == 2)
      {
        v13 = 2;
LABEL_23:
        [*(a1 + 32) setCarrierBundlingStatusType:v13];
        goto LABEL_24;
      }

      if ([*(a1 + 32) carrierBundlingStatusType] == 2)
      {
LABEL_24:
        if ([v20 isFamilySubscription])
        {
          [*(a1 + 32) setReasonType:2];
        }

        v14 = [v20 SMSSessionIdentifier];
        if (!v14)
        {
          v14 = [v20 headerEnrichmentSessionIdentifier];
        }

        [*(a1 + 32) setSessionIdentifier:v14];
        if (*(a1 + 80) == 1 && v7 != 1)
        {
          (*(*(a1 + 72) + 16))();
        }

        goto LABEL_31;
      }
    }

    v16 = [v5 domain];
    if ([v16 isEqualToString:@"ICError"])
    {
      v17 = [v5 code];

      if (v17 == -7201)
      {
        v13 = 3;
        goto LABEL_23;
      }
    }

    else
    {
    }

    v13 = v7;
    goto LABEL_23;
  }

  v14 = [v5 msv_underlyingError];
  v15 = [v14 domain];
  if ([v15 isEqualToString:@"ICMusicSubscriptionCarrierBundlingServerError"])
  {
    [*(a1 + 32) setCarrierBundlingErrorCode:{objc_msgSend(v14, "code")}];
  }

  [*(a1 + 32) setCarrierBundlingStatusType:0];
  if (*(a1 + 80) == 1)
  {
    (*(*(a1 + 72) + 16))();
  }

LABEL_31:
  if (*(a1 + 81) == 1 && (*(a1 + 80) & 1) == 0)
  {
    (*(*(a1 + 72) + 16))();
  }

  if (*(a1 + 82) == 1)
  {
    v18 = [*(a1 + 40) copy];
    [v18 setSubscriptionStatus:*(a1 + 32)];
    [v18 setFinalResponse:1];
    v19 = +[ICMusicSubscriptionStatusCache sharedCache];
    [v19 setCachedSubscriptionStatusResponse:v18 forRequestContext:*(a1 + 48) completion:0];
  }

  [*(a1 + 56) finishWithError:*(a1 + 64)];
}

- (ICMusicSubscriptionStatusRequestOperation)initWithRequest:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ICMusicSubscriptionStatusRequestOperation;
  v5 = [(ICAsyncOperation *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    request = v5->_request;
    v5->_request = v6;
  }

  return v5;
}

@end