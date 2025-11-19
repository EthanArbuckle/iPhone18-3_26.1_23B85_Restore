@interface SXWebProcessPoolCache
- (SXWebProcessPoolCache)init;
- (id)processPoolForBaseURL:(id)a3;
@end

@implementation SXWebProcessPoolCache

- (SXWebProcessPoolCache)init
{
  v6.receiver = self;
  v6.super_class = SXWebProcessPoolCache;
  v2 = [(SXWebProcessPoolCache *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
    cache = v2->_cache;
    v2->_cache = v3;
  }

  return v2;
}

- (id)processPoolForBaseURL:(id)a3
{
  v4 = a3;
  v5 = [(SXWebProcessPoolCache *)self cache];
  v6 = [v5 objectForKey:v4];

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
    v10 = [(SXWebProcessPoolCache *)self cache];
    [v10 setObject:v9 forKey:v4];

    v7 = v9;
  }

  return v7;
}

@end