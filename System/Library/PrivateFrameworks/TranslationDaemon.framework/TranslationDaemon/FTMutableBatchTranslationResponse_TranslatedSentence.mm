@interface FTMutableBatchTranslationResponse_TranslatedSentence
- (BOOL)contains_masked_profanity;
- (FTMutableBatchTranslationResponse_TranslatedSentence)init;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setAlternative_descriptions:(id)a3;
- (void)setEngine_input:(id)a3;
- (void)setN_best_choices:(id)a3;
- (void)setSource_span:(id)a3;
- (void)setTarget_span:(id)a3;
@end

@implementation FTMutableBatchTranslationResponse_TranslatedSentence

- (FTMutableBatchTranslationResponse_TranslatedSentence)init
{
  v6.receiver = self;
  v6.super_class = FTMutableBatchTranslationResponse_TranslatedSentence;
  v2 = [(FTMutableBatchTranslationResponse_TranslatedSentence *)&v6 init];
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

- (void)setSource_span:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setEngine_input:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setTarget_span:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setN_best_choices:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setAlternative_descriptions:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (BOOL)contains_masked_profanity
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"contains_masked_profanity"];
  v3 = [v2 BOOLValue];

  return v3;
}

@end