@interface FTMutableShortcutFuzzyMatchRequest
- (FTMutableShortcutFuzzyMatchRequest)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setContext:(id)context;
- (void)setDevice_type:(id)device_type;
- (void)setInteraction_id:(id)interaction_id;
- (void)setLocale:(id)locale;
- (void)setRequest_id:(id)request_id;
- (void)setSession_id:(id)session_id;
- (void)setShortcuts:(id)shortcuts;
- (void)setUtterance:(id)utterance;
@end

@implementation FTMutableShortcutFuzzyMatchRequest

- (FTMutableShortcutFuzzyMatchRequest)init
{
  v6.receiver = self;
  v6.super_class = FTMutableShortcutFuzzyMatchRequest;
  v2 = [(FTMutableShortcutFuzzyMatchRequest *)&v6 init];
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

- (void)setUtterance:(id)utterance
{
  v4 = [utterance copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setShortcuts:(id)shortcuts
{
  v4 = [shortcuts copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setRequest_id:(id)request_id
{
  v4 = [request_id copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setSession_id:(id)session_id
{
  v4 = [session_id copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setInteraction_id:(id)interaction_id
{
  v4 = [interaction_id copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setLocale:(id)locale
{
  v4 = [locale copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setDevice_type:(id)device_type
{
  v4 = [device_type copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setContext:(id)context
{
  v4 = [context copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

@end