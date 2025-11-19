@interface MTUuidQueryObserver
- (id)addResultsChangedHandler:(id)a3;
- (void)controllerDidChangeContent:(id)a3;
- (void)notifyObservers;
- (void)startObserving;
@end

@implementation MTUuidQueryObserver

- (id)addResultsChangedHandler:(id)a3
{
  v4 = _Block_copy(a3);
  v7.receiver = self;
  v7.super_class = MTUuidQueryObserver;
  v5 = [(MTBaseQueryObserver *)&v7 addResultsChangedHandler:v4];

  return v5;
}

- (void)startObserving
{
  v3.receiver = self;
  v3.super_class = MTUuidQueryObserver;
  [(MTBaseQueryObserver *)&v3 startObserving];
  [(MTUuidQueryObserver *)self notifyObservers];
}

- (void)notifyObservers
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__5;
  v18 = __Block_byref_object_dispose__5;
  v19 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __38__MTUuidQueryObserver_notifyObservers__block_invoke;
  v13[3] = &unk_279A44740;
  v13[4] = &v14;
  [(MTBaseQueryObserver *)self results:v13];
  v3 = [(MTUuidQueryObserver *)self uuidOrder];
  v4 = objc_alloc(MEMORY[0x277CBEB98]);
  v5 = [v4 initWithArray:v15[5]];
  v6 = [(MTUuidQueryObserver *)self uuidSet];
  v7 = [v6 mutableCopy];
  [v7 minusSet:v5];
  v8 = [v5 mutableCopy];
  [v8 minusSet:v6];
  [(MTUuidQueryObserver *)self setUuidSet:v5];
  [(MTUuidQueryObserver *)self setUuidOrder:v15[5]];
  if ([v7 count] || objc_msgSend(v8, "count") || (objc_msgSend(v3, "isEqual:", v15[5]) & 1) == 0)
  {
    v9 = [(MTBaseQueryObserver *)self handlers];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __38__MTUuidQueryObserver_notifyObservers__block_invoke_3;
    v10[3] = &unk_279A44DF8;
    v11 = v7;
    v12 = v8;
    [v9 enumerateKeysAndObjectsUsingBlock:v10];
  }

  _Block_object_dispose(&v14, 8);
}

uint64_t __38__MTUuidQueryObserver_notifyObservers__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 mt_compactMap:&__block_literal_global_6];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8]();
}

void __38__MTUuidQueryObserver_notifyObservers__block_invoke_3(uint64_t a1, int a2, void *aBlock)
{
  v4 = _Block_copy(aBlock);
  (*(v4 + 2))(v4, *(a1 + 32), *(a1 + 40));
}

- (void)controllerDidChangeContent:(id)a3
{
  v4 = [a3 delegate];

  if (v4)
  {

    [(MTUuidQueryObserver *)self notifyObservers];
  }
}

@end