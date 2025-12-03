@interface FTMutableTranslationLocalePair
- (FTMutableTranslationLocalePair)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setSource_locale:(id)source_locale;
- (void)setTarget_locale:(id)target_locale;
@end

@implementation FTMutableTranslationLocalePair

- (FTMutableTranslationLocalePair)init
{
  v6.receiver = self;
  v6.super_class = FTMutableTranslationLocalePair;
  v2 = [(FTMutableTranslationLocalePair *)&v6 init];
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

- (void)setSource_locale:(id)source_locale
{
  v4 = [source_locale copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setTarget_locale:(id)target_locale
{
  v4 = [target_locale copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

@end