@interface QSSMutableTranslationSupportedLanguagesResponse_LanguagePair
- (QSSMutableTranslationSupportedLanguagesResponse_LanguagePair)init;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setSource_locale:(id)a3;
- (void)setTarget_locale:(id)a3;
@end

@implementation QSSMutableTranslationSupportedLanguagesResponse_LanguagePair

- (void)setTarget_locale:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setSource_locale:(id)a3
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

- (QSSMutableTranslationSupportedLanguagesResponse_LanguagePair)init
{
  v6.receiver = self;
  v6.super_class = QSSMutableTranslationSupportedLanguagesResponse_LanguagePair;
  v2 = [(QSSMutableTranslationSupportedLanguagesResponse_LanguagePair *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = v3;
  }

  return v2;
}

@end