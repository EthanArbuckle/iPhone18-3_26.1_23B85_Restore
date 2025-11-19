@interface PNRPhoneNumberResolutionResultSet
- (PNRPhoneNumberResolutionResultSet)init;
- (void)enumerateResolutionsUsingBlock:(id)a3;
- (void)setError:(id)a3 forPhoneNumber:(id)a4;
- (void)setResult:(id)a3 resultDataSource:(int64_t)a4 forPhoneNumber:(id)a5;
@end

@implementation PNRPhoneNumberResolutionResultSet

- (PNRPhoneNumberResolutionResultSet)init
{
  v6.receiver = self;
  v6.super_class = PNRPhoneNumberResolutionResultSet;
  v2 = [(PNRPhoneNumberResolutionResultSet *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    results = v2->_results;
    v2->_results = v3;

    v2->_resultsLock._os_unfair_lock_opaque = 0;
  }

  return v2;
}

- (void)enumerateResolutionsUsingBlock:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_resultsLock);
  results = self->_results;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __68__PNRPhoneNumberResolutionResultSet_enumerateResolutionsUsingBlock___block_invoke;
  v7[3] = &unk_279A240A0;
  v8 = v4;
  v6 = v4;
  [(NSMutableDictionary *)results enumerateKeysAndObjectsUsingBlock:v7];
  os_unfair_lock_unlock(&self->_resultsLock);
}

void __68__PNRPhoneNumberResolutionResultSet_enumerateResolutionsUsingBlock___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a3;
  v8 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0;
  }

  if (isKindOfClass)
  {
    v11 = 0;
  }

  else
  {
    v11 = v7;
  }

  v12 = *(a1 + 32);
  v13 = *(v12 + 16);
  v14 = v7;
  v13(v12, v8, v10, v11, a4);
}

- (void)setResult:(id)a3 resultDataSource:(int64_t)a4 forPhoneNumber:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [[PNRPhoneNumberResolutionResult alloc] initWithLocationName:v9 locationDataSource:a4];

  os_unfair_lock_lock(&self->_resultsLock);
  [(NSMutableDictionary *)self->_results setObject:v10 forKey:v8];

  os_unfair_lock_unlock(&self->_resultsLock);
}

- (void)setError:(id)a3 forPhoneNumber:(id)a4
{
  v6 = a4;
  v7 = a3;
  os_unfair_lock_lock(&self->_resultsLock);
  [(NSMutableDictionary *)self->_results setObject:v7 forKey:v6];

  os_unfair_lock_unlock(&self->_resultsLock);
}

@end