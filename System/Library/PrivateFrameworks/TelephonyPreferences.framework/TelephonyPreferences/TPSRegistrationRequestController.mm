@interface TPSRegistrationRequestController
- (void)executeFetchForRequest:(id)request;
- (void)executeRequest:(id)request;
- (void)networkListAvailable:(id)available list:(id)list;
- (void)respondWithSubscription:(id)subscription cellularNetworks:(id)networks error:(id)error;
@end

@implementation TPSRegistrationRequestController

- (void)executeRequest:(id)request
{
  requestCopy = request;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(TPSRegistrationRequestController *)self executeFetchForRequest:requestCopy];
  }
}

- (void)executeFetchForRequest:(id)request
{
  subscriptionContext = [request subscriptionContext];
  telephonyClient = [(TPSRequestController *)self telephonyClient];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__TPSRegistrationRequestController_executeFetchForRequest___block_invoke;
  v7[3] = &unk_2782E3BD8;
  v7[4] = self;
  v8 = subscriptionContext;
  v6 = subscriptionContext;
  [telephonyClient fetchNetworkList:v6 completion:v7];
}

uint64_t __59__TPSRegistrationRequestController_executeFetchForRequest___block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) respondWithSubscription:*(result + 40) cellularNetworks:0 error:a2];
  }

  return result;
}

- (void)respondWithSubscription:(id)subscription cellularNetworks:(id)networks error:(id)error
{
  errorCopy = error;
  networksCopy = networks;
  subscriptionCopy = subscription;
  v11 = [[TPSCellularNetworksResponse alloc] initWithSubscriptionContext:subscriptionCopy error:errorCopy cellularNetworks:networksCopy];

  [(TPSRequestController *)self postResponse:v11];
}

- (void)networkListAvailable:(id)available list:(id)list
{
  v15 = *MEMORY[0x277D85DE8];
  availableCopy = available;
  networks = [list networks];
  v8 = TPSLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    pendingRequest = [(TPSRequestController *)self pendingRequest];
    v11 = 138412546;
    v12 = pendingRequest;
    v13 = 2112;
    v14 = networks;
    _os_log_impl(&dword_21B8E9000, v8, OS_LOG_TYPE_DEFAULT, "Cellular network fetch request succeeded for %@; value is %@.", &v11, 0x16u);
  }

  [(TPSRegistrationRequestController *)self respondWithSubscription:availableCopy cellularNetworks:networks error:0];
  v10 = *MEMORY[0x277D85DE8];
}

@end