@interface TPSRegistrationTelephonyController
- (CTNetworkSelectionInfo)networkSelectionInfo;
- (NSArray)networks;
- (TPSRegistrationTelephonyController)init;
- (TPSRegistrationTelephonyController)initWithSubscriptionContext:(id)context;
- (id)copyNetworkSelectionInfo;
- (void)automaticallySelectNetworkWithCompletion:(id)completion;
- (void)copyNetworkSelectionInfo;
- (void)fetchNetworkListWithCompletion:(id)completion;
- (void)networkListAvailable:(id)available list:(id)list;
- (void)networkSelected:(id)selected success:(BOOL)success mode:(id)mode;
- (void)performDelegateSelector:(SEL)selector;
- (void)selectNetwork:(id)network;
- (void)selectNetwork:(id)network completion:(id)completion;
- (void)setNetworkSelectionInfo:(id)info;
- (void)setNetworks:(id)networks;
@end

@implementation TPSRegistrationTelephonyController

- (TPSRegistrationTelephonyController)init
{
  [(TPSRegistrationTelephonyController *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (TPSRegistrationTelephonyController)initWithSubscriptionContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = TPSRegistrationTelephonyController;
  v6 = [(TPSTelephonyController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_subscriptionContext, context);
  }

  return v7;
}

- (NSArray)networks
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__0;
  v9 = __Block_byref_object_dispose__0;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __46__TPSRegistrationTelephonyController_networks__block_invoke;
  v4[3] = &unk_2782E3988;
  v4[4] = self;
  v4[5] = &v5;
  [(TPSTelephonyController *)self performAtomicAccessorBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (void)setNetworks:(id)networks
{
  networksCopy = networks;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __50__TPSRegistrationTelephonyController_setNetworks___block_invoke;
  v6[3] = &unk_2782E39D0;
  v6[4] = self;
  v7 = networksCopy;
  v5 = networksCopy;
  [(TPSTelephonyController *)self performAtomicAccessorBlock:v6];
}

void *__50__TPSRegistrationTelephonyController_setNetworks___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v3 + 72) != result)
  {
    v4 = [result copy];
    v5 = *(a1 + 32);
    v6 = *(v5 + 72);
    *(v5 + 72) = v4;

    v7 = *(a1 + 32);

    return [v7 performDelegateSelector:sel_networksChangedForRegistrationController_];
  }

  return result;
}

- (CTNetworkSelectionInfo)networkSelectionInfo
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__0;
  v9 = __Block_byref_object_dispose__0;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __58__TPSRegistrationTelephonyController_networkSelectionInfo__block_invoke;
  v4[3] = &unk_2782E3AA0;
  v4[4] = self;
  v4[5] = &v5;
  [(TPSTelephonyController *)self performAtomicAccessorBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __58__TPSRegistrationTelephonyController_networkSelectionInfo__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[10];
  if (!v3)
  {
    v4 = [v2 copyNetworkSelectionInfo];
    v5 = *(a1 + 32);
    v6 = *(v5 + 80);
    *(v5 + 80) = v4;

    v3 = *(*(a1 + 32) + 80);
  }

  v7 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v7, v3);
}

- (void)setNetworkSelectionInfo:(id)info
{
  infoCopy = info;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __62__TPSRegistrationTelephonyController_setNetworkSelectionInfo___block_invoke;
  v6[3] = &unk_2782E39D0;
  v6[4] = self;
  v7 = infoCopy;
  v5 = infoCopy;
  [(TPSTelephonyController *)self performAtomicAccessorBlock:v6];
}

uint64_t __62__TPSRegistrationTelephonyController_setNetworkSelectionInfo___block_invoke(uint64_t result)
{
  v3 = *(result + 32);
  v2 = *(result + 40);
  if (*(v3 + 80) != v2)
  {
    v4 = result;
    objc_storeStrong((v3 + 80), v2);
    v5 = *(v4 + 32);

    return [v5 performDelegateSelector:sel_networkSelectionInfoChangedForRegistrationController_];
  }

  return result;
}

void __64__TPSRegistrationTelephonyController_automaticallySelectNetwork__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = TPSLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __64__TPSRegistrationTelephonyController_automaticallySelectNetwork__block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

- (void)automaticallySelectNetworkWithCompletion:(id)completion
{
  completionCopy = completion;
  telephonyClient = [(TPSTelephonyController *)self telephonyClient];
  subscriptionContext = [(TPSRegistrationTelephonyController *)self subscriptionContext];
  [telephonyClient automaticallySelectNetwork:subscriptionContext completion:completionCopy];
}

- (void)selectNetwork:(id)network
{
  networkCopy = network;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__TPSRegistrationTelephonyController_selectNetwork___block_invoke;
  v6[3] = &unk_2782E3A48;
  v7 = networkCopy;
  v5 = networkCopy;
  [(TPSRegistrationTelephonyController *)self selectNetwork:v5 completion:v6];
}

void __52__TPSRegistrationTelephonyController_selectNetwork___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = TPSLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __52__TPSRegistrationTelephonyController_selectNetwork___block_invoke_cold_1(a1, v3, v4);
    }
  }
}

- (void)selectNetwork:(id)network completion:(id)completion
{
  completionCopy = completion;
  networkCopy = network;
  telephonyClient = [(TPSTelephonyController *)self telephonyClient];
  subscriptionContext = [(TPSRegistrationTelephonyController *)self subscriptionContext];
  [telephonyClient selectNetwork:subscriptionContext network:networkCopy completion:completionCopy];
}

- (id)copyNetworkSelectionInfo
{
  telephonyClient = [(TPSTelephonyController *)self telephonyClient];
  subscriptionContext = [(TPSRegistrationTelephonyController *)self subscriptionContext];
  v15 = 0;
  v5 = [telephonyClient copyNetworkSelectionInfo:subscriptionContext error:&v15];
  v6 = v15;

  if (v6)
  {
    v7 = TPSLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(TPSRegistrationTelephonyController *)v6 copyNetworkSelectionInfo:v7];
    }
  }

  return v5;
}

void __54__TPSRegistrationTelephonyController_fetchNetworkList__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    v4 = [v2 domain];

    if (v4)
    {
      v5 = TPSLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        __54__TPSRegistrationTelephonyController_fetchNetworkList__block_invoke_cold_1(v3, v5, v6, v7, v8, v9, v10, v11);
      }
    }
  }
}

- (void)fetchNetworkListWithCompletion:(id)completion
{
  completionCopy = completion;
  telephonyClient = [(TPSTelephonyController *)self telephonyClient];
  subscriptionContext = [(TPSRegistrationTelephonyController *)self subscriptionContext];
  [telephonyClient fetchNetworkList:subscriptionContext completion:completionCopy];
}

- (void)performDelegateSelector:(SEL)selector
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __62__TPSRegistrationTelephonyController_performDelegateSelector___block_invoke;
  v3[3] = &unk_2782E3B10;
  v3[4] = self;
  v3[5] = selector;
  [(TPSController *)self performAtomicDelegateBlock:v3];
}

void __62__TPSRegistrationTelephonyController_performDelegateSelector___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = [*(a1 + 32) delegateToQueue];
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    do
    {
      v6 = 0;
      do
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v14 + 1) + 8 * v6);
        v8 = *(a1 + 40);
        if (objc_opt_respondsToSelector())
        {
          v9 = [*(a1 + 32) delegateToQueue];
          v10 = [v9 objectForKey:v7];

          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __62__TPSRegistrationTelephonyController_performDelegateSelector___block_invoke_2;
          block[3] = &unk_2782E3AE8;
          block[4] = v7;
          v13 = *(a1 + 32);
          dispatch_async(v10, block);
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)networkListAvailable:(id)available list:(id)list
{
  v15 = *MEMORY[0x277D85DE8];
  listCopy = list;
  availableCopy = available;
  subscriptionContext = [(TPSRegistrationTelephonyController *)self subscriptionContext];
  v9 = [subscriptionContext isEqual:availableCopy];

  if (v9)
  {
    v10 = TPSLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = listCopy;
      _os_log_impl(&dword_21B8E9000, v10, OS_LOG_TYPE_DEFAULT, "Network list is available %@", &v13, 0xCu);
    }

    networks = [listCopy networks];
    [(TPSRegistrationTelephonyController *)self setNetworks:networks];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)networkSelected:(id)selected success:(BOOL)success mode:(id)mode
{
  successCopy = success;
  v18 = *MEMORY[0x277D85DE8];
  selectedCopy = selected;
  subscriptionContext = [(TPSRegistrationTelephonyController *)self subscriptionContext];
  v9 = [subscriptionContext isEqual:selectedCopy];

  if (v9)
  {
    v10 = TPSLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = @"failed";
      if (successCopy)
      {
        v11 = @"succeeded";
      }

      v14 = 138412546;
      v15 = v11;
      v16 = 2112;
      v17 = selectedCopy;
      _os_log_impl(&dword_21B8E9000, v10, OS_LOG_TYPE_DEFAULT, "Manual network selection %@ for subscription %@.", &v14, 0x16u);
    }

    copyNetworkSelectionInfo = [(TPSRegistrationTelephonyController *)self copyNetworkSelectionInfo];
    [(TPSRegistrationTelephonyController *)self setNetworkSelectionInfo:copyNetworkSelectionInfo];
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __64__TPSRegistrationTelephonyController_automaticallySelectNetwork__block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_21B8E9000, a2, a3, "Automatic network selection failed with error %@.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __52__TPSRegistrationTelephonyController_selectNetwork___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_21B8E9000, log, OS_LOG_TYPE_ERROR, "Manual selection of network %@ failed with error %@.", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)copyNetworkSelectionInfo
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_21B8E9000, a2, a3, "Retrieving network selection information failed with error %@.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __54__TPSRegistrationTelephonyController_fetchNetworkList__block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_21B8E9000, a2, a3, "Fetch network list failed with error %@.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end