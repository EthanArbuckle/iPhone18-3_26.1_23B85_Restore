@interface SXWebProcessPoolCache
- (SXWebProcessPoolCache)init;
- (id)processPoolForBaseURL:(id)l;
@end

@implementation SXWebProcessPoolCache

- (SXWebProcessPoolCache)init
{
  v6.receiver = self;
  v6.super_class = SXWebProcessPoolCache;
  v2 = [(SXWebProcessPoolCache *)&v6 init];
  if (v2)
  {
    strongToWeakObjectsMapTable = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
    cache = v2->_cache;
    v2->_cache = strongToWeakObjectsMapTable;
  }

  return v2;
}

- (id)processPoolForBaseURL:(id)l
{
  lCopy = l;
  cache = [(SXWebProcessPoolCache *)self cache];
  v6 = [cache objectForKey:lCopy];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x1E69853F0]);
    [v8 setAlwaysRunsAtBackgroundPriority:1];
    [v8 setUsesSingleWebProcess:1];
    v9 = [objc_alloc(MEMORY[0x1E6985340]) _initWithConfiguration:v8];
    cache2 = [(SXWebProcessPoolCache *)self cache];
    [cache2 setObject:v9 forKey:lCopy];

    v7 = v9;
  }

  return v7;
}

@end