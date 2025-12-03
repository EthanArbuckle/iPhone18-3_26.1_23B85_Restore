@interface FTMutableTranslationPhraseMetaInfo_AlternativeSelectedSpan
- (FTMutableTranslationPhraseMetaInfo_AlternativeSelectedSpan)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setAlternatives:(id)alternatives;
- (void)setProjection_ranges:(id)projection_ranges;
- (void)setSource_range:(id)source_range;
@end

@implementation FTMutableTranslationPhraseMetaInfo_AlternativeSelectedSpan

- (FTMutableTranslationPhraseMetaInfo_AlternativeSelectedSpan)init
{
  v6.receiver = self;
  v6.super_class = FTMutableTranslationPhraseMetaInfo_AlternativeSelectedSpan;
  v2 = [(FTMutableTranslationPhraseMetaInfo_AlternativeSelectedSpan *)&v6 init];
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

- (void)setSource_range:(id)source_range
{
  v4 = [source_range copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setProjection_ranges:(id)projection_ranges
{
  v4 = [projection_ranges copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setAlternatives:(id)alternatives
{
  v4 = [alternatives copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

@end