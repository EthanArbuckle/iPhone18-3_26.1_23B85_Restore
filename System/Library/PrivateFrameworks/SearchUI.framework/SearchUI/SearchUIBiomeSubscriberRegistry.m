@interface SearchUIBiomeSubscriberRegistry
+ (SearchUIBiomeSubscriberRegistry)sharedManager;
- (SearchUIBiomeSubscriberRegistry)init;
- (id)requestSubscriberForIdentifier:(id)a3;
- (id)validCachedSubscriber:(id)a3 ofClass:(Class)a4;
- (void)cacheSubscriber:(id)a3 forKey:(id)a4;
- (void)flush;
@end

@implementation SearchUIBiomeSubscriberRegistry

+ (SearchUIBiomeSubscriberRegistry)sharedManager
{
  if (sharedManager_onceToken_2 != -1)
  {
    +[SearchUIBiomeSubscriberRegistry sharedManager];
  }

  v3 = sharedManager_sharedRegistry;

  return v3;
}

uint64_t __48__SearchUIBiomeSubscriberRegistry_sharedManager__block_invoke()
{
  sharedManager_sharedRegistry = objc_alloc_init(SearchUIBiomeSubscriberRegistry);

  return MEMORY[0x1EEE66BB8]();
}

- (SearchUIBiomeSubscriberRegistry)init
{
  v6.receiver = self;
  v6.super_class = SearchUIBiomeSubscriberRegistry;
  v2 = [(SearchUIBiomeSubscriberRegistry *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    subscribers = v2->_subscribers;
    v2->_subscribers = v3;
  }

  return v2;
}

- (void)cacheSubscriber:(id)a3 forKey:(id)a4
{
  v8 = a3;
  v6 = a4;
  if (v8 && [v6 length])
  {
    v7 = [(SearchUIBiomeSubscriberRegistry *)self subscribers];
    [v7 setObject:v8 forKey:v6];
  }
}

- (id)validCachedSubscriber:(id)a3 ofClass:(Class)a4
{
  v5 = a3;
  v6 = [(SearchUIBiomeSubscriberRegistry *)self subscribers];
  v7 = [v6 objectForKey:v5];

  if (v7 && (([v7 finished] & 1) != 0 || (objc_opt_isKindOfClass() & 1) == 0))
  {
    v9 = [(SearchUIBiomeSubscriberRegistry *)self subscribers];
    [v9 removeObjectForKey:v5];

    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  return v8;
}

- (id)requestSubscriberForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(SearchUIBiomeSubscriberRegistry *)self validCachedSubscriber:v4 ofClass:objc_opt_class()];
  if (!v5)
  {
    v5 = [[SearchUIBiomeStreamSubscriber alloc] initWithStreamIdentifier:v4];
    [(SearchUIBiomeSubscriberRegistry *)self cacheSubscriber:v5 forKey:v4];
  }

  return v5;
}

- (void)flush
{
  v2 = [(SearchUIBiomeSubscriberRegistry *)self subscribers];
  [v2 removeAllObjects];
}

@end