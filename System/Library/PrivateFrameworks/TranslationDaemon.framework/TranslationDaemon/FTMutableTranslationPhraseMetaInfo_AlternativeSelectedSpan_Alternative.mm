@interface FTMutableTranslationPhraseMetaInfo_AlternativeSelectedSpan_Alternative
- (FTMutableTranslationPhraseMetaInfo_AlternativeSelectedSpan_Alternative)init;
- (id)copyWithZone:(_NSZone *)zone;
- (int)alternative_description_index;
- (int)selection_span_index;
- (int)translation_phrase_index;
@end

@implementation FTMutableTranslationPhraseMetaInfo_AlternativeSelectedSpan_Alternative

- (FTMutableTranslationPhraseMetaInfo_AlternativeSelectedSpan_Alternative)init
{
  v6.receiver = self;
  v6.super_class = FTMutableTranslationPhraseMetaInfo_AlternativeSelectedSpan_Alternative;
  v2 = [(FTMutableTranslationPhraseMetaInfo_AlternativeSelectedSpan_Alternative *)&v6 init];
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

- (int)alternative_description_index
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"alternative_description_index"];
  intValue = [v2 intValue];

  return intValue;
}

- (int)translation_phrase_index
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"translation_phrase_index"];
  intValue = [v2 intValue];

  return intValue;
}

- (int)selection_span_index
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"selection_span_index"];
  intValue = [v2 intValue];

  return intValue;
}

@end