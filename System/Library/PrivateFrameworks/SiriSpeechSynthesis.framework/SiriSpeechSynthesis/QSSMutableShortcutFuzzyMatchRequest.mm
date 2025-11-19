@interface QSSMutableShortcutFuzzyMatchRequest
- (QSSMutableShortcutFuzzyMatchRequest)init;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setContext:(id)a3;
- (void)setDevice_type:(id)a3;
- (void)setInteraction_id:(id)a3;
- (void)setLocale:(id)a3;
- (void)setRequest_id:(id)a3;
- (void)setSession_id:(id)a3;
- (void)setShortcuts:(id)a3;
- (void)setUtterance:(id)a3;
@end

@implementation QSSMutableShortcutFuzzyMatchRequest

- (void)setContext:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setDevice_type:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setLocale:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setInteraction_id:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setSession_id:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setRequest_id:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setShortcuts:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setUtterance:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(NSMutableDictionary *)self->super._storage copy];
  v6 = v4[1];
  v4[1] = v5;

  return v4;
}

- (QSSMutableShortcutFuzzyMatchRequest)init
{
  v6.receiver = self;
  v6.super_class = QSSMutableShortcutFuzzyMatchRequest;
  v2 = [(QSSMutableShortcutFuzzyMatchRequest *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = v3;
  }

  return v2;
}

@end