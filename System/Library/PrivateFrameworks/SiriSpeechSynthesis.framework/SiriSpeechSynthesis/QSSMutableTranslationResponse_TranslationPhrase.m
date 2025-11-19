@interface QSSMutableTranslationResponse_TranslationPhrase
- (BOOL)low_confidence;
- (QSSMutableTranslationResponse_TranslationPhrase)init;
- (float)confidence;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setConfidence:(float)a3;
- (void)setMeta_info:(id)a3;
- (void)setSpans:(id)a3;
- (void)setTranslated_tokens:(id)a3;
@end

@implementation QSSMutableTranslationResponse_TranslationPhrase

- (BOOL)low_confidence
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"low_confidence"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)setSpans:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setMeta_info:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setTranslated_tokens:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setConfidence:(float)a3
{
  v5 = objc_alloc(MEMORY[0x277CCABB0]);
  *&v6 = a3;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(NSMutableDictionary *)self->super._storage copy];
  v6 = v4[1];
  v4[1] = v5;

  return v4;
}

- (QSSMutableTranslationResponse_TranslationPhrase)init
{
  v6.receiver = self;
  v6.super_class = QSSMutableTranslationResponse_TranslationPhrase;
  v2 = [(QSSMutableTranslationResponse_TranslationPhrase *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = v3;
  }

  return v2;
}

@end