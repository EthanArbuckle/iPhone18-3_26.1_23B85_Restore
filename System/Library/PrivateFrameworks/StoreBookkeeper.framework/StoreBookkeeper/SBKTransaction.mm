@interface SBKTransaction
- (SBKTransaction)initWithDomain:(id)domain requestURL:(id)l;
- (id)clampsKey;
- (id)newRequest;
- (id)transactionContextForKey:(id)key;
- (void)processDataInResponse:(id)response withCompletionHandler:(id)handler;
- (void)setTransactionContext:(id)context forKey:(id)key;
@end

@implementation SBKTransaction

- (id)newRequest
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBKTransaction.m" lineNumber:62 description:@"Subclass must implement"];

  return 0;
}

- (id)clampsKey
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBKTransaction.m" lineNumber:56 description:@"Subclass must implement"];

  return 0;
}

- (void)processDataInResponse:(id)response withCompletionHandler:(id)handler
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBKTransaction.m" lineNumber:51 description:@"Subclass must implement"];
}

- (id)transactionContextForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(NSMutableDictionary *)selfCopy->_userInfo valueForKey:keyCopy];
  objc_sync_exit(selfCopy);

  return v6;
}

- (void)setTransactionContext:(id)context forKey:(id)key
{
  contextCopy = context;
  keyCopy = key;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSMutableDictionary *)selfCopy->_userInfo setValue:contextCopy forKey:keyCopy];
  objc_sync_exit(selfCopy);
}

- (SBKTransaction)initWithDomain:(id)domain requestURL:(id)l
{
  domainCopy = domain;
  lCopy = l;
  v13.receiver = self;
  v13.super_class = SBKTransaction;
  v9 = [(SBKTransaction *)&v13 init];
  if (v9)
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    userInfo = v9->_userInfo;
    v9->_userInfo = v10;

    objc_storeStrong(&v9->_requestURL, l);
    objc_storeStrong(&v9->_domain, domain);
  }

  return v9;
}

@end