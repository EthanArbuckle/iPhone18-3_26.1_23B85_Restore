@interface FTMutableSanitizedPronToken
- (FTMutableSanitizedPronToken)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setPron_source:(id)pron_source;
- (void)setToken:(id)token;
@end

@implementation FTMutableSanitizedPronToken

- (FTMutableSanitizedPronToken)init
{
  v6.receiver = self;
  v6.super_class = FTMutableSanitizedPronToken;
  v2 = [(FTMutableSanitizedPronToken *)&v6 init];
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

- (void)setToken:(id)token
{
  v4 = [token copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setPron_source:(id)pron_source
{
  v4 = [pron_source copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

@end