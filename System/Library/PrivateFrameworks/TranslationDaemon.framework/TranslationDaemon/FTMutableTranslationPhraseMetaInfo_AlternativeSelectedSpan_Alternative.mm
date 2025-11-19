@interface FTMutableTranslationPhraseMetaInfo_AlternativeSelectedSpan_Alternative
- (FTMutableTranslationPhraseMetaInfo_AlternativeSelectedSpan_Alternative)init;
- (id)copyWithZone:(_NSZone *)a3;
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

- (int)alternative_description_index
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"alternative_description_index"];
  v3 = [v2 intValue];

  return v3;
}

- (int)translation_phrase_index
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"translation_phrase_index"];
  v3 = [v2 intValue];

  return v3;
}

- (int)selection_span_index
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"selection_span_index"];
  v3 = [v2 intValue];

  return v3;
}

@end