@interface SearchUIBiomeSubscriberRegistry
+ (SearchUIBiomeSubscriberRegistry)sharedManager;
- (SearchUIBiomeSubscriberRegistry)init;
- (id)requestSubscriberForIdentifier:(id)identifier;
- (id)validCachedSubscriber:(id)subscriber ofClass:(Class)class;
- (void)cacheSubscriber:(id)subscriber forKey:(id)key;
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

- (void)cacheSubscriber:(id)subscriber forKey:(id)key
{
  subscriberCopy = subscriber;
  keyCopy = key;
  if (subscriberCopy && [keyCopy length])
  {
    subscribers = [(SearchUIBiomeSubscriberRegistry *)self subscribers];
    [subscribers setObject:subscriberCopy forKey:keyCopy];
  }
}

- (id)validCachedSubscriber:(id)subscriber ofClass:(Class)class
{
  subscriberCopy = subscriber;
  subscribers = [(SearchUIBiomeSubscriberRegistry *)self subscribers];
  v7 = [subscribers objectForKey:subscriberCopy];

  if (v7 && (([v7 finished] & 1) != 0 || (objc_opt_isKindOfClass() & 1) == 0))
  {
    subscribers2 = [(SearchUIBiomeSubscriberRegistry *)self subscribers];
    [subscribers2 removeObjectForKey:subscriberCopy];

    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  return v8;
}

- (id)requestSubscriberForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(SearchUIBiomeSubscriberRegistry *)self validCachedSubscriber:identifierCopy ofClass:objc_opt_class()];
  if (!v5)
  {
    v5 = [[SearchUIBiomeStreamSubscriber alloc] initWithStreamIdentifier:identifierCopy];
    [(SearchUIBiomeSubscriberRegistry *)self cacheSubscriber:v5 forKey:identifierCopy];
  }

  return v5;
}

- (void)flush
{
  subscribers = [(SearchUIBiomeSubscriberRegistry *)self subscribers];
  [subscribers removeAllObjects];
}

@end