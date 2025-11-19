@interface SBKTransactionURLOperation
+ (id)operationWithRequest:(id)a3 delegate:(id)a4;
- (SBKTransactionURLOperation)init;
- (id)_init;
- (id)description;
- (void)setShouldAuthenticate:(BOOL)a3;
@end

@implementation SBKTransactionURLOperation

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(ISURLOperation *)self requestProperties];
  v6 = [v5 URL];
  v7 = [v3 stringWithFormat:@"<%@: %p> (PrimaryURL: %@)", v4, self, v6];

  return v7;
}

- (void)setShouldAuthenticate:(BOOL)a3
{
  *(&self->_shouldAuthenticate + 1) = a3;
  [(ISStoreURLOperation *)self setNeedsAuthentication:?];
  v4 = os_log_create("com.apple.amp.StoreBookkeeper", "Default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_26BC19000, v4, OS_LOG_TYPE_DEFAULT, "[StoreBookkeeper] setting up an authentication context - will FORCE authentication!", v10, 2u);
  }

  WeakRetained = objc_loadWeakRetained((&self->super.super.super.super.super.isa + *MEMORY[0x277D7FD70]));
  v6 = [MEMORY[0x277D69A20] defaultStore];
  v7 = [v6 activeAccount];

  if (objc_opt_respondsToSelector())
  {
    v8 = [WeakRetained account];

    v7 = v8;
  }

  v9 = [objc_alloc(MEMORY[0x277D69BC8]) initWithAccount:v7];
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
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"SBKTransactionURLOperation.m" lineNumber:43 description:@"Use +operationWithRequest:delegate:"];

  return 0;
}

+ (id)operationWithRequest:(id)a3 delegate:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[SBKTransactionURLOperation alloc] _init];
  [v7 setDelegate:v5];

  v8 = [v6 copyRequestProperties];
  [v7 setRequestProperties:v8];

  [v7 setShouldMessageMainThread:0];
  [v7 setQueuePriority:8];
  [v7 setShouldAuthenticate:{objc_msgSend(v6, "shouldAuthenticate")}];
  v9 = [v6 responseDataProvider];
  [v7 setDataProvider:v9];

  [v7 setSBKRequest:v6];

  return v7;
}

@end