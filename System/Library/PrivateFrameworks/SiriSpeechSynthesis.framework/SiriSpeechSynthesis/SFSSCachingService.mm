@interface SFSSCachingService
+ (id)sharedInstance;
- (SFSSCachingService)init;
- (id)objectForKey:(id)key;
- (void)clear;
- (void)setObject:(id)object forKey:(id)key;
@end

@implementation SFSSCachingService

- (void)clear
{
  memoryCache = [(SFSSCachingService *)self memoryCache];
  [memoryCache removeAllObjects];
}

- (id)objectForKey:(id)key
{
  keyCopy = key;
  memoryCache = [(SFSSCachingService *)self memoryCache];
  v6 = [memoryCache objectForKey:keyCopy];

  return v6;
}

- (void)setObject:(id)object forKey:(id)key
{
  keyCopy = key;
  objectCopy = object;
  memoryCache = [(SFSSCachingService *)self memoryCache];
  [memoryCache setObject:objectCopy forKey:keyCopy];
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