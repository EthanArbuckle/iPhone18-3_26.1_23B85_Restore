@interface SKUIRedeemIdRequiresValidationOperation
- (BOOL)_performAuthentication;
- (SKUIRedeemViewControllerLegacy)redeemViewController;
- (id)_authenticationContext;
- (id)_subOperationWithBagKey:(id)key;
- (void)_logResultsForSuccess:(BOOL)success shouldVerify:(BOOL)verify failureReason:(id)reason error:(id)error;
- (void)main;
- (void)operation:(id)operation selectedButton:(id)button;
@end

@implementation SKUIRedeemIdRequiresValidationOperation

- (void)main
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIRedeemIdRequiresValidationOperation main]";
}

- (void)operation:(id)operation selectedButton:(id)button
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__SKUIRedeemIdRequiresValidationOperation_operation_selectedButton___block_invoke;
  block[3] = &unk_2781F80F0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (BOOL)_performAuthentication
{
  v3 = objc_alloc_init(MEMORY[0x277D7FCC8]);
  _authenticationContext = [(SKUIRedeemIdRequiresValidationOperation *)self _authenticationContext];
  requiredUniqueIdentifier = [_authenticationContext requiredUniqueIdentifier];

  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 1;
  if (([v3 canPerformExtendedBiometricActionsForAccountIdentifier:requiredUniqueIdentifier] & 1) == 0)
  {
    v6 = dispatch_semaphore_create(0);
    v7 = objc_alloc(MEMORY[0x277D69A50]);
    _authenticationContext2 = [(SKUIRedeemIdRequiresValidationOperation *)self _authenticationContext];
    v9 = [v7 initWithAuthenticationContext:_authenticationContext2];

    redeemViewController = [(SKUIRedeemIdRequiresValidationOperation *)self redeemViewController];
    [v9 set_parentViewController:redeemViewController];

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __65__SKUIRedeemIdRequiresValidationOperation__performAuthentication__block_invoke;
    v14[3] = &unk_278200590;
    v16 = &v17;
    v11 = v6;
    v15 = v11;
    [v9 startWithAuthenticateResponseBlock:v14];
    dispatch_semaphore_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
  }

  v12 = *(v18 + 24);
  _Block_object_dispose(&v17, 8);

  return v12;
}

intptr_t __65__SKUIRedeemIdRequiresValidationOperation__performAuthentication__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 authenticatedAccount];

  if (!v3)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  v4 = *(a1 + 32);

  return dispatch_semaphore_signal(v4);
}

- (id)_authenticationContext
{
  defaultStore = [MEMORY[0x277D69A20] defaultStore];
  activeAccount = [defaultStore activeAccount];

  if (activeAccount)
  {
    contextForSignIn = [objc_alloc(MEMORY[0x277D69BC8]) initWithAccount:activeAccount];
    [contextForSignIn setPromptStyle:1];
    [contextForSignIn setShouldCreateNewSession:1];
  }

  else
  {
    contextForSignIn = [MEMORY[0x277D69BC8] contextForSignIn];
  }

  return contextForSignIn;
}

- (id)_subOperationWithBagKey:(id)key
{
  v3 = MEMORY[0x277D7FD48];
  keyCopy = key;
  v5 = objc_alloc_init(v3);
  v6 = objc_alloc_init(MEMORY[0x277D69BD0]);
  [v6 setITunesStoreRequest:1];
  v7 = SSVDefaultUserAgent();
  [v6 setValue:v7 forHTTPHeaderField:@"User-Agent"];

  [v6 setURLBagKey:keyCopy];
  [v5 setRequestProperties:v6];
  provider = [MEMORY[0x277D7FD38] provider];
  [v5 setDataProvider:provider];

  return v5;
}

- (void)_logResultsForSuccess:(BOOL)success shouldVerify:(BOOL)verify failureReason:(id)reason error:(id)error
{
  verifyCopy = verify;
  successCopy = success;
  v16[2] = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  errorCopy = error;
  v15[0] = @"success";
  v11 = [MEMORY[0x277CCABB0] numberWithBool:successCopy];
  v15[1] = @"hasNationalId";
  v16[0] = v11;
  v12 = [MEMORY[0x277CCABB0] numberWithInt:!verifyCopy];
  v16[1] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
  v14 = [v13 mutableCopy];

  if (reasonCopy)
  {
    [v14 setObject:reasonCopy forKeyedSubscript:@"failure reason"];
  }

  if (errorCopy)
  {
    [v14 setObject:errorCopy forKeyedSubscript:@"error"];
  }

  SSDebugLog();
}

- (SKUIRedeemViewControllerLegacy)redeemViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_redeemViewController);

  return WeakRetained;
}

@end