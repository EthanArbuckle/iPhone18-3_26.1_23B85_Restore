@interface VSViewServiceViewController
- (VSViewServiceViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)_identityProviderRequestForViewServiceRequest:(id)request withAccount:(id)account;
- (id)_viewServiceResponseWithIdentityProviderResponse:(id)response;
- (void)_completeRequest:(id)request withResponse:(id)response;
- (void)_completeRequestWithResponse:(id)response;
- (void)_completeRequestWithResponse:(id)response fromIdentityProvider:(id)provider;
- (void)_determinePreAuthAppIsAuthorized:(id)authorized completion:(id)completion;
- (void)_didCancelRequest;
- (void)_didDetermineIdentityProvider:(id)provider withPickerViewController:(id)controller;
- (void)_dismissInHostIfNecessary;
- (void)_performRequest:(id)request withIdentifier:(id)identifier;
- (void)_performRequestInternal:(id)internal withID:(id)d identityProviders:(id)providers accounts:(id)accounts currentStorefrontCode:(id)code allStorefronts:(id)storefronts;
- (void)_performRequestWithIdentityProvider:(id)provider account:(id)account;
- (void)_presentInHostIfNecessary;
- (void)_request:(id)_request didFailWithError:(id)error;
- (void)_requestDidFailWithError:(id)error;
- (void)_showIdentityProviderPickerViewControllerWithIdentityProviders:(id)providers currentStorefrontCode:(id)code allStorefronts:(id)storefronts;
- (void)_willAppearInRemoteViewController;
- (void)dealloc;
- (void)identityProviderPickerViewController:(id)controller didPickIdentityProvider:(id)provider;
- (void)identityProviderPickerViewControllerDidPickAdditionalIdentityProviders:(id)providers;
- (void)identityProviderViewController:(id)controller didAuthenticateAccount:(id)account forRequest:(id)request;
- (void)identityProviderViewController:(id)controller didFinishRequest:(id)request withResult:(id)result;
- (void)identityProviderViewControllerDidCancel:(id)cancel;
- (void)identityProviderViewControllerDidFinishLoading:(id)loading;
- (void)remoteNotifier:(id)notifier didReceiveRemoteNotificationWithUserInfo:(id)info;
- (void)setCurrentRequest:(id)request;
@end

@implementation VSViewServiceViewController

- (VSViewServiceViewController)initWithNibName:(id)name bundle:(id)bundle
{
  bundleCopy = bundle;
  nameCopy = name;
  VSRequireMainThread();
  v31.receiver = self;
  v31.super_class = VSViewServiceViewController;
  v8 = [(VSViewServiceViewController *)&v31 initWithNibName:nameCopy bundle:bundleCopy];

  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x277CE22A0]);
    storage = v8->_storage;
    v8->_storage = v9;

    defaultRestrictionsCenter = [MEMORY[0x277CE22B8] defaultRestrictionsCenter];
    restrictionsCenter = v8->_restrictionsCenter;
    v8->_restrictionsCenter = defaultRestrictionsCenter;

    v13 = objc_alloc_init(MEMORY[0x277CCABD8]);
    privateQueue = v8->_privateQueue;
    v8->_privateQueue = v13;

    [(NSOperationQueue *)v8->_privateQueue setName:@"VSViewServiceViewController"];
    v15 = objc_alloc(MEMORY[0x277CE22B0]);
    v16 = [v15 initWithNotificationName:*MEMORY[0x277CE2440]];
    remoteNotifier = v8->_remoteNotifier;
    v8->_remoteNotifier = v16;

    [(VSRemoteNotifier *)v8->_remoteNotifier setDelegate:v8];
    v18 = objc_alloc_init(MEMORY[0x277CE22A8]);
    preferences = v8->_preferences;
    v8->_preferences = v18;

    v20 = objc_alloc_init(VSTopShelfPurger);
    topShelfPurger = v8->_topShelfPurger;
    v8->_topShelfPurger = v20;

    v22 = objc_alloc_init(MEMORY[0x277CE2298]);
    currentRequest = v8->_currentRequest;
    v8->_currentRequest = v22;

    v24 = objc_alloc_init(MEMORY[0x277CE2298]);
    currentRequestID = v8->_currentRequestID;
    v8->_currentRequestID = v24;

    v26 = objc_alloc_init(MEMORY[0x277D757A0]);
    navController = v8->_navController;
    v8->_navController = v26;

    [(VSViewServiceViewController *)v8 addChildViewController:v8->_navController];
    view = [(UINavigationController *)v8->_navController view];
    view2 = [(VSViewServiceViewController *)v8 view];
    [view2 bounds];
    [view setFrame:?];
    [view2 addSubview:view];
    [view setAutoresizingMask:18];
    [(UINavigationController *)v8->_navController didMoveToParentViewController:v8];
  }

  return v8;
}

- (void)dealloc
{
  VSRequireMainThread();
  v3.receiver = self;
  v3.super_class = VSViewServiceViewController;
  [(VSViewServiceViewController *)&v3 dealloc];
}

- (void)_willAppearInRemoteViewController
{
  v12 = *MEMORY[0x277D85DE8];
  _hostApplicationBundleIdentifier = [(VSViewServiceViewController *)self _hostApplicationBundleIdentifier];
  v4 = VSDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v9 = objc_opt_class();
    v10 = 2112;
    v11 = _hostApplicationBundleIdentifier;
    v5 = v9;
    _os_log_impl(&dword_270DD4000, v4, OS_LOG_TYPE_DEFAULT, "%@: Appearing in client: %@", buf, 0x16u);
  }

  v7.receiver = self;
  v7.super_class = VSViewServiceViewController;
  [(VSViewServiceViewController *)&v7 _willAppearInRemoteViewController];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_performRequest:(id)request withIdentifier:(id)identifier
{
  v19 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  identifierCopy = identifier;
  v8 = VSDefaultLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = requestCopy;
    _os_log_impl(&dword_270DD4000, v8, OS_LOG_TYPE_DEFAULT, "Received view service request: %@", buf, 0xCu);
  }

  storage = [(VSViewServiceViewController *)self storage];
  accountStore = [storage accountStore];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __62__VSViewServiceViewController__performRequest_withIdentifier___block_invoke;
  v14[3] = &unk_279E1A190;
  v14[4] = self;
  v15 = requestCopy;
  v16 = identifierCopy;
  v11 = identifierCopy;
  v12 = requestCopy;
  [accountStore fetchAccountsWithCompletionHandler:v14];

  v13 = *MEMORY[0x277D85DE8];
}

void __62__VSViewServiceViewController__performRequest_withIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__VSViewServiceViewController__performRequest_withIdentifier___block_invoke_2;
  v7[3] = &unk_279E1A168;
  v4 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v4;
  v9 = *(a1 + 48);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __62__VSViewServiceViewController__performRequest_withIdentifier___block_invoke_7;
  v5[3] = &unk_279E19ED0;
  v5[4] = *(a1 + 32);
  v6 = *(a1 + 48);
  [a2 unwrapObject:v7 error:v5];
}

void __62__VSViewServiceViewController__performRequest_withIdentifier___block_invoke_2(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] _hostApplicationBundleIdentifier];
  memset(v36, 0, sizeof(v36));
  v5 = a1[4];
  if (v5)
  {
    [v5 _hostAuditToken];
  }

  v6 = objc_alloc_init(MEMORY[0x277CE2210]);
  [v6 setBundleIdentifier:v4];
  v7 = [MEMORY[0x277CBEA90] dataWithBytes:v36 length:32];
  [v6 setTokenBytes:v7];

  [a1[4] setAuditToken:v6];
  v8 = objc_alloc_init(VSViewServiceRequestPreparationOperation);
  v9 = [a1[4] restrictionsCenter];
  -[VSViewServiceRequestPreparationOperation setAccountModificationAllowed:](v8, "setAccountModificationAllowed:", [v9 isAcountModificationAllowed]);

  v10 = a1[4];
  if (v10)
  {
    [v10 _hostAuditToken];
  }

  else
  {
    memset(v35, 0, sizeof(v35));
  }

  [(VSViewServiceRequestPreparationOperation *)v8 setHostAuditToken:v35];
  -[VSViewServiceRequestPreparationOperation setHostProcessIdentifier:](v8, "setHostProcessIdentifier:", [a1[4] _hostProcessIdentifier]);
  [(VSViewServiceRequestPreparationOperation *)v8 setAuditToken:v6];
  v11 = MEMORY[0x277CE2298];
  v12 = [v3 firstObject];
  v13 = [v11 optionalWithObject:v12];
  [(VSViewServiceRequestPreparationOperation *)v8 setCurrentAccount:v13];

  -[VSViewServiceRequestPreparationOperation setRequestAllowsPrivacyUI:](v8, "setRequestAllowsPrivacyUI:", [a1[5] allowsPrivacyUI]);
  -[VSViewServiceRequestPreparationOperation setRequestRequiresPrivacyUI:](v8, "setRequestRequiresPrivacyUI:", [a1[5] requiresPrivacyUI]);
  v14 = [a1[5] supportedIdentityProviderIdentifiers];
  [(VSViewServiceRequestPreparationOperation *)v8 setSupportedIdentityProviderIdentifiers:v14];

  v15 = [a1[5] featuredIdentityProviderIdentifiers];
  [(VSViewServiceRequestPreparationOperation *)v8 setFeaturedIdentityProviderIdentifiers:v15];

  v16 = [a1[5] applicationAccountProviders];
  [(VSViewServiceRequestPreparationOperation *)v8 setApplicationAccountProviders:v16];

  -[VSViewServiceRequestPreparationOperation setShouldInferFeaturedProviders:](v8, "setShouldInferFeaturedProviders:", [a1[5] shouldInferFeaturedProviders]);
  -[VSViewServiceRequestPreparationOperation setShouldReturnErrorOnTVProviderFeatureUnsupportedByStorefront:](v8, "setShouldReturnErrorOnTVProviderFeatureUnsupportedByStorefront:", [a1[5] shouldReturnErrorOnTVProviderFeatureUnsupportedByStorefront]);
  v17 = [a1[5] supportedIdentityProviderIdentifiers];
  if ([v17 count])
  {
    v18 = 0;
  }

  else
  {
    v18 = [a1[5] allowsAuthenticationUI];
  }

  v19 = [a1[4] privateQueue];
  if (v18)
  {
    v20 = objc_alloc_init(MEMORY[0x277CE22E8]);
    v21 = objc_alloc_init(VSAMSStorefrontFetchAllOperation);
    v22 = v20;
    [(VSViewServiceRequestPreparationOperation *)v8 addDependency:v22];
    [(VSViewServiceRequestPreparationOperation *)v8 addDependency:v21];
    [v19 addOperation:v22];

    [v19 addOperation:v21];
  }

  else
  {
    v21 = 0;
    v22 = 0;
  }

  v28 = v22;
  v29 = v21;
  v30 = a1[4];
  v31 = a1[6];
  v32 = v8;
  v33 = a1[5];
  v34 = v3;
  v23 = v3;
  v24 = v8;
  v25 = v21;
  v26 = v22;
  v27 = VSMainThreadOperationWithBlock();
  [v27 addDependency:v24];
  [v19 addOperation:v24];
  VSEnqueueCompletionOperation();
}

void __62__VSViewServiceViewController__performRequest_withIdentifier___block_invoke_3(uint64_t a1)
{
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x3032000000;
  v31[3] = __Block_byref_object_copy__3;
  v31[4] = __Block_byref_object_dispose__3;
  v32 = 0;
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x3032000000;
  v29[3] = __Block_byref_object_copy__3;
  v29[4] = __Block_byref_object_dispose__3;
  v30 = 0;
  v2 = *(a1 + 32);
  if (v2 && *(a1 + 40))
  {
    v3 = v2;
    v4 = [v3 result];
    v5 = [v4 forceUnwrapObject];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __62__VSViewServiceViewController__performRequest_withIdentifier___block_invoke_82;
    v28[3] = &unk_279E19A40;
    v28[4] = v31;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __62__VSViewServiceViewController__performRequest_withIdentifier___block_invoke_2_84;
    v26[3] = &unk_279E19ED0;
    v6 = *(a1 + 56);
    v26[4] = *(a1 + 48);
    v27 = v6;
    [v5 unwrapObject:v28 error:v26];

    v7 = *(a1 + 40);
    if (!v7)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The fetchAllSfOperationOrNil parameter must not be nil."];
      v7 = *(a1 + 40);
    }

    v8 = v7;
    v9 = [v8 result];
    v10 = [v9 forceUnwrapObject];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __62__VSViewServiceViewController__performRequest_withIdentifier___block_invoke_3_89;
    v25[3] = &unk_279E1A0F0;
    v25[4] = v29;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __62__VSViewServiceViewController__performRequest_withIdentifier___block_invoke_4;
    v23[3] = &unk_279E19ED0;
    v11 = *(a1 + 56);
    v23[4] = *(a1 + 48);
    v24 = v11;
    [v10 unwrapObject:v25 error:v23];
  }

  v12 = [*(a1 + 64) result];
  v13 = [v12 forceUnwrapObject];

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __62__VSViewServiceViewController__performRequest_withIdentifier___block_invoke_5;
  v17[3] = &unk_279E1A118;
  v17[4] = *(a1 + 48);
  v18 = *(a1 + 72);
  v19 = *(a1 + 56);
  v20 = *(a1 + 80);
  v21 = v31;
  v22 = v29;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __62__VSViewServiceViewController__performRequest_withIdentifier___block_invoke_6;
  v15[3] = &unk_279E19ED0;
  v14 = *(a1 + 56);
  v15[4] = *(a1 + 48);
  v16 = v14;
  [v13 unwrapObject:v17 error:v15];

  _Block_object_dispose(v29, 8);
  _Block_object_dispose(v31, 8);
}

void __62__VSViewServiceViewController__performRequest_withIdentifier___block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = VSErrorLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __62__VSViewServiceViewController__performRequest_withIdentifier___block_invoke_7_cold_1();
  }

  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = v3;
  v5 = v3;
  VSPerformCompletionHandler();
}

void __62__VSViewServiceViewController__performRequest_withIdentifier___block_invoke_92(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  VSPerformBlockOnMainThread();
}

- (void)setCurrentRequest:(id)request
{
  requestCopy = request;
  if (self->_currentRequest != requestCopy)
  {
    _hostApplicationBundleIdentifier = [(VSViewServiceViewController *)self _hostApplicationBundleIdentifier];
    v6 = [MEMORY[0x277CC1E70] vs_applicationRecordWithBundleIdentifier:_hostApplicationBundleIdentifier];
    v23 = 0;
    v24 = &v23;
    v25 = 0x3032000000;
    v26 = __Block_byref_object_copy__3;
    v27 = __Block_byref_object_dispose__3;
    v28 = 0;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __49__VSViewServiceViewController_setCurrentRequest___block_invoke;
    v22[3] = &unk_279E1A1B8;
    v22[4] = &v23;
    [(VSOptional *)requestCopy conditionallyUnwrapObject:v22];
    localizedName = [v6 localizedName];
    if (localizedName)
    {
      localizedName2 = [v6 localizedName];

      if (!localizedName2)
      {
        [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The [appRecordOrNil localizedName] parameter must not be nil."];
      }

      localizedName3 = [v6 localizedName];
    }

    else
    {
      localizedName3 = &stru_2880B8BB0;
    }

    v10 = v24[5];
    v11 = MEMORY[0x277CE2298];
    v12 = [(__CFString *)localizedName3 copy];
    v13 = [v11 optionalWithObject:v12];
    [v10 setRequestingAppDisplayName:v13];

    v14 = MEMORY[0x277CCABB0];
    iTunesMetadata = [v6 iTunesMetadata];
    v16 = [v14 numberWithUnsignedLongLong:{objc_msgSend(iTunesMetadata, "storeItemIdentifier")}];

    stringValue = [v16 stringValue];
    [v24[5] setRequestingAppAdamID:stringValue];
    v18 = MEMORY[0x277CE2298];
    v19 = [v24[5] copy];
    v20 = [v18 optionalWithObject:v19];
    currentRequest = self->_currentRequest;
    self->_currentRequest = v20;

    _Block_object_dispose(&v23, 8);
  }
}

uint64_t __49__VSViewServiceViewController_setCurrentRequest___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 copy];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8]();
}

- (void)_performRequestInternal:(id)internal withID:(id)d identityProviders:(id)providers accounts:(id)accounts currentStorefrontCode:(id)code allStorefronts:(id)storefronts
{
  v61 = *MEMORY[0x277D85DE8];
  internalCopy = internal;
  dCopy = d;
  providersCopy = providers;
  accountsCopy = accounts;
  codeCopy = code;
  storefrontsCopy = storefronts;
  if (internalCopy)
  {
    if (dCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The request parameter must not be nil."];
    if (dCopy)
    {
      goto LABEL_3;
    }
  }

  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The requestID parameter must not be nil."];
LABEL_3:
  v53 = dCopy;
  if (!providersCopy)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The identityProviders parameter must not be nil."];
  }

  v17 = [MEMORY[0x277CE2298] optionalWithObject:internalCopy];
  [(VSViewServiceViewController *)self setCurrentRequest:v17];

  v18 = MEMORY[0x277CE2298];
  v19 = [dCopy copy];
  v20 = [v18 optionalWithObject:v19];
  [(VSViewServiceViewController *)self setCurrentRequestID:v20];

  [(VSViewServiceViewController *)self setDidAuthenticateAccount:0];
  [(VSViewServiceViewController *)self setIdentityProviderPickerRequired:0];
  accountMetadataRequest = [internalCopy accountMetadataRequest];
  v22 = accountMetadataRequest;
  if (!accountMetadataRequest)
  {
    v27 = objc_alloc_init(MEMORY[0x277CE2338]);
    [(VSViewServiceViewController *)self _completeRequestWithResponse:v27];

    goto LABEL_42;
  }

  accountProviderAuthenticationToken = [accountMetadataRequest accountProviderAuthenticationToken];

  if (accountProviderAuthenticationToken)
  {
    v24 = VSDefaultLogObject();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_270DD4000, v24, OS_LOG_TYPE_DEFAULT, "Request has account provider authentication token.", &buf, 2u);
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v59 = 0x2020000000;
    v60 = 0;
    if ([accountsCopy count])
    {
      v25 = [accountsCopy objectAtIndex:0];
      authenticationToken = [v25 authenticationToken];
      v57[0] = MEMORY[0x277D85DD0];
      v57[1] = 3221225472;
      v57[2] = __126__VSViewServiceViewController__performRequestInternal_withID_identityProviders_accounts_currentStorefrontCode_allStorefronts___block_invoke;
      v57[3] = &unk_279E1A1E0;
      v57[4] = &buf;
      [authenticationToken conditionallyUnwrapObject:v57];

      if ((*(*(&buf + 1) + 24) & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    else
    {
      *(*(&buf + 1) + 24) = 1;
    }

    if ([internalCopy allowsAuthenticationUI] && objc_msgSend(providersCopy, "count") == 1)
    {
LABEL_21:
      _Block_object_dispose(&buf, 8);
      goto LABEL_22;
    }

LABEL_18:
    v28 = VSErrorLogObject();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      [VSViewServiceViewController _performRequestInternal:withID:identityProviders:accounts:currentStorefrontCode:allStorefronts:];
    }

    v29 = VSPublicError();
    [(VSViewServiceViewController *)self _requestDidFailWithError:v29];

    goto LABEL_21;
  }

LABEL_22:
  if ([accountsCopy count])
  {
    v50 = [accountsCopy objectAtIndex:0];
    identityProviderID = [v50 identityProviderID];
    forceUnwrapObject = [identityProviderID forceUnwrapObject];

    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = __126__VSViewServiceViewController__performRequestInternal_withID_identityProviders_accounts_currentStorefrontCode_allStorefronts___block_invoke_114;
    v55[3] = &unk_279E1A208;
    v32 = forceUnwrapObject;
    v56 = v32;
    v33 = [providersCopy indexOfObjectPassingTest:v55];
    if (v33 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"Current provider not included among providers."];
    }

    v34 = [providersCopy objectAtIndex:v33];
    supportedAccountProviderAuthenticationSchemes = [internalCopy supportedAccountProviderAuthenticationSchemes];
    v36 = [v34 isFullySupportedForRequestsExpectingAuthenticationSchemes:supportedAccountProviderAuthenticationSchemes];

    if (v36)
    {
      [(VSViewServiceViewController *)self _performRequestWithIdentityProvider:v34 account:v50];
    }

    else
    {
      v41 = VSDefaultLogObject();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v34;
        _os_log_impl(&dword_270DD4000, v41, OS_LOG_TYPE_DEFAULT, "Identity provider %@ is not supported.", &buf, 0xCu);
      }

      providerID = [v34 providerID];
      forceUnwrapObject2 = [providerID forceUnwrapObject];

      v44 = VSPublicUnsupportedProviderError();
      if (([v34 isDeveloper] & 1) == 0)
      {
        v45 = MEMORY[0x277CE2288];
        _hostApplicationBundleIdentifier = [(VSViewServiceViewController *)self _hostApplicationBundleIdentifier];
        [v45 recordMetadataRequestWithProviderIdentifier:forceUnwrapObject2 channelAdamID:_hostApplicationBundleIdentifier fulfilledByProvider:0 error:v44];
      }

      [(VSViewServiceViewController *)self _requestDidFailWithError:v44];
    }
  }

  else if ([internalCopy allowsAuthenticationUI])
  {
    if ([providersCopy count] == 1)
    {
      v37 = VSDefaultLogObject();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_270DD4000, v37, OS_LOG_TYPE_DEFAULT, "Will skip identity provider picker due to single provider.", &buf, 2u);
      }

      firstObject = [providersCopy firstObject];
      v39 = firstObject == 0;

      if (v39)
      {
        [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The [identityProviders firstObject] parameter must not be nil."];
      }

      firstObject2 = [providersCopy firstObject];
      [(VSViewServiceViewController *)self _didDetermineIdentityProvider:firstObject2 withPickerViewController:0];
    }

    else
    {
      [(VSViewServiceViewController *)self setIdentityProviderPickerRequired:1];
      [(VSViewServiceViewController *)self _showIdentityProviderPickerViewControllerWithIdentityProviders:providersCopy currentStorefrontCode:codeCopy allStorefronts:storefrontsCopy];
    }
  }

  else
  {
    v47 = objc_alloc_init(MEMORY[0x277CE2338]);
    v48 = objc_alloc_init(MEMORY[0x277CE21D8]);
    [v47 setAccountMetadata:v48];

    [(VSViewServiceViewController *)self _completeRequestWithResponse:v47];
  }

LABEL_42:

  v49 = *MEMORY[0x277D85DE8];
}

uint64_t __126__VSViewServiceViewController__performRequestInternal_withID_identityProviders_accounts_currentStorefrontCode_allStorefronts___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 isFromUnsupportedProvider];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t __126__VSViewServiceViewController__performRequestInternal_withID_identityProviders_accounts_currentStorefrontCode_allStorefronts___block_invoke_114(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v5 = *(a1 + 32);
  v6 = [a2 providerID];
  v7 = [v6 forceUnwrapObject];
  v8 = [v5 isEqual:v7];

  if (v8)
  {
    *a4 = 1;
  }

  return v8;
}

- (id)_identityProviderRequestForViewServiceRequest:(id)request withAccount:(id)account
{
  requestCopy = request;
  accountCopy = account;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__3;
  v19 = __Block_byref_object_dispose__3;
  v20 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __89__VSViewServiceViewController__identityProviderRequestForViewServiceRequest_withAccount___block_invoke;
  v11[3] = &unk_279E1A230;
  v14 = &v15;
  v8 = accountCopy;
  v12 = v8;
  selfCopy = self;
  [requestCopy conditionallyUnwrapObject:v11 otherwise:&__block_literal_global_12];
  v9 = [MEMORY[0x277CE2298] optionalWithObject:v16[5]];

  _Block_object_dispose(&v15, 8);

  return v9;
}

void __89__VSViewServiceViewController__identityProviderRequestForViewServiceRequest_withAccount___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 requestingAppDisplayName];
  v13 = [v4 forceUnwrapObject];

  v5 = [v3 requestingAppAdamID];
  v6 = [v3 accountProviderAuthenticationToken];
  v7 = [v3 accountMetadataRequest];

  if (v7)
  {
    v8 = *(a1 + 32);
    v9 = [*(a1 + 40) storage];
    v10 = [VSIdentityProviderRequest accountMetadataRequestWithAccount:v8 storage:v9 accountMetadataRequest:v7 requestingAppDisplayName:v13 requestingAppAdamID:v5 accountProviderAuthenticationToken:v6];
    v11 = *(*(a1 + 48) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }
}

void __89__VSViewServiceViewController__identityProviderRequestForViewServiceRequest_withAccount___block_invoke_2()
{
  v0 = VSDefaultLogObject();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_270DD4000, v0, OS_LOG_TYPE_DEFAULT, "No view service request to use to construct identity provider request.", v1, 2u);
  }
}

- (void)_determinePreAuthAppIsAuthorized:(id)authorized completion:(id)completion
{
  v36 = *MEMORY[0x277D85DE8];
  authorizedCopy = authorized;
  completionCopy = completion;
  if ([authorizedCopy isDeveloper])
  {
    completionCopy[2](completionCopy, 1, 0);
  }

  else
  {
    nonChannelAppDescriptions = [authorizedCopy nonChannelAppDescriptions];
    if ([nonChannelAppDescriptions count])
    {
      v29 = authorizedCopy;
      v9 = MEMORY[0x277CBE660];
      if (!nonChannelAppDescriptions)
      {
        [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The providerAppDescriptionsOrNil parameter must not be nil."];
      }

      v28 = nonChannelAppDescriptions;
      v10 = nonChannelAppDescriptions;
      _hostApplicationBundleIdentifier = [(VSViewServiceViewController *)self _hostApplicationBundleIdentifier];
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v12 = v10;
      v13 = [v12 countByEnumeratingWithState:&v30 objects:v35 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v31;
        v16 = *v9;
        while (2)
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v31 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v18 = *(*(&v30 + 1) + 8 * i);
            bundleID = [v18 bundleID];
            if (bundleID)
            {
              v20 = bundleID;
              bundleID2 = [v18 bundleID];

              if (!bundleID2)
              {
                [MEMORY[0x277CBEAD8] raise:v16 format:@"The [description bundleID] parameter must not be nil."];
              }

              bundleID3 = [v18 bundleID];
              v23 = [_hostApplicationBundleIdentifier isEqualToString:bundleID3];

              if (v23)
              {

                v24 = VSDefaultLogObject();
                if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&dword_270DD4000, v24, OS_LOG_TYPE_DEFAULT, "Requesting app is an identity provider app, can allow pre-auth.", buf, 2u);
                }

                v25 = 1;
                goto LABEL_26;
              }
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v30 objects:v35 count:16];
          if (v14)
          {
            continue;
          }

          break;
        }
      }

      v24 = VSErrorLogObject();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [VSViewServiceViewController _determinePreAuthAppIsAuthorized:completion:];
      }

      v25 = 0;
LABEL_26:
      nonChannelAppDescriptions = v28;
      authorizedCopy = v29;

      completionCopy[2](completionCopy, v25, 0);
    }

    else
    {
      v26 = VSDefaultLogObject();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_270DD4000, v26, OS_LOG_TYPE_DEFAULT, "Identity provider has no apps, will reject any pre-auth requests.", buf, 2u);
      }

      completionCopy[2](completionCopy, 0, 0);
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)_performRequestWithIdentityProvider:(id)provider account:(id)account
{
  providerCopy = provider;
  accountCopy = account;
  currentRequest = [(VSViewServiceViewController *)self currentRequest];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __75__VSViewServiceViewController__performRequestWithIdentityProvider_account___block_invoke;
  v11[3] = &unk_279E1A2A8;
  v11[4] = self;
  v12 = providerCopy;
  v13 = accountCopy;
  v9 = accountCopy;
  v10 = providerCopy;
  [currentRequest conditionallyUnwrapObject:v11 otherwise:&__block_literal_global_145];
}

void __75__VSViewServiceViewController__performRequestWithIdentityProvider_account___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __75__VSViewServiceViewController__performRequestWithIdentityProvider_account___block_invoke_2;
  v7[3] = &unk_279E1A280;
  v8 = v3;
  v9 = v5;
  v10 = *(a1 + 48);
  v11 = *(a1 + 40);
  v6 = v3;
  [v5 _determinePreAuthAppIsAuthorized:v4 completion:v7];
}

void __75__VSViewServiceViewController__performRequestWithIdentityProvider_account___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = VSErrorLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __75__VSViewServiceViewController__performRequestWithIdentityProvider_account___block_invoke_2_cold_1();
    }
  }

  else
  {
    if (![*(a1 + 32) isPreAuthRequest] || (a2 & 1) != 0)
    {
      v8 = *(a1 + 40);
      v9 = [v8 currentRequest];
      v7 = [v8 _identityProviderRequestForViewServiceRequest:v9 withAccount:*(a1 + 48)];

      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __75__VSViewServiceViewController__performRequestWithIdentityProvider_account___block_invoke_135;
      v12[3] = &unk_279E1A258;
      v10 = *(a1 + 56);
      v11 = *(a1 + 40);
      v13 = v10;
      v14 = v11;
      [v7 conditionallyUnwrapObject:v12 otherwise:&__block_literal_global_141];

      goto LABEL_10;
    }

    v6 = VSErrorLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __75__VSViewServiceViewController__performRequestWithIdentityProvider_account___block_invoke_2_cold_2();
    }
  }

  v7 = VSPublicError();
  [*(a1 + 40) _requestDidFailWithError:v7];
LABEL_10:
}

void __75__VSViewServiceViewController__performRequestWithIdentityProvider_account___block_invoke_135(uint64_t a1, void *a2)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [[VSIdentityProviderViewController alloc] initWithIdentityProvider:*(a1 + 32)];
  [(VSIdentityProviderViewController *)v4 setDelegate:*(a1 + 40)];
  v5 = [*(a1 + 40) auditToken];
  [(VSIdentityProviderViewController *)v4 setAuditToken:v5];

  -[VSIdentityProviderViewController setCancellationAllowed:](v4, "setCancellationAllowed:", [*(a1 + 40) isIdentityProviderPickerRequired] ^ 1);
  [(VSIdentityProviderViewController *)v4 enqueueRequest:v3];

  LODWORD(v3) = [*(a1 + 40) isIdentityProviderPickerRequired];
  v6 = [*(a1 + 40) navController];
  v7 = v6;
  if (v3)
  {
    [v6 pushViewController:v4 animated:1];
  }

  else
  {
    v10[0] = v4;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
    [v7 setViewControllers:v8];
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __75__VSViewServiceViewController__performRequestWithIdentityProvider_account___block_invoke_2_139()
{
  v0 = VSDefaultLogObject();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_270DD4000, v0, OS_LOG_TYPE_DEFAULT, "No identity provider request to submit.", v1, 2u);
  }
}

void __75__VSViewServiceViewController__performRequestWithIdentityProvider_account___block_invoke_143()
{
  v0 = VSErrorLogObject();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __75__VSViewServiceViewController__performRequestWithIdentityProvider_account___block_invoke_143_cold_1();
  }
}

- (void)_showIdentityProviderPickerViewControllerWithIdentityProviders:(id)providers currentStorefrontCode:(id)code allStorefronts:(id)storefronts
{
  codeCopy = code;
  storefrontsCopy = storefronts;
  providersCopy = providers;
  v11 = +[VSViewControllerFactory sharedFactory];
  v12 = [v11 identityProviderPickerViewControllerWithIdentityProviders:providersCopy];

  forceUnwrapObject = [v12 forceUnwrapObject];

  [forceUnwrapObject setCancellationAllowed:1];
  [forceUnwrapObject setDelegate:self];
  navigationItem = [forceUnwrapObject navigationItem];
  searchController = [forceUnwrapObject searchController];
  [navigationItem setSearchController:searchController];

  currentRequest = [(VSViewServiceViewController *)self currentRequest];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __131__VSViewServiceViewController__showIdentityProviderPickerViewControllerWithIdentityProviders_currentStorefrontCode_allStorefronts___block_invoke;
  v20[3] = &unk_279E1A2D0;
  v21 = forceUnwrapObject;
  v22 = storefrontsCopy;
  v23 = codeCopy;
  selfCopy = self;
  v17 = codeCopy;
  v18 = storefrontsCopy;
  v19 = forceUnwrapObject;
  [currentRequest conditionallyUnwrapObject:v20 otherwise:&__block_literal_global_148];
}

void __131__VSViewServiceViewController__showIdentityProviderPickerViewControllerWithIdentityProviders_currentStorefrontCode_allStorefronts___block_invoke(uint64_t a1, void *a2)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 requestingAppDisplayName];
  v5 = [v4 forceUnwrapObject];

  v6 = *(a1 + 32);
  v7 = [v5 copy];
  [v6 setRequestingAppDisplayName:v7];

  v8 = [v3 localizedVideoTitle];
  [*(a1 + 32) setResourceTitle:v8];
  if (*(a1 + 40) && *(a1 + 48))
  {
    [*(a1 + 32) setAllStorefronts:?];
  }

  else
  {
    v9 = [v3 accountMetadataRequest];
    v10 = [v9 applicationAccountProviders];
    v11 = [v10 count];

    [*(a1 + 32) setAdditionalProvidersMode:v11 == 0];
  }

  v12 = [v3 supportedIdentityProviderIdentifiers];
  v13 = [v12 count] == 0;

  [*(a1 + 32) setRequestedStorefrontCountryCode:*(a1 + 48) defaultToDeveloperProviders:v13];
  v14 = [*(a1 + 56) navController];
  v17[0] = *(a1 + 32);
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  [v14 setViewControllers:v15];

  [*(a1 + 56) _presentInHostIfNecessary];
  v16 = *MEMORY[0x277D85DE8];
}

void __131__VSViewServiceViewController__showIdentityProviderPickerViewControllerWithIdentityProviders_currentStorefrontCode_allStorefronts___block_invoke_2()
{
  v0 = VSDefaultLogObject();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_270DD4000, v0, OS_LOG_TYPE_DEFAULT, "No current request to show picker.", v1, 2u);
  }
}

- (void)_didDetermineIdentityProvider:(id)provider withPickerViewController:(id)controller
{
  providerCopy = provider;
  controllerCopy = controller;
  currentRequest = [(VSViewServiceViewController *)self currentRequest];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __86__VSViewServiceViewController__didDetermineIdentityProvider_withPickerViewController___block_invoke;
  v11[3] = &unk_279E1A2A8;
  v12 = providerCopy;
  selfCopy = self;
  v14 = controllerCopy;
  v9 = controllerCopy;
  v10 = providerCopy;
  [currentRequest conditionallyUnwrapObject:v11 otherwise:&__block_literal_global_157];
}

void __86__VSViewServiceViewController__didDetermineIdentityProvider_withPickerViewController___block_invoke(uint64_t a1, void *a2)
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 supportedAccountProviderAuthenticationSchemes];
  if ([*(a1 + 32) isFullySupportedForRequestsExpectingAuthenticationSchemes:v4])
  {
    if ([v3 canVetoAuthentication])
    {
      v5 = [*(a1 + 32) providerID];
      v6 = [v5 forceUnwrapObject];

      v7 = [*(a1 + 40) _viewControllerHost];
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __86__VSViewServiceViewController__didDetermineIdentityProvider_withPickerViewController___block_invoke_2;
      v33[3] = &unk_279E1A2F8;
      v27 = *(a1 + 32);
      v8 = v27.i64[0];
      v34 = vextq_s8(v27, v27, 8uLL);
      v35 = v6;
      v9 = v6;
      [v7 _didChooseProviderWithIdentifier:v9 vetoHandler:v33];
    }

    else
    {
      [*(a1 + 40) _performRequestWithIdentityProvider:*(a1 + 32) account:0];
    }
  }

  else
  {
    v10 = VSDefaultLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      *buf = 138412290;
      v37 = v11;
      _os_log_impl(&dword_270DD4000, v10, OS_LOG_TYPE_DEFAULT, "Identity provider %@ is not supported.", buf, 0xCu);
    }

    if ([*(a1 + 32) isApplication])
    {
      v12 = [*(a1 + 32) providerID];
      v13 = [v12 forceUnwrapObject];
      v14 = VSPublicUnsupportedProviderError();

      [*(a1 + 40) _requestDidFailWithError:v14];
    }

    else
    {
      v15 = [v3 requestingAppDisplayName];
      v16 = [v15 forceUnwrapObject];

      v17 = +[VSViewControllerFactory sharedFactory];
      v18 = *(a1 + 32);
      v19 = [*(a1 + 40) storage];
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __86__VSViewServiceViewController__didDetermineIdentityProvider_withPickerViewController___block_invoke_150;
      v28[3] = &unk_279E1A320;
      v29 = *(a1 + 32);
      v20 = v4;
      v21 = *(a1 + 40);
      v22 = *(a1 + 48);
      v30 = v20;
      v31 = v21;
      v32 = v22;
      v23 = [v17 viewControllerForUnsupportedProvider:v18 withRequestingAppDisplayName:v16 storage:v19 acknowledgementHandler:v28];

      v24 = *(a1 + 40);
      v25 = [v23 forceUnwrapObject];
      [v24 presentViewController:v25 animated:1 completion:0];
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

void __86__VSViewServiceViewController__didDetermineIdentityProvider_withPickerViewController___block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);

    [v3 _performRequestWithIdentityProvider:v4 account:0];
  }

  else
  {
    v5 = *(a1 + 48);
    v6 = VSPublicUnsupportedProviderError();
    [*(a1 + 32) _requestDidFailWithError:v6];
  }
}

void __86__VSViewServiceViewController__didDetermineIdentityProvider_withPickerViewController___block_invoke_150(uint64_t a1, void *a2)
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __86__VSViewServiceViewController__didDetermineIdentityProvider_withPickerViewController___block_invoke_2_151;
  v8[3] = &unk_279E1A190;
  v9 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v10 = v4;
  v11 = v5;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __86__VSViewServiceViewController__didDetermineIdentityProvider_withPickerViewController___block_invoke_153;
  v6[3] = &unk_279E19290;
  v7 = *(a1 + 56);
  [a2 conditionallyUnwrapObject:v8 otherwise:v6];
}

void __86__VSViewServiceViewController__didDetermineIdentityProvider_withPickerViewController___block_invoke_2_151(uint64_t a1, void *a2)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __86__VSViewServiceViewController__didDetermineIdentityProvider_withPickerViewController___block_invoke_3;
  v7[3] = &unk_279E1A168;
  v8 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v9 = v4;
  v10 = v5;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __86__VSViewServiceViewController__didDetermineIdentityProvider_withPickerViewController___block_invoke_152;
  v6[3] = &unk_279E19730;
  v6[4] = v5;
  [a2 unwrapObject:v7 error:v6];
}

void __86__VSViewServiceViewController__didDetermineIdentityProvider_withPickerViewController___block_invoke_3(uint64_t a1)
{
  v2 = VSDefaultLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_270DD4000, v2, OS_LOG_TYPE_DEFAULT, "Successfully saved unsupported provider.", v7, 2u);
  }

  v3 = [*(a1 + 32) providerID];
  v4 = [v3 forceUnwrapObject];

  if ([*(a1 + 32) supportsRequestsExpectingAuthenticationSchemes:*(a1 + 40)])
  {
    v5 = 0;
  }

  else
  {
    v5 = VSPrivateError();
  }

  v6 = VSPublicUnsupportedProviderError();
  [*(a1 + 48) _requestDidFailWithError:v6];
}

void __86__VSViewServiceViewController__didDetermineIdentityProvider_withPickerViewController___block_invoke_152(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = VSDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_270DD4000, v4, OS_LOG_TYPE_DEFAULT, "Failed: %@", &v6, 0xCu);
  }

  [*(a1 + 32) _requestDidFailWithError:v3];
  v5 = *MEMORY[0x277D85DE8];
}

void *__86__VSViewServiceViewController__didDetermineIdentityProvider_withPickerViewController___block_invoke_153(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return [result deselectSelectedProviderAnimated:1];
  }

  return result;
}

void __86__VSViewServiceViewController__didDetermineIdentityProvider_withPickerViewController___block_invoke_2_155()
{
  v0 = VSDefaultLogObject();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_270DD4000, v0, OS_LOG_TYPE_DEFAULT, "No request for which to pick providers.", v1, 2u);
  }
}

- (void)_presentInHostIfNecessary
{
  if (![(VSViewServiceViewController *)self isPresentedInHost])
  {
    [(VSViewServiceViewController *)self setPresentedInHost:1];
    v3 = VSDefaultLogObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_270DD4000, v3, OS_LOG_TYPE_DEFAULT, "Will present in host", buf, 2u);
    }

    _viewControllerHost = [(VSViewServiceViewController *)self _viewControllerHost];
    [_viewControllerHost _presentViewController];

    v5 = VSDefaultLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_270DD4000, v5, OS_LOG_TYPE_DEFAULT, "Did present in host", v6, 2u);
    }

    [MEMORY[0x277CE2288] recordEnterEventWithPage:*MEMORY[0x277CE24C0] pageType:*MEMORY[0x277CE24B8]];
  }
}

- (void)_dismissInHostIfNecessary
{
  if ([(VSViewServiceViewController *)self isPresentedInHost])
  {
    [(VSViewServiceViewController *)self setPresentedInHost:0];
    v3 = VSDefaultLogObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_270DD4000, v3, OS_LOG_TYPE_DEFAULT, "Will dismiss in host", buf, 2u);
    }

    _viewControllerHost = [(VSViewServiceViewController *)self _viewControllerHost];
    [_viewControllerHost _dismissViewController];

    v5 = VSDefaultLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_270DD4000, v5, OS_LOG_TYPE_DEFAULT, "Did dismiss in host", v6, 2u);
    }

    [MEMORY[0x277CE2288] recordExitEventWithPage:*MEMORY[0x277CE24C0] pageType:*MEMORY[0x277CE24B8]];
  }
}

- (void)_request:(id)_request didFailWithError:(id)error
{
  v17 = *MEMORY[0x277D85DE8];
  _requestCopy = _request;
  errorCopy = error;
  vs_secureCodingSafeError = [errorCopy vs_secureCodingSafeError];
  v9 = VSDefaultLogObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412546;
    v14 = _requestCopy;
    v15 = 2112;
    v16 = errorCopy;
    _os_log_impl(&dword_270DD4000, v9, OS_LOG_TYPE_DEFAULT, "Will fail request %@ in host with error: %@", &v13, 0x16u);
  }

  _viewControllerHost = [(VSViewServiceViewController *)self _viewControllerHost];
  [_viewControllerHost _request:_requestCopy didFailWithError:vs_secureCodingSafeError];

  v11 = VSDefaultLogObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v13) = 0;
    _os_log_impl(&dword_270DD4000, v11, OS_LOG_TYPE_DEFAULT, "Did fail in host", &v13, 2u);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_requestDidFailWithError:(id)error
{
  errorCopy = error;
  currentRequestID = [(VSViewServiceViewController *)self currentRequestID];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__VSViewServiceViewController__requestDidFailWithError___block_invoke;
  v7[3] = &unk_279E19268;
  v7[4] = self;
  v8 = errorCopy;
  v6 = errorCopy;
  [currentRequestID conditionallyUnwrapObject:v7 otherwise:&__block_literal_global_160];
}

void __56__VSViewServiceViewController__requestDidFailWithError___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) _request:a2 didFailWithError:*(a1 + 40)];
  v3 = *(a1 + 32);
  v4 = objc_alloc_init(MEMORY[0x277CE2298]);
  [v3 setCurrentRequest:v4];

  v5 = *(a1 + 32);
  v6 = objc_alloc_init(MEMORY[0x277CE2298]);
  [v5 setCurrentRequestID:v6];
}

void __56__VSViewServiceViewController__requestDidFailWithError___block_invoke_2()
{
  v0 = VSDefaultLogObject();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_270DD4000, v0, OS_LOG_TYPE_DEFAULT, "No request to fail.", v1, 2u);
  }
}

- (void)_didCancelRequest
{
  currentRequestID = [(VSViewServiceViewController *)self currentRequestID];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __48__VSViewServiceViewController__didCancelRequest__block_invoke;
  v4[3] = &unk_279E1A348;
  v4[4] = self;
  [currentRequestID conditionallyUnwrapObject:v4 otherwise:&__block_literal_global_163];
}

void __48__VSViewServiceViewController__didCancelRequest__block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = VSDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = v3;
    _os_log_impl(&dword_270DD4000, v4, OS_LOG_TYPE_DEFAULT, "Will cancel request %@ in host", &v12, 0xCu);
  }

  v5 = [*(a1 + 32) _viewControllerHost];
  [v5 _didCancelRequest:v3];

  v6 = VSDefaultLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v12) = 0;
    _os_log_impl(&dword_270DD4000, v6, OS_LOG_TYPE_DEFAULT, "Did cancel in host", &v12, 2u);
  }

  v7 = *(a1 + 32);
  v8 = objc_alloc_init(MEMORY[0x277CE2298]);
  [v7 setCurrentRequest:v8];

  v9 = *(a1 + 32);
  v10 = objc_alloc_init(MEMORY[0x277CE2298]);
  [v9 setCurrentRequestID:v10];

  v11 = *MEMORY[0x277D85DE8];
}

void __48__VSViewServiceViewController__didCancelRequest__block_invoke_161()
{
  v0 = VSDefaultLogObject();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_270DD4000, v0, OS_LOG_TYPE_DEFAULT, "No request to cancel.", v1, 2u);
  }
}

- (void)_completeRequestWithResponse:(id)response fromIdentityProvider:(id)provider
{
  provider = [(VSViewServiceViewController *)self _viewServiceResponseWithIdentityProviderResponse:response, provider];
  [(VSViewServiceViewController *)self _completeRequestWithResponse:provider];
}

- (void)_completeRequest:(id)request withResponse:(id)response
{
  v18 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  responseCopy = response;
  [(VSViewServiceViewController *)self _dismissInHostIfNecessary];
  v8 = VSDefaultLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412546;
    v15 = requestCopy;
    v16 = 2112;
    v17 = responseCopy;
    _os_log_impl(&dword_270DD4000, v8, OS_LOG_TYPE_DEFAULT, "Will finish request %@ with response %@", &v14, 0x16u);
  }

  _viewControllerHost = [(VSViewServiceViewController *)self _viewControllerHost];
  [_viewControllerHost _request:requestCopy didFinishWithResponse:responseCopy];

  v10 = VSDefaultLogObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v14) = 0;
    _os_log_impl(&dword_270DD4000, v10, OS_LOG_TYPE_DEFAULT, "Did finish request in host", &v14, 2u);
  }

  v11 = objc_alloc_init(MEMORY[0x277CE2298]);
  [(VSViewServiceViewController *)self setCurrentRequest:v11];

  v12 = objc_alloc_init(MEMORY[0x277CE2298]);
  [(VSViewServiceViewController *)self setCurrentRequestID:v12];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_completeRequestWithResponse:(id)response
{
  responseCopy = response;
  currentRequestID = [(VSViewServiceViewController *)self currentRequestID];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__VSViewServiceViewController__completeRequestWithResponse___block_invoke;
  v7[3] = &unk_279E19268;
  v7[4] = self;
  v8 = responseCopy;
  v6 = responseCopy;
  [currentRequestID conditionallyUnwrapObject:v7 otherwise:&__block_literal_global_165];
}

void __60__VSViewServiceViewController__completeRequestWithResponse___block_invoke_2()
{
  v0 = VSDefaultLogObject();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_270DD4000, v0, OS_LOG_TYPE_DEFAULT, "No request to complete.", v1, 2u);
  }
}

- (id)_viewServiceResponseWithIdentityProviderResponse:(id)response
{
  v3 = MEMORY[0x277CE2338];
  responseCopy = response;
  v5 = objc_alloc_init(v3);
  accountMetadata = [responseCopy accountMetadata];

  [v5 setAccountMetadata:accountMetadata];

  return v5;
}

- (void)identityProviderPickerViewController:(id)controller didPickIdentityProvider:(id)provider
{
  v6 = MEMORY[0x277CE2288];
  v7 = *MEMORY[0x277CE24B0];
  v8 = *MEMORY[0x277CE24B8];
  v9 = *MEMORY[0x277CE2498];
  providerCopy = provider;
  controllerCopy = controller;
  [v6 recordClickEventWithPage:v7 pageType:v8 target:v9];
  [(VSViewServiceViewController *)self _didDetermineIdentityProvider:providerCopy withPickerViewController:controllerCopy];
}

- (void)identityProviderPickerViewControllerDidPickAdditionalIdentityProviders:(id)providers
{
  currentRequestID = [(VSViewServiceViewController *)self currentRequestID];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __102__VSViewServiceViewController_identityProviderPickerViewControllerDidPickAdditionalIdentityProviders___block_invoke;
  v5[3] = &unk_279E1A348;
  v5[4] = self;
  [currentRequestID conditionallyUnwrapObject:v5 otherwise:&__block_literal_global_168];
}

void __102__VSViewServiceViewController_identityProviderPickerViewControllerDidPickAdditionalIdentityProviders___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = VSDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&dword_270DD4000, v4, OS_LOG_TYPE_DEFAULT, "Will choose additional providers for request %@", &v8, 0xCu);
  }

  v5 = [*(a1 + 32) _viewControllerHost];
  [v5 _didChooseAdditionalProvidersForRequest:v3];

  v6 = VSDefaultLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v8) = 0;
    _os_log_impl(&dword_270DD4000, v6, OS_LOG_TYPE_DEFAULT, "Did choose additional providers in host", &v8, 2u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __102__VSViewServiceViewController_identityProviderPickerViewControllerDidPickAdditionalIdentityProviders___block_invoke_166()
{
  v0 = VSDefaultLogObject();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_270DD4000, v0, OS_LOG_TYPE_DEFAULT, "No request to choose additional providers.", v1, 2u);
  }
}

- (void)identityProviderViewControllerDidCancel:(id)cancel
{
  if ([(VSViewServiceViewController *)self isIdentityProviderPickerRequired])
  {
    navController = [(VSViewServiceViewController *)self navController];
    v4 = [navController popToRootViewControllerAnimated:1];
  }

  else
  {

    [(VSViewServiceViewController *)self _didCancelRequest];
  }
}

- (void)identityProviderViewController:(id)controller didFinishRequest:(id)request withResult:(id)result
{
  controllerCopy = controller;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __90__VSViewServiceViewController_identityProviderViewController_didFinishRequest_withResult___block_invoke;
  v10[3] = &unk_279E1A370;
  v11 = controllerCopy;
  selfCopy = self;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __90__VSViewServiceViewController_identityProviderViewController_didFinishRequest_withResult___block_invoke_173;
  v9[3] = &unk_279E19730;
  v9[4] = self;
  v8 = controllerCopy;
  [result unwrapObject:v10 error:v9];
}

void __90__VSViewServiceViewController_identityProviderViewController_didFinishRequest_withResult___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) identityProvider];
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = [*(a1 + 40) currentRequest];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __90__VSViewServiceViewController_identityProviderViewController_didFinishRequest_withResult___block_invoke_2;
  v15[3] = &unk_279E19218;
  v7 = v5;
  v16 = v7;
  [v6 conditionallyUnwrapObject:v15 otherwise:&__block_literal_global_171];

  v8 = [v3 accountMetadata];
  v9 = [v8 accountProviderResponse];
  v10 = [v9 authenticationScheme];
  if (v10 && ([v7 containsObject:v10] & 1) == 0)
  {
    v11 = VSPrivateError();
    v12 = [v4 providerID];
    v13 = [v12 forceUnwrapObject];

    v14 = VSPublicUnsupportedProviderError();
    [*(a1 + 40) _requestDidFailWithError:v14];
  }

  else
  {
    [*(a1 + 40) _completeRequestWithResponse:v3 fromIdentityProvider:v4];
  }
}

void __90__VSViewServiceViewController_identityProviderViewController_didFinishRequest_withResult___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 supportedAccountProviderAuthenticationSchemes];
  [v2 addObjectsFromArray:v3];
}

void __90__VSViewServiceViewController_identityProviderViewController_didFinishRequest_withResult___block_invoke_3()
{
  v0 = VSDefaultLogObject();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_270DD4000, v0, OS_LOG_TYPE_DEFAULT, "No current request to inspect for supported auth schemes.", v1, 2u);
  }
}

void __90__VSViewServiceViewController_identityProviderViewController_didFinishRequest_withResult___block_invoke_173(uint64_t a1, void *a2)
{
  v3 = a2;
  IsPublicError = VSErrorIsPublicError();
  v5 = [*(a1 + 32) isIdentityProviderPickerRequired];
  if (IsPublicError)
  {
    v6 = *(a1 + 32);
    if (v5)
    {
      v7 = [*(a1 + 32) navController];
      v8 = [v7 popToRootViewControllerAnimated:1];
    }

    else
    {
      [*(a1 + 32) _didCancelRequest];
    }
  }

  else if (v5)
  {
    v9 = VSErrorLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __90__VSViewServiceViewController_identityProviderViewController_didFinishRequest_withResult___block_invoke_173_cold_1();
    }

    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __90__VSViewServiceViewController_identityProviderViewController_didFinishRequest_withResult___block_invoke_174;
    v11[3] = &unk_279E1A398;
    v11[4] = *(a1 + 32);
    v10 = VSAlertForError(v3, v11);
    [*(a1 + 32) presentViewController:v10 animated:1 completion:0];
  }

  else
  {
    [*(a1 + 32) _requestDidFailWithError:v3];
  }
}

void __90__VSViewServiceViewController_identityProviderViewController_didFinishRequest_withResult___block_invoke_174(uint64_t a1)
{
  v2 = [*(a1 + 32) navController];
  v1 = [v2 popToRootViewControllerAnimated:1];
}

- (void)identityProviderViewController:(id)controller didAuthenticateAccount:(id)account forRequest:(id)request
{
  v35 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  requestingAppAdamID = [request requestingAppAdamID];
  v27 = accountCopy;
  identityProviderID = [accountCopy identityProviderID];
  forceUnwrapObject = [identityProviderID forceUnwrapObject];

  selfCopy = self;
  storage = [(VSViewServiceViewController *)self storage];
  voucherLockbox = [storage voucherLockbox];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = voucherLockbox;
  unredeemedVouchers = [voucherLockbox unredeemedVouchers];
  v14 = [unredeemedVouchers countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v31;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v31 != v16)
        {
          objc_enumerationMutation(unredeemedVouchers);
        }

        v18 = *(*(&v30 + 1) + 8 * i);
        appAdamID = [v18 appAdamID];
        if ([appAdamID isEqual:requestingAppAdamID])
        {
          providerID = [v18 providerID];
          v21 = [providerID isEqual:forceUnwrapObject];

          if (v21)
          {
            [v28 redeemVoucher:v18];
          }
        }

        else
        {
        }
      }

      v15 = [unredeemedVouchers countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v15);
  }

  storage2 = [(VSViewServiceViewController *)selfCopy storage];
  privacyFacade = [storage2 privacyFacade];

  [(VSViewServiceViewController *)selfCopy _hostAuditToken];
  if (([privacyFacade setAccessGranted:1 forAuditToken:v29] & 1) == 0)
  {
    v24 = VSErrorLogObject();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [VSViewServiceViewController identityProviderViewController:v24 didAuthenticateAccount:? forRequest:?];
    }
  }

  [(VSViewServiceViewController *)selfCopy _dismissInHostIfNecessary];

  v25 = *MEMORY[0x277D85DE8];
}

- (void)identityProviderViewControllerDidFinishLoading:(id)loading
{
  loadingCopy = loading;
  currentRequest = [(VSViewServiceViewController *)self currentRequest];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __78__VSViewServiceViewController_identityProviderViewControllerDidFinishLoading___block_invoke;
  v7[3] = &unk_279E191F0;
  v8 = loadingCopy;
  selfCopy = self;
  v6 = loadingCopy;
  [currentRequest conditionallyUnwrapObject:v7 otherwise:&__block_literal_global_183];
}

void __78__VSViewServiceViewController_identityProviderViewControllerDidFinishLoading___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isPreAuthRequest] && (objc_msgSend(*(a1 + 32), "currentAuthenticationViewControllerSupportsPreAuth") & 1) == 0)
  {
    [*(a1 + 32) sendErrorMessage:@"presented template is incompatible with authentication share requests"];
    v4 = VSErrorLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __78__VSViewServiceViewController_identityProviderViewControllerDidFinishLoading___block_invoke_cold_1();
    }

    v5 = VSPublicError();
    [*(a1 + 40) _requestDidFailWithError:v5];
    v6 = [v3 requestingAppAdamID];

    if (v6)
    {
      v7 = [v3 requestingAppAdamID];

      if (!v7)
      {
        [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The [currentRequest requestingAppAdamID] parameter must not be nil."];
      }

      v8 = [v3 requestingAppAdamID];
      [MEMORY[0x277CE2288] recordInvalidTemplateErrorWithProviderAppAdamID:v8];
    }
  }

  else
  {
    [*(a1 + 40) _presentInHostIfNecessary];
  }
}

void __78__VSViewServiceViewController_identityProviderViewControllerDidFinishLoading___block_invoke_181()
{
  v0 = VSErrorLogObject();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __78__VSViewServiceViewController_identityProviderViewControllerDidFinishLoading___block_invoke_181_cold_1();
  }
}

- (void)remoteNotifier:(id)notifier didReceiveRemoteNotificationWithUserInfo:(id)info
{
  [(VSViewServiceViewController *)self _didCancelRequest:notifier];
  topShelfPurger = [(VSViewServiceViewController *)self topShelfPurger];
  [topShelfPurger purge];
}

void __62__VSViewServiceViewController__performRequest_withIdentifier___block_invoke_7_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_performRequestInternal:withID:identityProviders:accounts:currentStorefrontCode:allStorefronts:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_determinePreAuthAppIsAuthorized:completion:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __75__VSViewServiceViewController__performRequestWithIdentityProvider_account___block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __75__VSViewServiceViewController__performRequestWithIdentityProvider_account___block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __75__VSViewServiceViewController__performRequestWithIdentityProvider_account___block_invoke_143_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __90__VSViewServiceViewController_identityProviderViewController_didFinishRequest_withResult___block_invoke_173_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)identityProviderViewController:(NSObject *)a1 didAuthenticateAccount:forRequest:.cold.1(NSObject *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *__error();
  v3 = *__error();
  v5[0] = 67109376;
  v5[1] = v2;
  v6 = 1024;
  v7 = v3;
  _os_log_error_impl(&dword_270DD4000, a1, OS_LOG_TYPE_ERROR, "Error granting access for audit token: %d (%{errno}d)", v5, 0xEu);
  v4 = *MEMORY[0x277D85DE8];
}

void __78__VSViewServiceViewController_identityProviderViewControllerDidFinishLoading___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __78__VSViewServiceViewController_identityProviderViewControllerDidFinishLoading___block_invoke_181_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end