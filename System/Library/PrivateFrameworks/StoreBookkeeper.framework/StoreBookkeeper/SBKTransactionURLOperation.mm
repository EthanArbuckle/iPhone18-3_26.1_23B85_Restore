@interface SBKTransactionURLOperation
+ (id)operationWithRequest:(id)request delegate:(id)delegate;
- (SBKTransactionURLOperation)init;
- (id)_init;
- (id)description;
- (void)setShouldAuthenticate:(BOOL)authenticate;
@end

@implementation SBKTransactionURLOperation

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  requestProperties = [(ISURLOperation *)self requestProperties];
  v6 = [requestProperties URL];
  v7 = [v3 stringWithFormat:@"<%@: %p> (PrimaryURL: %@)", v4, self, v6];

  return v7;
}

- (void)setShouldAuthenticate:(BOOL)authenticate
{
  *(&self->_shouldAuthenticate + 1) = authenticate;
  [(ISStoreURLOperation *)self setNeedsAuthentication:?];
  v4 = os_log_create("com.apple.amp.StoreBookkeeper", "Default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_26BC19000, v4, OS_LOG_TYPE_DEFAULT, "[StoreBookkeeper] setting up an authentication context - will FORCE authentication!", v10, 2u);
  }

  WeakRetained = objc_loadWeakRetained((&self->super.super.super.super.super.isa + *MEMORY[0x277D7FD70]));
  defaultStore = [MEMORY[0x277D69A20] defaultStore];
  activeAccount = [defaultStore activeAccount];

  if (objc_opt_respondsToSelector())
  {
    account = [WeakRetained account];

    activeAccount = account;
  }

  v9 = [objc_alloc(MEMORY[0x277D69BC8]) initWithAccount:activeAccount];
  [v9 setPromptStyle:1];
  [v9 setAllowsSilentAuthentication:1];
  [(ISURLOperation *)self setAuthenticationContext:v9];
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = SBKTransactionURLOperation;
  return [(ISStoreURLOperation *)&v3 init];
}

- (SBKTransactionURLOperation)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBKTransactionURLOperation.m" lineNumber:43 description:@"Use +operationWithRequest:delegate:"];

  return 0;
}

+ (id)operationWithRequest:(id)request delegate:(id)delegate
{
  delegateCopy = delegate;
  requestCopy = request;
  _init = [[SBKTransactionURLOperation alloc] _init];
  [_init setDelegate:delegateCopy];

  copyRequestProperties = [requestCopy copyRequestProperties];
  [_init setRequestProperties:copyRequestProperties];

  [_init setShouldMessageMainThread:0];
  [_init setQueuePriority:8];
  [_init setShouldAuthenticate:{objc_msgSend(requestCopy, "shouldAuthenticate")}];
  responseDataProvider = [requestCopy responseDataProvider];
  [_init setDataProvider:responseDataProvider];

  [_init setSBKRequest:requestCopy];

  return _init;
}

@end