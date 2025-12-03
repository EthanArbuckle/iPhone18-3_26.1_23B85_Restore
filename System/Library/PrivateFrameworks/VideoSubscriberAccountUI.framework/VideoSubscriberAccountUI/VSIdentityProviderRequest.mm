@interface VSIdentityProviderRequest
+ (id)STBOptOutRequestWithStorage:(id)storage;
+ (id)accountMetadataRequestWithAccount:(id)account storage:(id)storage accountMetadataRequest:(id)request requestingAppDisplayName:(id)name requestingAppAdamID:(id)d accountProviderAuthenticationToken:(id)token;
+ (id)deleteAccountRequestWithAccount:(id)account storage:(id)storage;
+ (id)makeAccountRequestWithStorage:(id)storage;
+ (id)silentMakeAccountRequestWithStorage:(id)storage;
- (BOOL)allowsUI;
- (BOOL)forceAuthentication;
- (VSIdentityProviderRequest)init;
- (id)_initWithRequestType:(int64_t)type account:(id)account storage:(id)storage;
- (id)description;
@end

@implementation VSIdentityProviderRequest

+ (id)makeAccountRequestWithStorage:(id)storage
{
  storageCopy = storage;
  v4 = [[VSIdentityProviderRequest alloc] _initWithRequestType:1 account:0 storage:storageCopy];

  return v4;
}

+ (id)silentMakeAccountRequestWithStorage:(id)storage
{
  storageCopy = storage;
  v4 = [[VSIdentityProviderRequest alloc] _initWithRequestType:4 account:0 storage:storageCopy];

  return v4;
}

+ (id)accountMetadataRequestWithAccount:(id)account storage:(id)storage accountMetadataRequest:(id)request requestingAppDisplayName:(id)name requestingAppAdamID:(id)d accountProviderAuthenticationToken:(id)token
{
  accountCopy = account;
  storageCopy = storage;
  requestCopy = request;
  nameCopy = name;
  dCopy = d;
  tokenCopy = token;
  if (!requestCopy)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The accountMetadataRequest parameter must not be nil."];
  }

  v19 = [[VSIdentityProviderRequest alloc] _initWithRequestType:3 account:accountCopy storage:storageCopy];
  v20 = [MEMORY[0x277CE2298] optionalWithObject:requestCopy];
  [v19 setAccountMetadataRequest:v20];

  v21 = [nameCopy copy];
  [v19 setRequestingAppDisplayName:v21];

  v22 = [dCopy copy];
  [v19 setRequestingAppAdamID:v22];

  v23 = [tokenCopy copy];
  [v19 setAccountProviderAuthenticationToken:v23];

  return v19;
}

+ (id)deleteAccountRequestWithAccount:(id)account storage:(id)storage
{
  accountCopy = account;
  storageCopy = storage;
  if (!accountCopy)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The account parameter must not be nil."];
  }

  v7 = [[VSIdentityProviderRequest alloc] _initWithRequestType:2 account:accountCopy storage:storageCopy];

  return v7;
}

+ (id)STBOptOutRequestWithStorage:(id)storage
{
  storageCopy = storage;
  v4 = [[VSIdentityProviderRequest alloc] _initWithRequestType:5 account:0 storage:storageCopy];

  [v4 setType:5];

  return v4;
}

- (VSIdentityProviderRequest)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The %@ initializer is not available.", v5}];

  return 0;
}

- (BOOL)allowsUI
{
  if ([(VSIdentityProviderRequest *)self requiresUI])
  {
    return 1;
  }

  if ([(VSIdentityProviderRequest *)self type]!= 3)
  {
    return 0;
  }

  accountMetadataRequest = [(VSIdentityProviderRequest *)self accountMetadataRequest];
  forceUnwrapObject = [accountMetadataRequest forceUnwrapObject];
  isInterruptionAllowed = [forceUnwrapObject isInterruptionAllowed];

  return isInterruptionAllowed;
}

- (id)_initWithRequestType:(int64_t)type account:(id)account storage:(id)storage
{
  accountCopy = account;
  storageCopy = storage;
  if (!storageCopy)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The storage parameter must not be nil."];
  }

  v16.receiver = self;
  v16.super_class = VSIdentityProviderRequest;
  v11 = [(VSIdentityProviderRequest *)&v16 init];
  v12 = v11;
  if (v11)
  {
    v11->_type = type;
    objc_storeStrong(&v11->_account, account);
    objc_storeStrong(&v12->_storage, storage);
    v13 = objc_alloc_init(MEMORY[0x277CE2298]);
    accountMetadataRequest = v12->_accountMetadataRequest;
    v12->_accountMetadataRequest = v13;
  }

  return v12;
}

- (BOOL)forceAuthentication
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  accountMetadataRequest = [(VSIdentityProviderRequest *)self accountMetadataRequest];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __48__VSIdentityProviderRequest_forceAuthentication__block_invoke;
  v4[3] = &unk_279E1A0A0;
  v4[4] = &v5;
  [accountMetadataRequest conditionallyUnwrapObject:v4];

  LOBYTE(accountMetadataRequest) = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return accountMetadataRequest;
}

uint64_t __48__VSIdentityProviderRequest_forceAuthentication__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 forceAuthentication];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = MEMORY[0x277CCACA8];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{-[VSIdentityProviderRequest type](self, "type")}];
  v6 = [v4 stringWithFormat:@"%@ = %@", @"type", v5];
  [v3 addObject:v6];

  v7 = MEMORY[0x277CCACA8];
  requestingAppDisplayName = [(VSIdentityProviderRequest *)self requestingAppDisplayName];
  v9 = [v7 stringWithFormat:@"%@ = %@", @"requestingAppDisplayName", requestingAppDisplayName];
  [v3 addObject:v9];

  v10 = MEMORY[0x277CCACA8];
  requestingAppAdamID = [(VSIdentityProviderRequest *)self requestingAppAdamID];
  v12 = [v10 stringWithFormat:@"%@ = %@", @"requestingAppAdamID", requestingAppAdamID];
  [v3 addObject:v12];

  v13 = MEMORY[0x277CCACA8];
  account = [(VSIdentityProviderRequest *)self account];
  v15 = [v13 stringWithFormat:@"%@ = %@", @"account", account];
  [v3 addObject:v15];

  v16 = MEMORY[0x277CCACA8];
  storage = [(VSIdentityProviderRequest *)self storage];
  v18 = [v16 stringWithFormat:@"%@ = %@", @"storage", storage];
  [v3 addObject:v18];

  v19 = MEMORY[0x277CCACA8];
  accountMetadataRequest = [(VSIdentityProviderRequest *)self accountMetadataRequest];
  v21 = [v19 stringWithFormat:@"%@ = %@", @"accountMetadataRequest", accountMetadataRequest];
  [v3 addObject:v21];

  v22 = MEMORY[0x277CCACA8];
  v23 = [MEMORY[0x277CCACA8] vs_yesNoStringValueFromBool:{-[VSIdentityProviderRequest forceAuthentication](self, "forceAuthentication")}];
  v24 = [v22 stringWithFormat:@"%@ = %@", @"forceAuthentication", v23];
  [v3 addObject:v24];

  v25 = MEMORY[0x277CCACA8];
  v26 = [MEMORY[0x277CCACA8] vs_yesNoStringValueFromBool:{-[VSIdentityProviderRequest allowsUI](self, "allowsUI")}];
  v27 = [v25 stringWithFormat:@"%@ = %@", @"allowsUI", v26];
  [v3 addObject:v27];

  v28 = MEMORY[0x277CCACA8];
  v29 = [MEMORY[0x277CCACA8] vs_yesNoStringValueFromBool:{-[VSIdentityProviderRequest requiresUI](self, "requiresUI")}];
  v30 = [v28 stringWithFormat:@"%@ = %@", @"requiresUI", v29];
  [v3 addObject:v30];

  v31 = MEMORY[0x277CCACA8];
  v36.receiver = self;
  v36.super_class = VSIdentityProviderRequest;
  v32 = [(VSIdentityProviderRequest *)&v36 description];
  v33 = [v3 componentsJoinedByString:{@", "}];
  v34 = [v31 stringWithFormat:@"<%@ %@>", v32, v33];

  return v34;
}

@end