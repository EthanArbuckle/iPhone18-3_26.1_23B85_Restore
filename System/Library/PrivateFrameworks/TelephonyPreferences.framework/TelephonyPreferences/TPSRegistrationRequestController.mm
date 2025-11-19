@interface TPSRegistrationRequestController
- (void)executeFetchForRequest:(id)a3;
- (void)executeRequest:(id)a3;
- (void)networkListAvailable:(id)a3 list:(id)a4;
- (void)respondWithSubscription:(id)a3 cellularNetworks:(id)a4 error:(id)a5;
@end

@implementation TPSRegistrationRequestController

- (void)executeRequest:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(TPSRegistrationRequestController *)self executeFetchForRequest:v4];
  }
}

- (void)executeFetchForRequest:(id)a3
{
  v4 = [a3 subscriptionContext];
  v5 = [(TPSRequestController *)self telephonyClient];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__TPSRegistrationRequestController_executeFetchForRequest___block_invoke;
  v7[3] = &unk_2782E3BD8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 fetchNetworkList:v6 completion:v7];
}

uint64_t __59__TPSRegistrationRequestController_executeFetchForRequest___block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) respondWithSubscription:*(result + 40) cellularNetworks:0 error:a2];
  }

  return result;
}

- (void)respondWithSubscription:(id)a3 cellularNetworks:(id)a4 error:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[TPSCellularNetworksResponse alloc] initWithSubscriptionContext:v10 error:v8 cellularNetworks:v9];

  [(TPSRequestController *)self postResponse:v11];
}

- (void)networkListAvailable:(id)a3 list:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [a4 networks];
  v8 = TPSLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(TPSRequestController *)self pendingRequest];
    v11 = 138412546;
    v12 = v9;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&dword_21B8E9000, v8, OS_LOG_TYPE_DEFAULT, "Cellular network fetch request succeeded for %@; value is %@.", &v11, 0x16u);
  }

  [(TPSRegistrationRequestController *)self respondWithSubscription:v6 cellularNetworks:v7 error:0];
  v10 = *MEMORY[0x277D85DE8];
}

@end