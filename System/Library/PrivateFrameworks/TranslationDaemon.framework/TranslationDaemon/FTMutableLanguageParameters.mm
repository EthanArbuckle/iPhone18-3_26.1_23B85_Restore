@interface FTMutableLanguageParameters
- (FTMutableLanguageParameters)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setFork_id:(id)fork_id;
- (void)setLanguage:(id)language;
- (void)setRequest_locale:(id)request_locale;
@end

@implementation FTMutableLanguageParameters

- (FTMutableLanguageParameters)init
{
  v6.receiver = self;
  v6.super_class = FTMutableLanguageParameters;
  v2 = [(FTMutableLanguageParameters *)&v6 init];
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

- (void)setLanguage:(id)language
{
  v4 = [language copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setRequest_locale:(id)request_locale
{
  v4 = [request_locale copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setFork_id:(id)fork_id
{
  v4 = [fork_id copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

@end