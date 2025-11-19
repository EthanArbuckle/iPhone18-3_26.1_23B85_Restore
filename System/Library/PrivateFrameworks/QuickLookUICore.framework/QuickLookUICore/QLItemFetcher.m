@interface QLItemFetcher
- (QLItemFetcher)init;
- (QLItemFetcher)initWithCoder:(id)a3;
- (void)_notifyObservers;
- (void)encodeWithCoder:(id)a3;
- (void)registerObserver:(id)a3 withBlock:(id)a4;
@end

@implementation QLItemFetcher

- (QLItemFetcher)init
{
  v6.receiver = self;
  v6.super_class = QLItemFetcher;
  v2 = [(QLItemFetcher *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    observersToBlocks = v2->_observersToBlocks;
    v2->_observersToBlocks = v3;

    [(QLItemFetcher *)v2 setFetchingState:0];
  }

  return v2;
}

- (void)registerObserver:(id)a3 withBlock:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(NSMapTable *)self->_observersToBlocks objectForKey:v9];
  if (!v7)
  {
    v7 = objc_opt_new();
    [(NSMapTable *)self->_observersToBlocks setObject:v7 forKey:v9];
  }

  v8 = MEMORY[0x266708AD0](v6);
  [v7 addObject:v8];
}

- (void)_notifyObservers
{
  v3 = [(NSMapTable *)self->_observersToBlocks keyEnumerator];
  v4 = [v3 allObjects];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __33__QLItemFetcher__notifyObservers__block_invoke;
  v5[3] = &unk_279AE1078;
  v5[4] = self;
  [v4 enumerateObjectsUsingBlock:v5];
}

void __33__QLItemFetcher__notifyObservers__block_invoke(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [*(*(a1 + 32) + 8) objectForKey:a2];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(a1 + 32);
        (*(*(*(&v10 + 1) + 8 * v7++) + 16))();
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[QLItemFetcher fetchingState](self forKey:{"fetchingState"), @"fetchingState"}];
}

- (QLItemFetcher)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(QLItemFetcher *)self init];
  if (v5)
  {
    -[QLItemFetcher setFetchingState:](v5, "setFetchingState:", [v4 decodeIntegerForKey:@"fetchingState"]);
    v6 = v5;
  }

  return v5;
}

@end