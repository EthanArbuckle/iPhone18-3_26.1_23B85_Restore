@interface FTMutableTextToSpeechCacheContainer
- (FTMutableTextToSpeechCacheContainer)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setCache_meta_info:(id)cache_meta_info;
- (void)setCache_object:(id)cache_object;
@end

@implementation FTMutableTextToSpeechCacheContainer

- (FTMutableTextToSpeechCacheContainer)init
{
  v6.receiver = self;
  v6.super_class = FTMutableTextToSpeechCacheContainer;
  v2 = [(FTMutableTextToSpeechCacheContainer *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = dictionary;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = [(NSMutableDictionary *)self->super._storage copy];
  v6 = v4[1];
  v4[1] = v5;

  return v4;
}

- (void)setCache_meta_info:(id)cache_meta_info
{
  v4 = [cache_meta_info copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setCache_object:(id)cache_object
{
  v4 = [cache_object copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

@end