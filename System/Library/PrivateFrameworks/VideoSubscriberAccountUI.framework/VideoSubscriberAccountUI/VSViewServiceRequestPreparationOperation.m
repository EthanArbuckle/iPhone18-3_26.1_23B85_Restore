@interface VSViewServiceRequestPreparationOperation
- ($115C4C562B26FF47E01F9F4EA65B5887)hostAuditToken;
- (VSViewServiceRequestPreparationOperation)init;
- (id)_privacyServiceWithErrorHandler:(id)a3;
- (void)_checkAvailability;
- (void)_checkEntitlement;
- (void)_checkPrivacy;
- (void)_checkSupportedProviders;
- (void)_continueCheckPrivacyWithAccessStatus:(unint64_t)a3;
- (void)_finishWithError:(id)a3;
- (void)_finishWithSupportedProviders:(id)a3;
- (void)cancel;
- (void)dealloc;
- (void)setHostAuditToken:(id *)a3;
@end

@implementation VSViewServiceRequestPreparationOperation

- (VSViewServiceRequestPreparationOperation)init
{
  v19.receiver = self;
  v19.super_class = VSViewServiceRequestPreparationOperation;
  v2 = [(VSViewServiceRequestPreparationOperation *)&v19 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCABD8]);
    privateQueue = v2->_privateQueue;
    v2->_privateQueue = v3;

    [(NSOperationQueue *)v2->_privateQueue setName:@"VSViewServiceRequestPreparationOperation"];
    [(NSOperationQueue *)v2->_privateQueue setMaxConcurrentOperationCount:1];
    supportedIdentityProviderIdentifiers = v2->_supportedIdentityProviderIdentifiers;
    v6 = MEMORY[0x277CBEBF8];
    v2->_supportedIdentityProviderIdentifiers = MEMORY[0x277CBEBF8];

    featuredIdentityProviderIdentifiers = v2->_featuredIdentityProviderIdentifiers;
    v2->_featuredIdentityProviderIdentifiers = v6;

    v8 = [objc_alloc(MEMORY[0x277CCAE80]) initWithServiceName:@"com.apple.VideoSubscriberAccount.PrivacyService"];
    privacyServiceConnection = v2->_privacyServiceConnection;
    v2->_privacyServiceConnection = v8;

    v10 = v2->_privacyServiceConnection;
    v11 = VSPrivacyServiceInterface();
    [(NSXPCConnection *)v10 setRemoteObjectInterface:v11];

    [(NSXPCConnection *)v2->_privacyServiceConnection setInterruptionHandler:&__block_literal_global_4];
    [(NSXPCConnection *)v2->_privacyServiceConnection setInvalidationHandler:&__block_literal_global_8];
    [(NSXPCConnection *)v2->_privacyServiceConnection resume];
    v12 = [MEMORY[0x277CE2268] defaultCenter];
    availabilityInfoCenter = v2->_availabilityInfoCenter;
    v2->_availabilityInfoCenter = v12;

    v14 = objc_alloc_init(MEMORY[0x277CE2298]);
    v15 = v2->_result;
    v2->_result = v14;

    v16 = objc_alloc_init(MEMORY[0x277CE2298]);
    currentAccount = v2->_currentAccount;
    v2->_currentAccount = v16;
  }

  return v2;
}

void __48__VSViewServiceRequestPreparationOperation_init__block_invoke()
{
  v0 = VSErrorLogObject();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __48__VSViewServiceRequestPreparationOperation_init__block_invoke_cold_1();
  }
}

void __48__VSViewServiceRequestPreparationOperation_init__block_invoke_6()
{
  v0 = VSErrorLogObject();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __48__VSViewServiceRequestPreparationOperation_init__block_invoke_6_cold_1();
  }
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_privacyServiceConnection invalidate];
  v3.receiver = self;
  v3.super_class = VSViewServiceRequestPreparationOperation;
  [(VSViewServiceRequestPreparationOperation *)&v3 dealloc];
}

- (id)_privacyServiceWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = [(VSViewServiceRequestPreparationOperation *)self privacyServiceConnection];
  v6 = [v5 remoteObjectProxyWithErrorHandler:v4];

  return v6;
}

- (void)_finishWithError:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The error parameter must not be nil."];
  }

  v5 = VSErrorLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [VSViewServiceRequestPreparationOperation _finishWithError:];
  }

  v6 = MEMORY[0x277CE2298];
  v7 = [MEMORY[0x277CE2250] failableWithError:v4];
  v8 = [v6 optionalWithObject:v7];
  [(VSViewServiceRequestPreparationOperation *)self setResult:v8];

  [(VSAsyncOperation *)self finishExecutionIfPossible];
}

- (void)_checkEntitlement
{
  v3 = VSDefaultLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_270DD4000, v3, OS_LOG_TYPE_DEFAULT, "Prep operation will check entitlement", buf, 2u);
  }

  v4 = MEMORY[0x277CE22D0];
  [(VSViewServiceRequestPreparationOperation *)self hostAuditToken];
  v5 = [v4 securityTaskWithAuditToken:buf];
  v6 = VSCheckEntitlementForTask();
  v7 = 0;

  if (v6)
  {
    [(VSViewServiceRequestPreparationOperation *)self _checkPrivacy];
  }

  else
  {
    if (!v7)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The entitlementErrorOrNil parameter must not be nil."];
    }

    [(VSViewServiceRequestPreparationOperation *)self _finishWithError:v7];
  }
}

- (void)_checkPrivacy
{
  v3 = VSDefaultLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_270DD4000, v3, OS_LOG_TYPE_DEFAULT, "Prep operation will check privacy", buf, 2u);
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__VSViewServiceRequestPreparationOperation__checkPrivacy__block_invoke;
  v7[3] = &unk_279E19730;
  v7[4] = self;
  v4 = [(VSViewServiceRequestPreparationOperation *)self _privacyServiceWithErrorHandler:v7];
  v5 = [(VSViewServiceRequestPreparationOperation *)self hostProcessIdentifier];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __57__VSViewServiceRequestPreparationOperation__checkPrivacy__block_invoke_23;
  v6[3] = &unk_279E197D0;
  v6[4] = self;
  [v4 preflightCheckForProcessIdentifier:v5 withCompletionHandler:v6];
}

void __57__VSViewServiceRequestPreparationOperation__checkPrivacy__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = VSErrorLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __57__VSViewServiceRequestPreparationOperation__checkPrivacy__block_invoke_cold_1();
  }

  v5 = VSPrivateError();
  [*(a1 + 32) _finishWithError:v5];
}

void __57__VSViewServiceRequestPreparationOperation__checkPrivacy__block_invoke_23(uint64_t a1, uint64_t a2)
{
  v4 = VSDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_270DD4000, v4, OS_LOG_TYPE_DEFAULT, "Prep operation did check privacy", buf, 2u);
  }

  if ([*(a1 + 32) isAccountModificationAllowed])
  {
    v5 = [*(a1 + 32) shouldReturnErrorOnTVProviderFeatureUnsupportedByStorefront];
    v6 = *(a1 + 32);
    if (v5)
    {
      v7 = [v6 availabilityInfoCenter];
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __57__VSViewServiceRequestPreparationOperation__checkPrivacy__block_invoke_24;
      v11[3] = &unk_279E197A8;
      v11[4] = *(a1 + 32);
      v11[5] = a2;
      [v7 determineIdentityProviderAvailabilityWithCompletionHandler:v11];
    }

    else
    {
      [v6 _continueCheckPrivacyWithAccessStatus:a2];
    }
  }

  else if (a2 == 1 && ([*(a1 + 32) currentAccount], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "object"), v9 = objc_claimAutoreleasedReturnValue(), v9, v8, v9))
  {
    [*(a1 + 32) _checkAvailability];
  }

  else
  {
    v10 = VSPrivateError();
    [*(a1 + 32) _finishWithError:v10];
  }
}

void __57__VSViewServiceRequestPreparationOperation__checkPrivacy__block_invoke_24(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = VSDefaultLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_270DD4000, v6, OS_LOG_TYPE_DEFAULT, "Prep operation did check availability", buf, 2u);
  }

  if (a2)
  {
    v7 = VSDefaultLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_270DD4000, v7, OS_LOG_TYPE_DEFAULT, "TV Provider feature is available in storefront.", buf, 2u);
    }

    [*(a1 + 32) _continueCheckPrivacyWithAccessStatus:*(a1 + 40)];
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x277CE2228]);
    objc_initWeak(buf, v8);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __57__VSViewServiceRequestPreparationOperation__checkPrivacy__block_invoke_26;
    v11[3] = &unk_279E19780;
    objc_copyWeak(v12, buf);
    v9 = *(a1 + 40);
    v11[4] = *(a1 + 32);
    v12[1] = v9;
    [v8 setCompletionBlock:v11];
    v10 = [*(a1 + 32) privateQueue];
    [v10 addOperation:v8];

    objc_destroyWeak(v12);
    objc_destroyWeak(buf);
  }
}

void __57__VSViewServiceRequestPreparationOperation__checkPrivacy__block_invoke_26(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained result];
  v4 = [v3 forceUnwrapObject];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__VSViewServiceRequestPreparationOperation__checkPrivacy__block_invoke_2;
  v7[3] = &unk_279E19758;
  v5 = *(a1 + 48);
  v8 = *(a1 + 32);
  v9 = v5;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __57__VSViewServiceRequestPreparationOperation__checkPrivacy__block_invoke_28;
  v6[3] = &unk_279E19730;
  v6[4] = v8;
  [v4 unwrapObject:v7 error:v6];
}

void __57__VSViewServiceRequestPreparationOperation__checkPrivacy__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 count];
  v4 = VSDefaultLogObject();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      *v7 = 0;
      _os_log_impl(&dword_270DD4000, v4, OS_LOG_TYPE_DEFAULT, "Developer providers were returned from fetch operation, allow TCC.", v7, 2u);
    }

    [*(a1 + 32) _continueCheckPrivacyWithAccessStatus:*(a1 + 40)];
  }

  else
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_270DD4000, v4, OS_LOG_TYPE_DEFAULT, "No developer providers returned from fetch operation, finish with VSErrorCodeUnsupported.", buf, 2u);
    }

    v6 = VSPublicError();
    [*(a1 + 32) _finishWithError:v6];
  }
}

void __57__VSViewServiceRequestPreparationOperation__checkPrivacy__block_invoke_28(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = VSErrorLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __57__VSViewServiceRequestPreparationOperation__checkPrivacy__block_invoke_28_cold_1();
  }

  v5 = VSPrivateError();
  [*(a1 + 32) _finishWithError:v5];
}

- (void)_continueCheckPrivacyWithAccessStatus:(unint64_t)a3
{
  if (a3 == 2)
  {
    v7 = VSPrivateError();
    [(VSViewServiceRequestPreparationOperation *)self _finishWithError:v7];
  }

  else if (a3 == 1)
  {

    [(VSViewServiceRequestPreparationOperation *)self _checkAvailability];
  }

  else
  {
    if (a3)
    {
      return;
    }

    if ([(VSViewServiceRequestPreparationOperation *)self requestRequiresPrivacyUI])
    {
      v4 = self;
      v5 = 1;
    }

    else
    {
      if ([(VSViewServiceRequestPreparationOperation *)self requestAllowsPrivacyUI])
      {
        v6 = [(VSViewServiceRequestPreparationOperation *)self currentAccount];
        v9[0] = MEMORY[0x277D85DD0];
        v9[1] = 3221225472;
        v9[2] = __82__VSViewServiceRequestPreparationOperation__continueCheckPrivacyWithAccessStatus___block_invoke;
        v9[3] = &unk_279E197F8;
        v9[4] = self;
        v8[0] = MEMORY[0x277D85DD0];
        v8[1] = 3221225472;
        v8[2] = __82__VSViewServiceRequestPreparationOperation__continueCheckPrivacyWithAccessStatus___block_invoke_2;
        v8[3] = &unk_279E19290;
        v8[4] = self;
        [v6 conditionallyUnwrapObject:v9 otherwise:v8];

        return;
      }

      v4 = self;
      v5 = 0;
    }

    [(VSViewServiceRequestPreparationOperation *)v4 _determineProviderDisplayNameWithUI:v5];
  }
}

- (void)_checkAvailability
{
  v3 = VSDefaultLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_270DD4000, v3, OS_LOG_TYPE_DEFAULT, "Prep operation will check availability", buf, 2u);
  }

  v4 = [(VSViewServiceRequestPreparationOperation *)self availabilityInfoCenter];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __62__VSViewServiceRequestPreparationOperation__checkAvailability__block_invoke;
  v5[3] = &unk_279E19820;
  v5[4] = self;
  [v4 determineIdentityProviderAvailabilityWithCompletionHandler:v5];
}

void __62__VSViewServiceRequestPreparationOperation__checkAvailability__block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = VSDefaultLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_270DD4000, v6, OS_LOG_TYPE_DEFAULT, "Prep operation did check availability", v8, 2u);
  }

  v7 = *(a1 + 32);
  if (a2)
  {
    [v7 _checkSupportedProviders];
  }

  else
  {
    [v7 _finishWithError:v5];
  }
}

- (void)_finishWithSupportedProviders:(id)a3
{
  v61 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (![v4 count])
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"No filtered identity providers provided."];
  }

  v5 = [v4 valueForKeyPath:@"providerID.object"];
  v6 = [(VSViewServiceRequestPreparationOperation *)self featuredIdentityProviderIdentifiers];
  v7 = [MEMORY[0x277CCA9C0] expressionForKeyPath:@"self"];
  v8 = [MEMORY[0x277CCA9C0] expressionForConstantValue:v5];
  v9 = [MEMORY[0x277CCA918] predicateWithLeftExpression:v7 rightExpression:v8 modifier:0 type:10 options:0];
  v10 = [v6 filteredArrayUsingPredicate:v9];

  if (-[VSViewServiceRequestPreparationOperation shouldInferFeaturedProviders](self, "shouldInferFeaturedProviders") && ![v10 count])
  {
    v42 = v9;
    v11 = v10;
    v12 = [MEMORY[0x277CBEB98] setWithArray:v5];
    v13 = MEMORY[0x277CBEB98];
    v14 = [(VSViewServiceRequestPreparationOperation *)self supportedIdentityProviderIdentifiers];
    v15 = [v13 setWithArray:v14];
    v16 = [v12 isSubsetOfSet:v15];

    if (v16)
    {
      v10 = v5;
    }

    else
    {
      v10 = v11;
    }

    v9 = v42;
  }

  if ([v10 count])
  {
    v43 = v9;
    v44 = v10;
    v39 = v7;
    v40 = self;
    v41 = v5;
    v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v18 = v4;
    v19 = [v18 countByEnumeratingWithState:&v55 objects:v60 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v56;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v56 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v55 + 1) + 8 * i);
          [v23 setRankForSorting:0];
          v24 = [v23 providerID];
          v52[0] = MEMORY[0x277D85DD0];
          v52[1] = 3221225472;
          v52[2] = __74__VSViewServiceRequestPreparationOperation__finishWithSupportedProviders___block_invoke;
          v52[3] = &unk_279E19598;
          v53 = v17;
          v54 = v23;
          [v24 conditionallyUnwrapObject:v52];
        }

        v20 = [v18 countByEnumeratingWithState:&v55 objects:v60 count:16];
      }

      while (v20);
    }

    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v25 = v44;
    v26 = [v25 countByEnumeratingWithState:&v48 objects:v59 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v49;
      v29 = 1;
      do
      {
        for (j = 0; j != v27; ++j)
        {
          if (*v49 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v31 = [v17 objectForKey:*(*(&v48 + 1) + 8 * j)];
          if (v31)
          {
            v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v29];
            [v31 setRankForSorting:v32];

            ++v29;
          }
        }

        v27 = [v25 countByEnumeratingWithState:&v48 objects:v59 count:16];
      }

      while (v27);
    }

    v5 = v41;
    v7 = v39;
    self = v40;
    v10 = v44;
    v9 = v43;
  }

  v33 = [(VSViewServiceRequestPreparationOperation *)self privateQueue];
  v34 = objc_alloc_init(VSFeaturedIdentityProviderLimitingOperation);
  [(VSFeaturedIdentityProviderLimitingOperation *)v34 setUnlimitedIdentityProviders:v4];
  [v33 addOperation:v34];
  v35 = MEMORY[0x277CCA8C8];
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __74__VSViewServiceRequestPreparationOperation__finishWithSupportedProviders___block_invoke_2;
  v45[3] = &unk_279E19848;
  v46 = v34;
  v47 = self;
  v36 = v34;
  v37 = [v35 blockOperationWithBlock:v45];
  [v37 addDependency:v36];
  [v33 addOperation:v37];

  v38 = *MEMORY[0x277D85DE8];
}

void __74__VSViewServiceRequestPreparationOperation__finishWithSupportedProviders___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) result];
  v7 = [v2 forceUnwrapObject];

  v3 = *(a1 + 40);
  v4 = MEMORY[0x277CE2298];
  v5 = [MEMORY[0x277CE2250] failableWithObject:v7];
  v6 = [v4 optionalWithObject:v5];
  [v3 setResult:v6];

  [*(a1 + 40) finishExecutionIfPossible];
}

- (void)_checkSupportedProviders
{
  v3 = VSDefaultLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_270DD4000, v3, OS_LOG_TYPE_DEFAULT, "Prep operation will fetch identity providers.", buf, 2u);
  }

  v4 = objc_alloc_init(VSIdentityProviderFetchAllOperation);
  v5 = [(VSViewServiceRequestPreparationOperation *)self auditToken];
  [(VSIdentityProviderFetchAllOperation *)v4 setAuditToken:v5];

  v6 = [(VSViewServiceRequestPreparationOperation *)self applicationAccountProviders];
  [(VSIdentityProviderFetchAllOperation *)v4 setApplicationAccountProviders:v6];

  [(VSAsyncOperation *)v4 start];
  [(VSIdentityProviderFetchAllOperation *)v4 waitUntilFinished];
  v7 = VSDefaultLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_270DD4000, v7, OS_LOG_TYPE_DEFAULT, "Prep operation did fetch identity providers.", buf, 2u);
  }

  v8 = [(VSIdentityProviderFetchAllOperation *)v4 result];
  v9 = [v8 forceUnwrapObject];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __68__VSViewServiceRequestPreparationOperation__checkSupportedProviders__block_invoke;
  v11[3] = &unk_279E19898;
  v11[4] = self;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __68__VSViewServiceRequestPreparationOperation__checkSupportedProviders__block_invoke_4;
  v10[3] = &unk_279E19730;
  v10[4] = self;
  [v9 unwrapObject:v11 error:v10];
}

void __68__VSViewServiceRequestPreparationOperation__checkSupportedProviders__block_invoke(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_alloc_init(VSIdentityProviderFilter);
  [(VSIdentityProviderFilter *)v4 setAllIdentityProviders:v3];
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v6 = [*(a1 + 32) applicationAccountProviders];
  v7 = [v6 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v26;
    do
    {
      v10 = 0;
      do
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v25 + 1) + 8 * v10) identifier];
        [v5 addObject:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v8);
  }

  v12 = [*(a1 + 32) supportedIdentityProviderIdentifiers];
  v13 = [v12 arrayByAddingObjectsFromArray:v5];

  [(VSIdentityProviderFilter *)v4 setSupportedAccountProviderIDs:v13];
  v14 = [(VSIdentityProviderFilter *)v4 filteredIdentityProviders];
  if ([v14 count])
  {
    v15 = [*(a1 + 32) currentAccount];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __68__VSViewServiceRequestPreparationOperation__checkSupportedProviders__block_invoke_2;
    v22[3] = &unk_279E19870;
    v16 = v14;
    v17 = *(a1 + 32);
    v23 = v16;
    v24 = v17;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __68__VSViewServiceRequestPreparationOperation__checkSupportedProviders__block_invoke_3;
    v20[3] = &unk_279E19848;
    v20[4] = v17;
    v21 = v16;
    [v15 conditionallyUnwrapObject:v22 otherwise:v20];

    v18 = v23;
  }

  else
  {
    v18 = VSPublicUnsupportedProviderError();
    [*(a1 + 32) _finishWithError:v18];
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __68__VSViewServiceRequestPreparationOperation__checkSupportedProviders__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 identityProviderID];
  v7 = [v3 forceUnwrapObject];

  v4 = [*(a1 + 32) valueForKeyPath:@"providerID.object"];
  v5 = [v4 containsObject:v7];

  if (v5)
  {
    [*(a1 + 40) _finishWithSupportedProviders:*(a1 + 32)];
  }

  else
  {
    v6 = VSPublicUnsupportedProviderError();
    [*(a1 + 40) _finishWithError:v6];
  }
}

void __80__VSViewServiceRequestPreparationOperation__determineProviderDisplayNameWithUI___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = VSDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_270DD4000, v4, OS_LOG_TYPE_DEFAULT, "Prep operation will fetch identity providers.", buf, 2u);
  }

  v5 = [VSIdentityProviderFetchOperation alloc];
  v6 = [v3 identityProviderID];
  v7 = [v6 forceUnwrapObject];
  v8 = [(VSIdentityProviderFetchOperation *)v5 initWithIdentityProviderID:v7];

  [(VSAsyncOperation *)v8 start];
  [(VSIdentityProviderFetchOperation *)v8 waitUntilFinished];
  v9 = VSDefaultLogObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_270DD4000, v9, OS_LOG_TYPE_DEFAULT, "Prep operation did fetch identity providers.", buf, 2u);
  }

  v10 = [(VSIdentityProviderFetchOperation *)v8 result];
  v11 = [v10 forceUnwrapObject];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __80__VSViewServiceRequestPreparationOperation__determineProviderDisplayNameWithUI___block_invoke_53;
  v16[3] = &unk_279E198C0;
  v17 = *(a1 + 32);
  v18 = *(a1 + 48);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __80__VSViewServiceRequestPreparationOperation__determineProviderDisplayNameWithUI___block_invoke_2;
  v13[3] = &unk_279E198E8;
  v15 = v17;
  v14 = v3;
  v12 = v3;
  [v11 unwrapObject:v16 error:v13];
}

void __80__VSViewServiceRequestPreparationOperation__determineProviderDisplayNameWithUI___block_invoke_53(void *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 displayName];
  v5 = [v4 forceUnwrapObject];
  v6 = *(a1[4] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = [v3 providerID];
  v9 = [v8 forceUnwrapObject];
  v10 = *(a1[5] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  LOBYTE(v8) = [v3 isFullySupportedForRequestsExpectingAuthenticationSchemes:0];
  *(*(a1[6] + 8) + 24) = v8;
}

void __80__VSViewServiceRequestPreparationOperation__determineProviderDisplayNameWithUI___block_invoke_2(uint64_t a1)
{
  v5 = [*(a1 + 32) optionalIdentityProviderDisplayName];
  v2 = [v5 forceUnwrapObject];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __126__VSViewServiceRequestPreparationOperation__promptForPrivacyWithDisplayNameIfRequired_providerID_providerIsSupported_allowUI___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = VSErrorLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __126__VSViewServiceRequestPreparationOperation__promptForPrivacyWithDisplayNameIfRequired_providerID_providerIsSupported_allowUI___block_invoke_cold_1();
  }

  v5 = VSPrivateError();
  [*(a1 + 32) _finishWithError:v5];
}

void __126__VSViewServiceRequestPreparationOperation__promptForPrivacyWithDisplayNameIfRequired_providerID_providerIsSupported_allowUI___block_invoke_55(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = VSDefaultLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 40);
    v11[0] = 67109120;
    v11[1] = v7;
    _os_log_impl(&dword_270DD4000, v6, OS_LOG_TYPE_DEFAULT, "Prep operation did request privacy access with UI allowed %d", v11, 8u);
  }

  switch(a2)
  {
    case 2:
      goto LABEL_6;
    case 1:
      [*(a1 + 32) _checkAvailability];
      break;
    case 0:
LABEL_6:
      v8 = *(a1 + 32);
      v9 = [v5 forceUnwrapObject];
      [v8 _finishWithError:v9];

      break;
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)cancel
{
  v2.receiver = self;
  v2.super_class = VSViewServiceRequestPreparationOperation;
  [(VSAsyncOperation *)&v2 cancel];
}

- ($115C4C562B26FF47E01F9F4EA65B5887)hostAuditToken
{
  v3 = *&self[11].var0[2];
  *retstr->var0 = *&self[10].var0[6];
  *&retstr->var0[4] = v3;
  return self;
}

- (void)setHostAuditToken:(id *)a3
{
  v3 = *&a3->var0[4];
  *self->_hostAuditToken.val = *a3->var0;
  *&self->_hostAuditToken.val[4] = v3;
}

- (void)_finishWithError:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __57__VSViewServiceRequestPreparationOperation__checkPrivacy__block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __57__VSViewServiceRequestPreparationOperation__checkPrivacy__block_invoke_28_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __126__VSViewServiceRequestPreparationOperation__promptForPrivacyWithDisplayNameIfRequired_providerID_providerIsSupported_allowUI___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end