@interface FTMutableTranslationSupportedLanguagesResponse
- (FTMutableTranslationSupportedLanguagesResponse)init;
- (id)copyWithZone:(_NSZone *)a3;
- (int)return_code;
- (void)setLanguage_pairs:(id)a3;
- (void)setRequest_id:(id)a3;
- (void)setReturn_string:(id)a3;
@end

@implementation FTMutableTranslationSupportedLanguagesResponse

- (FTMutableTranslationSupportedLanguagesResponse)init
{
  v6.receiver = self;
  v6.super_class = FTMutableTranslationSupportedLanguagesResponse;
  v2 = [(FTMutableTranslationSupportedLanguagesResponse *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = v3;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(NSMutableDictionary *)self->super._storage copy];
  v6 = v4[1];
  v4[1] = v5;

  return v4;
}

- (void)setRequest_id:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (int)return_code
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"return_code"];
  v3 = [v2 intValue];

  return v3;
}

- (void)setReturn_string:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setLanguage_pairs:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

@end