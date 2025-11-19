@interface SFSSCachingService
+ (id)sharedInstance;
- (SFSSCachingService)init;
- (id)objectForKey:(id)a3;
- (void)clear;
- (void)setObject:(id)a3 forKey:(id)a4;
@end

@implementation SFSSCachingService

- (void)clear
{
  v2 = [(SFSSCachingService *)self memoryCache];
  [v2 removeAllObjects];
}

- (id)objectForKey:(id)a3
{
  v4 = a3;
  v5 = [(SFSSCachingService *)self memoryCache];
  v6 = [v5 objectForKey:v4];

  return v6;
}

- (void)setObject:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SFSSCachingService *)self memoryCache];
  [v8 setObject:v7 forKey:v6];
}

- (SFSSCachingService)init
{
  v6.receiver = self;
  v6.super_class = SFSSCachingService;
  v2 = [(SFSSCachingService *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEA78]);
    memoryCache = v2->_memoryCache;
    v2->_memoryCache = v3;

    [(NSCache *)v2->_memoryCache setCountLimit:100];
    [(NSCache *)v2->_memoryCache setEvictsObjectsWithDiscardedContent:1];
  }

  return v2;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, &__block_literal_global_529);
  }

  v3 = sharedInstance___sharedInstance;

  return v3;
}

uint64_t __36__SFSSCachingService_sharedInstance__block_invoke()
{
  sharedInstance___sharedInstance = objc_alloc_init(SFSSCachingService);

  return MEMORY[0x2821F96F8]();
}

@end