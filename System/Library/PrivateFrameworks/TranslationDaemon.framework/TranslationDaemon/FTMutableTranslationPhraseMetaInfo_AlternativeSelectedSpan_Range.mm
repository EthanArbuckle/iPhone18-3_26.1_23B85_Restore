@interface FTMutableTranslationPhraseMetaInfo_AlternativeSelectedSpan_Range
- (FTMutableTranslationPhraseMetaInfo_AlternativeSelectedSpan_Range)init;
- (id)copyWithZone:(_NSZone *)zone;
- (int)length;
- (int)start;
@end

@implementation FTMutableTranslationPhraseMetaInfo_AlternativeSelectedSpan_Range

- (FTMutableTranslationPhraseMetaInfo_AlternativeSelectedSpan_Range)init
{
  v6.receiver = self;
  v6.super_class = FTMutableTranslationPhraseMetaInfo_AlternativeSelectedSpan_Range;
  v2 = [(FTMutableTranslationPhraseMetaInfo_AlternativeSelectedSpan_Range *)&v6 init];
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

- (int)start
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"start"];
  intValue = [v2 intValue];

  return intValue;
}

- (int)length
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"length"];
  intValue = [v2 intValue];

  return intValue;
}

@end