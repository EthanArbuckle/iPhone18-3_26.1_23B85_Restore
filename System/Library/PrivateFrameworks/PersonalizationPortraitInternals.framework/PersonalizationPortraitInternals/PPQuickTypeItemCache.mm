@interface PPQuickTypeItemCache
- (PPQuickTypeItemCache)init;
- (void)setEntry:(id)a3 key:(id)a4;
@end

@implementation PPQuickTypeItemCache

- (void)setEntry:(id)a3 key:(id)a4
{
  keys = self->_keys;
  v8 = a4;
  v9 = a3;
  if (([(NSMutableOrderedSet *)keys containsObject:v8]& 1) == 0 && [(NSMutableOrderedSet *)self->_keys count]>= 3)
  {
    v10 = [(NSMutableOrderedSet *)self->_keys objectAtIndex:0];
    [(NSMutableDictionary *)self->_entries setObject:0 forKeyedSubscript:v10];
    [(NSMutableOrderedSet *)self->_keys removeObjectAtIndex:0];
  }

  [(NSMutableOrderedSet *)self->_keys removeObject:v8];
  [(NSMutableOrderedSet *)self->_keys addObject:v8];
  [(NSMutableDictionary *)self->_entries setObject:v9 forKeyedSubscript:v8];

  v11 = [(NSMutableOrderedSet *)self->_keys count];
  if (v11 != [(NSMutableDictionary *)self->_entries count])
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PPLocalQuickTypeBroker.m" lineNumber:81 description:@"PQT cache count mismatch"];
  }

  if ([(NSMutableOrderedSet *)self->_keys count]>= 4)
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"PPLocalQuickTypeBroker.m" lineNumber:82 description:@"PQT cache key set too big"];
  }
}

- (PPQuickTypeItemCache)init
{
  v8.receiver = self;
  v8.super_class = PPQuickTypeItemCache;
  v2 = [(PPQuickTypeItemCache *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    keys = v2->_keys;
    v2->_keys = v3;

    v5 = objc_opt_new();
    entries = v2->_entries;
    v2->_entries = v5;
  }

  return v2;
}

@end