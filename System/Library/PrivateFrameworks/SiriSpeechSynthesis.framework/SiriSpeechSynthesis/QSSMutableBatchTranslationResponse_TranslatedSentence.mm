@interface QSSMutableBatchTranslationResponse_TranslatedSentence
- (QSSMutableBatchTranslationResponse_TranslatedSentence)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setEngine_input:(id)engine_input;
- (void)setN_best_choices:(id)n_best_choices;
- (void)setSource_span:(id)source_span;
- (void)setTarget_span:(id)target_span;
@end

@implementation QSSMutableBatchTranslationResponse_TranslatedSentence

- (void)setN_best_choices:(id)n_best_choices
{
  v4 = [n_best_choices copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setTarget_span:(id)target_span
{
  v4 = [target_span copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setEngine_input:(id)engine_input
{
  v4 = [engine_input copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setSource_span:(id)source_span
{
  v4 = [source_span copy];
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

- (QSSMutableBatchTranslationResponse_TranslatedSentence)init
{
  v6.receiver = self;
  v6.super_class = QSSMutableBatchTranslationResponse_TranslatedSentence;
  v2 = [(QSSMutableBatchTranslationResponse_TranslatedSentence *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = dictionary;
  }

  return v2;
}

@end