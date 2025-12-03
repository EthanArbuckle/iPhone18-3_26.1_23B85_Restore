@interface VSIdentityProviderSubscriptionOperation
- (VSIdentityProviderSubscriptionOperation)init;
- (VSIdentityProviderSubscriptionOperation)initWithRegistrationCenter:(id)center andDeveloperSettingsFetchOperation:(id)operation;
- (id)_authorizedBundleIdsFromAppDescriptions:(id)descriptions;
- (void)_registerSubscriptions:(id)subscriptions withAuthorizedBundleIdentifiers:(id)identifiers;
- (void)_removeSubscriptionsForBundleIdentifiers:(id)identifiers withAuthorizedBundleIdentifiers:(id)bundleIdentifiers;
- (void)cancel;
- (void)executionDidBegin;
@end

@implementation VSIdentityProviderSubscriptionOperation

- (VSIdentityProviderSubscriptionOperation)init
{
  v10.receiver = self;
  v10.super_class = VSIdentityProviderSubscriptionOperation;
  v2 = [(VSIdentityProviderSubscriptionOperation *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCABD8]);
    privateQueue = v2->_privateQueue;
    v2->_privateQueue = v3;

    [(NSOperationQueue *)v2->_privateQueue setName:@"VSBulkSubscriptionOperation"];
    [(NSOperationQueue *)v2->_privateQueue setMaxConcurrentOperationCount:1];
    defaultSubscriptionRegistrationCenter = [MEMORY[0x277CE22F8] defaultSubscriptionRegistrationCenter];
    registrationCenter = v2->_registrationCenter;
    v2->_registrationCenter = defaultSubscriptionRegistrationCenter;

    v7 = objc_alloc_init(MEMORY[0x277CE2230]);
    developerSettingsFetchOperation = v2->_developerSettingsFetchOperation;
    v2->_developerSettingsFetchOperation = v7;
  }

  return v2;
}

- (VSIdentityProviderSubscriptionOperation)initWithRegistrationCenter:(id)center andDeveloperSettingsFetchOperation:(id)operation
{
  centerCopy = center;
  operationCopy = operation;
  v9 = [(VSIdentityProviderSubscriptionOperation *)self init];
  v10 = v9;
  if (v9)
  {
    if (centerCopy)
    {
      objc_storeStrong(&v9->_registrationCenter, center);
    }

    if (operationCopy)
    {
      objc_storeStrong(&v10->_developerSettingsFetchOperation, operation);
    }
  }

  return v10;
}

- (void)executionDidBegin
{
  privateQueue = [(VSIdentityProviderSubscriptionOperation *)self privateQueue];
  identityProvider = [(VSIdentityProviderSubscriptionOperation *)self identityProvider];
  subscriptionsToAdd = [(VSIdentityProviderSubscriptionOperation *)self subscriptionsToAdd];
  subscriptionsToRemoveByBundleID = [(VSIdentityProviderSubscriptionOperation *)self subscriptionsToRemoveByBundleID];
  isDeveloper = [identityProvider isDeveloper];
  nonChannelAppDescriptions = [identityProvider nonChannelAppDescriptions];
  v9 = [nonChannelAppDescriptions count] != 0;

  v38[0] = 0;
  v38[1] = v38;
  v38[2] = 0x2020000000;
  v39 = 0;
  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x3032000000;
  v36[3] = __Block_byref_object_copy_;
  v36[4] = __Block_byref_object_dispose_;
  v37 = 0;
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x3032000000;
  v34[3] = __Block_byref_object_copy_;
  v34[4] = __Block_byref_object_dispose_;
  v35 = objc_alloc_init(MEMORY[0x277CBEB98]);
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x3032000000;
  v32[3] = __Block_byref_object_copy_;
  v32[4] = __Block_byref_object_dispose_;
  nonChannelAppDescriptions2 = [identityProvider nonChannelAppDescriptions];
  v11 = nonChannelAppDescriptions2;
  v12 = v9 | isDeveloper;
  v13 = MEMORY[0x277CBEBF8];
  if (nonChannelAppDescriptions2)
  {
    v13 = nonChannelAppDescriptions2;
  }

  v33 = v13;

  if ((v12 & 1) != 0 && ([subscriptionsToAdd count] || objc_msgSend(subscriptionsToRemoveByBundleID, "count")))
  {
    objc_initWeak(&location, self);
    v14 = MEMORY[0x277CCA8C8];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __60__VSIdentityProviderSubscriptionOperation_executionDidBegin__block_invoke;
    v21[3] = &unk_279E193E8;
    objc_copyWeak(&v29, &location);
    v30 = isDeveloper;
    v25 = v38;
    v26 = v36;
    v27 = v34;
    v28 = v32;
    v22 = subscriptionsToRemoveByBundleID;
    v23 = subscriptionsToAdd;
    selfCopy = self;
    v15 = [v14 blockOperationWithBlock:v21];
    developerSettingsFetchOperation = [(VSIdentityProviderSubscriptionOperation *)self developerSettingsFetchOperation];
    v19[0] = 0;
    v19[1] = v19;
    v19[2] = 0x3042000000;
    v19[3] = __Block_byref_object_copy__13;
    v19[4] = __Block_byref_object_dispose__14;
    objc_initWeak(&v20, developerSettingsFetchOperation);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __60__VSIdentityProviderSubscriptionOperation_executionDidBegin__block_invoke_15;
    v18[3] = &unk_279E19458;
    v18[4] = v19;
    v18[5] = v38;
    v18[6] = v36;
    v17 = [MEMORY[0x277CCA8C8] blockOperationWithBlock:v18];
    [v17 addDependency:developerSettingsFetchOperation];
    [v15 addDependency:v17];
    [privateQueue addOperation:developerSettingsFetchOperation];
    [privateQueue addOperation:v17];
    [privateQueue addOperation:v15];
    [v15 waitUntilFinished];

    _Block_object_dispose(v19, 8);
    objc_destroyWeak(&v20);

    objc_destroyWeak(&v29);
    objc_destroyWeak(&location);
  }

  else
  {
    [(VSAsyncOperation *)self finishExecutionIfPossible];
  }

  _Block_object_dispose(v32, 8);

  _Block_object_dispose(v34, 8);
  _Block_object_dispose(v36, 8);

  _Block_object_dispose(v38, 8);
}

void __60__VSIdentityProviderSubscriptionOperation_executionDidBegin__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 88));
  if (WeakRetained)
  {
    if (*(a1 + 96) == 1)
    {
      if (*(*(*(a1 + 56) + 8) + 24) == 1 && *(*(*(a1 + 64) + 8) + 40))
      {
        v3 = VSDefaultLogObject();
        if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_270DD4000, v3, OS_LOG_TYPE_DEFAULT, "Will write subscriptions for developer provider in Set Top Box Mode and with a bundle identifier.", buf, 2u);
        }

        v4 = [MEMORY[0x277CBEB98] setWithObject:*(*(*(a1 + 64) + 8) + 40)];
      }

      else
      {
        v6 = VSDefaultLogObject();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *v13 = 0;
          _os_log_impl(&dword_270DD4000, v6, OS_LOG_TYPE_DEFAULT, "Will allow any subscription bundle IDs for developer provider not in Set Top Box Mode or without a bundle identifier.", v13, 2u);
        }

        v4 = 0;
      }
    }

    else
    {
      v5 = VSDefaultLogObject();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&dword_270DD4000, v5, OS_LOG_TYPE_DEFAULT, "Will configure app as non channel purple software.", v11, 2u);
      }

      v4 = [WeakRetained _authorizedBundleIdsFromAppDescriptions:*(*(*(a1 + 80) + 8) + 40)];
    }

    v7 = *(*(a1 + 72) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v4;

    if ([*(a1 + 32) count])
    {
      v9 = *(a1 + 32);
      if (!v9)
      {
        [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The clearSubscriptionBundleIdsOrNil parameter must not be nil."];
        v9 = *(a1 + 32);
      }

      [WeakRetained _removeSubscriptionsForBundleIdentifiers:v9 withAuthorizedBundleIdentifiers:*(*(*(a1 + 72) + 8) + 40)];
    }

    if ([*(a1 + 40) count])
    {
      v10 = *(a1 + 40);
      if (!v10)
      {
        [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The newSubscriptionsOrNil parameter must not be nil."];
        v10 = *(a1 + 40);
      }

      [WeakRetained _registerSubscriptions:v10 withAuthorizedBundleIdentifiers:*(*(*(a1 + 72) + 8) + 40)];
    }
  }

  [*(a1 + 48) finishExecutionIfPossible];
}

void __60__VSIdentityProviderSubscriptionOperation_executionDidBegin__block_invoke_15(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(*(a1 + 32) + 8) + 40));
  v3 = [WeakRetained result];
  v4 = [v3 forceUnwrapObject];

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __60__VSIdentityProviderSubscriptionOperation_executionDidBegin__block_invoke_2;
  v5[3] = &unk_279E19410;
  v6 = *(a1 + 40);
  [v4 unwrapObject:v5 error:&__block_literal_global_0];
}

void __60__VSIdentityProviderSubscriptionOperation_executionDidBegin__block_invoke_2(uint64_t a1, void *a2)
{
  v8 = a2;
  *(*(*(a1 + 32) + 8) + 24) = [v8 isInSetTopBoxMode];
  v3 = [v8 setTopBoxBundleIdentifier];
  v4 = [v3 length];

  if (v4)
  {
    v5 = [v8 setTopBoxBundleIdentifier];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }
}

void __60__VSIdentityProviderSubscriptionOperation_executionDidBegin__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = VSErrorLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __60__VSIdentityProviderSubscriptionOperation_executionDidBegin__block_invoke_3_cold_1(v2, v3);
  }
}

- (id)_authorizedBundleIdsFromAppDescriptions:(id)descriptions
{
  v18 = *MEMORY[0x277D85DE8];
  descriptionsCopy = descriptions;
  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = descriptionsCopy;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        bundleID = [*(*(&v13 + 1) + 8 * i) bundleID];
        if (bundleID)
        {
          [v4 addObject:bundleID];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)_removeSubscriptionsForBundleIdentifiers:(id)identifiers withAuthorizedBundleIdentifiers:(id)bundleIdentifiers
{
  v26[1] = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  bundleIdentifiersCopy = bundleIdentifiers;
  registrationCenter = [(VSIdentityProviderSubscriptionOperation *)self registrationCenter];
  v9 = objc_alloc_init(MEMORY[0x277CE22D8]);
  v25 = *MEMORY[0x277CE24C8];
  v26[0] = MEMORY[0x277CBEC28];
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __116__VSIdentityProviderSubscriptionOperation__removeSubscriptionsForBundleIdentifiers_withAuthorizedBundleIdentifiers___block_invoke;
  v19 = &unk_279E19480;
  v20 = identifiersCopy;
  v21 = bundleIdentifiersCopy;
  selfCopy = self;
  v23 = registrationCenter;
  v24 = v9;
  v11 = v9;
  v12 = registrationCenter;
  v13 = bundleIdentifiersCopy;
  v14 = identifiersCopy;
  [v12 fetchActiveSubscriptionsWithOptions:v10 completionHandler:&v16];
  [v11 wait];

  v15 = *MEMORY[0x277D85DE8];
}

void __116__VSIdentityProviderSubscriptionOperation__removeSubscriptionsForBundleIdentifiers_withAuthorizedBundleIdentifiers___block_invoke(uint64_t a1, void *a2)
{
  v49 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v39 objects:v48 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v40;
    *&v6 = 138412546;
    v30 = v6;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v40 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v39 + 1) + 8 * i);
        v11 = [v10 source];
        v12 = [v11 identifier];

        v13 = VSDefaultLogObject();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v45 = v12;
          _os_log_impl(&dword_270DD4000, v13, OS_LOG_TYPE_DEFAULT, "will check if subscription for bundle ID %@ exists and is authorized for removal", buf, 0xCu);
        }

        if ([*(a1 + 32) containsObject:v12])
        {
          v14 = *(a1 + 40);
          if (v14 && ![v14 containsObject:v12])
          {
            v15 = VSErrorLogObject();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              v32 = [*(a1 + 48) identityProvider];
              v16 = [v32 providerID];
              v31 = [v16 forceUnwrapObject];
              *buf = v30;
              v45 = v12;
              v46 = 2112;
              v47 = v31;
              _os_log_error_impl(&dword_270DD4000, v15, OS_LOG_TYPE_ERROR, "denying subscription removal for subscription for bundle ID %@ from identity provider %@", buf, 0x16u);
            }
          }

          else
          {
            [v4 addObject:v10];
          }
        }
      }

      v7 = [obj countByEnumeratingWithState:&v39 objects:v48 count:16];
    }

    while (v7);
  }

  if ([v4 count])
  {
    v17 = VSDefaultLogObject();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [v4 count];
      *buf = 134217984;
      v45 = v18;
      _os_log_impl(&dword_270DD4000, v17, OS_LOG_TYPE_DEFAULT, "will remove %lu subscriptions due to idenity provider clear request.", buf, 0xCu);
    }

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = v4;
    v19 = v4;
    v20 = [v19 countByEnumeratingWithState:&v35 objects:v43 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v36;
      v23 = *MEMORY[0x277CE2490];
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v36 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v25 = *(*(&v35 + 1) + 8 * j);
          v26 = [*(a1 + 48) identityProvider];
          v27 = [v26 providerID];
          v28 = [v27 forceUnwrapObject];
          [v25 setModifierIdentifier:v28];

          [v25 setModifierType:v23];
        }

        v21 = [v19 countByEnumeratingWithState:&v35 objects:v43 count:16];
      }

      while (v21);
    }

    [*(a1 + 56) removeSubscriptions:v19];
    v4 = v33;
  }

  [*(a1 + 64) signal];

  v29 = *MEMORY[0x277D85DE8];
}

- (void)_registerSubscriptions:(id)subscriptions withAuthorizedBundleIdentifiers:(id)identifiers
{
  v41 = *MEMORY[0x277D85DE8];
  subscriptionsCopy = subscriptions;
  identifiersCopy = identifiers;
  selfCopy = self;
  registrationCenter = [(VSIdentityProviderSubscriptionOperation *)self registrationCenter];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = subscriptionsCopy;
  v9 = [obj countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v9)
  {
    v11 = v9;
    v12 = *v33;
    v13 = *MEMORY[0x277CE2490];
    *&v10 = 138412546;
    v27 = v10;
    do
    {
      v14 = 0;
      do
      {
        if (*v33 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v32 + 1) + 8 * v14);
        if (identifiersCopy && ([*(*(&v32 + 1) + 8 * v14) source], v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "identifier"), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(identifiersCopy, "containsObject:", v17), v17, v16, !v18))
        {
          v22 = VSErrorLogObject();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            source = [v15 source];
            identifier = [source identifier];
            identityProvider = [(VSIdentityProviderSubscriptionOperation *)selfCopy identityProvider];
            providerID = [identityProvider providerID];
            forceUnwrapObject = [providerID forceUnwrapObject];
            *buf = v27;
            v37 = identifier;
            v38 = 2112;
            v39 = forceUnwrapObject;
            _os_log_error_impl(&dword_270DD4000, v22, OS_LOG_TYPE_ERROR, "denying subscription registration for subscription for bundle ID %@ from identity provider %@", buf, 0x16u);
          }
        }

        else
        {
          identityProvider2 = [(VSIdentityProviderSubscriptionOperation *)selfCopy identityProvider];
          providerID2 = [identityProvider2 providerID];
          forceUnwrapObject2 = [providerID2 forceUnwrapObject];
          [v15 setModifierIdentifier:forceUnwrapObject2];

          [v15 setModifierType:v13];
          [registrationCenter registerSubscription:v15];
        }

        ++v14;
      }

      while (v11 != v14);
      v11 = [obj countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v11);
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)cancel
{
  v4.receiver = self;
  v4.super_class = VSIdentityProviderSubscriptionOperation;
  [(VSAsyncOperation *)&v4 cancel];
  privateQueue = [(VSIdentityProviderSubscriptionOperation *)self privateQueue];
  [privateQueue cancelAllOperations];
}

void __60__VSIdentityProviderSubscriptionOperation_executionDidBegin__block_invoke_3_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_270DD4000, a2, OS_LOG_TYPE_ERROR, "Error fetching developer settings: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end