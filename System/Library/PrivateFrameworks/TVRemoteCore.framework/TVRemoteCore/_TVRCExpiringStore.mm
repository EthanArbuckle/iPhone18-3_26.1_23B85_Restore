@interface _TVRCExpiringStore
- (_TVRCExpiringStore)init;
- (void)_removeIdentifierAndPerformCompletion:(id)a3;
- (void)addIdentifier:(id)a3 withExpiration:(double)a4 completion:(id)a5;
- (void)dealloc;
- (void)removeIdentifier:(id)a3;
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

- (void)addIdentifier:(id)a3 withExpiration:(double)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (([(NSMutableSet *)self->_store containsObject:v8]& 1) == 0)
  {
    [(NSMutableSet *)self->_store addObject:v8];
    objc_initWeak(&location, self);
    v10 = dispatch_time(0, (a4 * 1000000000.0));
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __62___TVRCExpiringStore_addIdentifier_withExpiration_completion___block_invoke;
    block[3] = &unk_279D82FD0;
    objc_copyWeak(&v16, &location);
    v11 = v8;
    v15 = v11;
    dispatch_after(v10, MEMORY[0x277D85CD0], block);
    if (v9)
    {
      identifierToBlockMap = self->_identifierToBlockMap;
      v13 = MEMORY[0x26D6B0B70](v9);
      [(NSMapTable *)identifierToBlockMap setObject:v13 forKey:v11];
    }

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }
}

- (void)removeIdentifier:(id)a3
{
  v4 = MEMORY[0x277D82BB8];
  v5 = a3;
  [v4 cancelPreviousPerformRequestsWithTarget:self selector:sel__removeIdentifierAndPerformCompletion_ object:v5];
  [(NSMutableSet *)self->_store removeObject:v5];
  [(NSMapTable *)self->_identifierToBlockMap removeObjectForKey:v5];
}

- (void)_removeIdentifierAndPerformCompletion:(id)a3
{
  v6 = a3;
  [(NSMutableSet *)self->_store removeObject:v6];
  v4 = [(NSMapTable *)self->_identifierToBlockMap objectForKey:v6];
  v5 = v4;
  if (v4)
  {
    (*(v4 + 16))(v4);
  }

  [(NSMapTable *)self->_identifierToBlockMap removeObjectForKey:v6];
}

@end