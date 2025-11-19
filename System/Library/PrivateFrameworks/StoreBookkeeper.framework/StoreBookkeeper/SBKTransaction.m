@interface SBKTransaction
- (SBKTransaction)initWithDomain:(id)a3 requestURL:(id)a4;
- (id)clampsKey;
- (id)newRequest;
- (id)transactionContextForKey:(id)a3;
- (void)processDataInResponse:(id)a3 withCompletionHandler:(id)a4;
- (void)setTransactionContext:(id)a3 forKey:(id)a4;
@end

@implementation SBKTransaction

- (id)newRequest
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"SBKTransaction.m" lineNumber:62 description:@"Subclass must implement"];

  return 0;
}

- (id)clampsKey
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"SBKTransaction.m" lineNumber:56 description:@"Subclass must implement"];

  return 0;
}

- (void)processDataInResponse:(id)a3 withCompletionHandler:(id)a4
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"SBKTransaction.m" lineNumber:51 description:@"Subclass must implement"];
}

- (id)transactionContextForKey:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(NSMutableDictionary *)v5->_userInfo valueForKey:v4];
  objc_sync_exit(v5);

  return v6;
}

- (void)setTransactionContext:(id)a3 forKey:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = self;
  objc_sync_enter(v7);
  [(NSMutableDictionary *)v7->_userInfo setValue:v8 forKey:v6];
  objc_sync_exit(v7);
}

- (SBKTransaction)initWithDomain:(id)a3 requestURL:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = SBKTransaction;
  v9 = [(SBKTransaction *)&v13 init];
  if (v9)
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    userInfo = v9->_userInfo;
    v9->_userInfo = v10;

    objc_storeStrong(&v9->_requestURL, a4);
    objc_storeStrong(&v9->_domain, a3);
  }

  return v9;
}

@end