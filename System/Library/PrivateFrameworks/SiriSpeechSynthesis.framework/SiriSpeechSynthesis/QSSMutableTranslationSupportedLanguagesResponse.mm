@interface QSSMutableTranslationSupportedLanguagesResponse
- (QSSMutableTranslationSupportedLanguagesResponse)init;
- (id)copyWithZone:(_NSZone *)zone;
- (int)return_code;
- (void)setLanguage_pairs:(id)language_pairs;
- (void)setRequest_id:(id)request_id;
- (void)setReturn_string:(id)return_string;
@end

@implementation QSSMutableTranslationSupportedLanguagesResponse

- (void)setLanguage_pairs:(id)language_pairs
{
  v4 = [language_pairs copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setReturn_string:(id)return_string
{
  v4 = [return_string copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (int)return_code
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"return_code"];
  intValue = [v2 intValue];

  return intValue;
}

- (void)setRequest_id:(id)request_id
{
  v4 = [request_id copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = [(NSMutableDictionary *)self->super._storage copy];
  v6 = v4[1];
  v4[1] = v5;

  return v4;
}

- (QSSMutableTranslationSupportedLanguagesResponse)init
{
  v6.receiver = self;
  v6.super_class = QSSMutableTranslationSupportedLanguagesResponse;
  v2 = [(QSSMutableTranslationSupportedLanguagesResponse *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = dictionary;
  }

  return v2;
}

@end