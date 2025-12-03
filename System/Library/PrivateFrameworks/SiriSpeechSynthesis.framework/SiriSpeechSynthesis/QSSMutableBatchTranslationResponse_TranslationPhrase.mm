@interface QSSMutableBatchTranslationResponse_TranslationPhrase
- (BOOL)low_confidence;
- (QSSMutableBatchTranslationResponse_TranslationPhrase)init;
- (float)confidence;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setConfidence:(float)confidence;
- (void)setMeta_info:(id)meta_info;
- (void)setRepeated_spans:(id)repeated_spans;
- (void)setTranslation_phrase:(id)translation_phrase;
@end

@implementation QSSMutableBatchTranslationResponse_TranslationPhrase

- (void)setRepeated_spans:(id)repeated_spans
{
  v4 = [repeated_spans copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (BOOL)low_confidence
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"low_confidence"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setMeta_info:(id)meta_info
{
  v4 = [meta_info copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setTranslation_phrase:(id)translation_phrase
{
  v4 = [translation_phrase copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setConfidence:(float)confidence
{
  v5 = objc_alloc(MEMORY[0x277CCABB0]);
  *&v6 = confidence;
  v7 = [v5 initWithFloat:v6];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (float)confidence
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"confidence"];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = [(NSMutableDictionary *)self->super._storage copy];
  v6 = v4[1];
  v4[1] = v5;

  return v4;
}

- (QSSMutableBatchTranslationResponse_TranslationPhrase)init
{
  v6.receiver = self;
  v6.super_class = QSSMutableBatchTranslationResponse_TranslationPhrase;
  v2 = [(QSSMutableBatchTranslationResponse_TranslationPhrase *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = dictionary;
  }

  return v2;
}

@end