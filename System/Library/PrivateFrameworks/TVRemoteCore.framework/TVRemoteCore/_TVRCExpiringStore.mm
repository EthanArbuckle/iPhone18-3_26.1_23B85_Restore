@interface _TVRCExpiringStore
- (_TVRCExpiringStore)init;
- (void)_removeIdentifierAndPerformCompletion:(id)completion;
- (void)addIdentifier:(id)identifier withExpiration:(double)expiration completion:(id)completion;
- (void)dealloc;
- (void)removeIdentifier:(id)identifier;
@end

@implementation _TVRCExpiringStore

- (_TVRCExpiringStore)init
{
  v8.receiver = self;
  v8.super_class = _TVRCExpiringStore;
  v2 = [(_TVRCExpiringStore *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
    store = v2->_store;
    v2->_store = v3;

    v5 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:0 valueOptions:0x10000 capacity:50];
    identifierToBlockMap = v2->_identifierToBlockMap;
    v2->_identifierToBlockMap = v5;
  }

  return v2;
}

- (void)dealloc
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self];
  v3.receiver = self;
  v3.super_class = _TVRCExpiringStore;
  [(_TVRCExpiringStore *)&v3 dealloc];
}

- (void)addIdentifier:(id)identifier withExpiration:(double)expiration completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  if (([(NSMutableSet *)self->_store containsObject:identifierCopy]& 1) == 0)
  {
    [(NSMutableSet *)self->_store addObject:identifierCopy];
    objc_initWeak(&location, self);
    v10 = dispatch_time(0, (expiration * 1000000000.0));
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __62___TVRCExpiringStore_addIdentifier_withExpiration_completion___block_invoke;
    block[3] = &unk_279D82FD0;
    objc_copyWeak(&v16, &location);
    v11 = identifierCopy;
    v15 = v11;
    dispatch_after(v10, MEMORY[0x277D85CD0], block);
    if (completionCopy)
    {
      identifierToBlockMap = self->_identifierToBlockMap;
      v13 = MEMORY[0x26D6B0B70](completionCopy);
      [(NSMapTable *)identifierToBlockMap setObject:v13 forKey:v11];
    }

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }
}

- (void)removeIdentifier:(id)identifier
{
  v4 = MEMORY[0x277D82BB8];
  identifierCopy = identifier;
  [v4 cancelPreviousPerformRequestsWithTarget:self selector:sel__removeIdentifierAndPerformCompletion_ object:identifierCopy];
  [(NSMutableSet *)self->_store removeObject:identifierCopy];
  [(NSMapTable *)self->_identifierToBlockMap removeObjectForKey:identifierCopy];
}

- (void)_removeIdentifierAndPerformCompletion:(id)completion
{
  completionCopy = completion;
  [(NSMutableSet *)self->_store removeObject:completionCopy];
  v4 = [(NSMapTable *)self->_identifierToBlockMap objectForKey:completionCopy];
  v5 = v4;
  if (v4)
  {
    (*(v4 + 16))(v4);
  }

  [(NSMapTable *)self->_identifierToBlockMap removeObjectForKey:completionCopy];
}

@end