@interface MTSafeUuidQueryObserver
- (MTSafeUuidQueryObserver)initWithFetchRequest:(id)a3 managedObjectContext:(id)a4;
- (id)addResultsChangedHandler:(id)a3;
- (void)controller:(id)a3 didChangeObject:(id)a4 atIndexPath:(id)a5 forChangeType:(unint64_t)a6 newIndexPath:(id)a7;
- (void)controllerWillChangeContent:(id)a3;
- (void)notifyObservers;
- (void)startObserving;
@end

@implementation MTSafeUuidQueryObserver

- (MTSafeUuidQueryObserver)initWithFetchRequest:(id)a3 managedObjectContext:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_new();
  currentItems = self->currentItems;
  self->currentItems = v8;

  v12.receiver = self;
  v12.super_class = MTSafeUuidQueryObserver;
  v10 = [(MTBaseQueryObserver *)&v12 initWithFetchRequest:v7 managedObjectContext:v6];

  return v10;
}

- (id)addResultsChangedHandler:(id)a3
{
  v4 = _Block_copy(a3);
  v7.receiver = self;
  v7.super_class = MTSafeUuidQueryObserver;
  v5 = [(MTBaseQueryObserver *)&v7 addResultsChangedHandler:v4];

  return v5;
}

- (void)startObserving
{
  v4.receiver = self;
  v4.super_class = MTSafeUuidQueryObserver;
  [(MTBaseQueryObserver *)&v4 startObserving];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __41__MTSafeUuidQueryObserver_startObserving__block_invoke;
  v3[3] = &unk_279A448C8;
  v3[4] = self;
  [(MTBaseQueryObserver *)self results:v3];
}

uint64_t __41__MTSafeUuidQueryObserver_startObserving__block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CBEB58];
  v4 = [a2 valueForKey:@"uuid"];
  v5 = [v3 setWithArray:v4];
  v6 = *(a1 + 32);
  v7 = *(v6 + 48);
  *(v6 + 48) = v5;

  v8 = objc_opt_new();
  v9 = *(a1 + 32);
  v10 = *(v9 + 56);
  *(v9 + 56) = v8;

  v11 = objc_opt_new();
  v12 = *(a1 + 32);
  v13 = *(v12 + 64);
  *(v12 + 64) = v11;

  v14 = *(a1 + 32);

  return [v14 notifyObservers];
}

- (void)notifyObservers
{
  v3 = [(NSMutableSet *)self->currentItems mutableCopy];
  [v3 intersectSet:self->currentInserts];
  [(NSMutableSet *)self->currentInserts minusSet:v3];
  [(NSMutableSet *)self->currentUpdates unionSet:v3];
  [(NSMutableSet *)self->currentDeletes intersectSet:self->currentItems];
  [(NSMutableSet *)self->currentUpdates intersectSet:self->currentItems];
  [(NSMutableSet *)self->currentItems unionSet:self->currentInserts];
  [(NSMutableSet *)self->currentItems minusSet:self->currentDeletes];
  v4 = [(NSMutableSet *)self->currentInserts copy];
  v5 = [(NSMutableSet *)self->currentDeletes copy];
  v6 = [(NSMutableSet *)self->currentUpdates copy];
  currentInserts = self->currentInserts;
  self->currentInserts = 0;

  currentDeletes = self->currentDeletes;
  self->currentDeletes = 0;

  currentUpdates = self->currentUpdates;
  self->currentUpdates = 0;

  if ([v6 count] || objc_msgSend(v4, "count") || objc_msgSend(v5, "count"))
  {
    v10 = [(MTBaseQueryObserver *)self handlers];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __42__MTSafeUuidQueryObserver_notifyObservers__block_invoke;
    v11[3] = &unk_279A448F0;
    v12 = v5;
    v13 = v4;
    v14 = v6;
    [v10 enumerateKeysAndObjectsUsingBlock:v11];
  }
}

void __42__MTSafeUuidQueryObserver_notifyObservers__block_invoke(void *a1, int a2, void *aBlock)
{
  v4 = _Block_copy(aBlock);
  (*(v4 + 2))(v4, a1[4], a1[5], a1[6]);
}

- (void)controllerWillChangeContent:(id)a3
{
  v4 = objc_opt_new();
  currentInserts = self->currentInserts;
  self->currentInserts = v4;

  v6 = objc_opt_new();
  currentDeletes = self->currentDeletes;
  self->currentDeletes = v6;

  v8 = objc_opt_new();
  currentUpdates = self->currentUpdates;
  self->currentUpdates = v8;

  MEMORY[0x2821F96F8]();
}

- (void)controller:(id)a3 didChangeObject:(id)a4 atIndexPath:(id)a5 forChangeType:(unint64_t)a6 newIndexPath:(id)a7
{
  v16 = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = [v9 valueForKey:@"uuid"];
  if (v10)
  {
    if (a6 == 2)
    {
      v11 = 56;
    }

    else if (a6 == 1)
    {
      v11 = 48;
    }

    else
    {
      v11 = 64;
    }

    [*(&self->super.super.isa + v11) addObject:v10];
  }

  else
  {
    v12 = _MTLogCategoryDatabase();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = v9;
      _os_log_impl(&dword_25E9F0000, v12, OS_LOG_TYPE_DEFAULT, "MTSafeUUIDQueryObserver has no UUID for object %@", &v14, 0xCu);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

@end