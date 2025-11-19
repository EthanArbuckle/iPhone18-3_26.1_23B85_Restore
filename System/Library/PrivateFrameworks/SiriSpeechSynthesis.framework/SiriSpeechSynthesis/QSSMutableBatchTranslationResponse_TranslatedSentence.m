@interface QSSMutableBatchTranslationResponse_TranslatedSentence
- (QSSMutableBatchTranslationResponse_TranslatedSentence)init;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setEngine_input:(id)a3;
- (void)setN_best_choices:(id)a3;
- (void)setSource_span:(id)a3;
- (void)setTarget_span:(id)a3;
@end

@implementation QSSMutableBatchTranslationResponse_TranslatedSentence

- (void)setN_best_choices:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setTarget_span:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setEngine_input:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setSource_span:(id)a3
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

- (QSSMutableBatchTranslationResponse_TranslatedSentence)init
{
  v6.receiver = self;
  v6.super_class = QSSMutableBatchTranslationResponse_TranslatedSentence;
  v2 = [(QSSMutableBatchTranslationResponse_TranslatedSentence *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = v3;
  }

  return v2;
}

@end