@interface QSSMutableTranslationResponse_TranslationToken
- (BOOL)add_space_after;
- (QSSMutableTranslationResponse_TranslationToken)init;
- (float)confidence;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setConfidence:(float)confidence;
- (void)setMt_alignment:(id)mt_alignment;
- (void)setToken:(id)token;
@end

@implementation QSSMutableTranslationResponse_TranslationToken

- (BOOL)add_space_after
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"add_space_after"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setMt_alignment:(id)mt_alignment
{
  v4 = [mt_alignment copy];
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

- (void)setToken:(id)token
{
  v4 = [token copy];
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

- (QSSMutableTranslationResponse_TranslationToken)init
{
  v6.receiver = self;
  v6.super_class = QSSMutableTranslationResponse_TranslationToken;
  v2 = [(QSSMutableTranslationResponse_TranslationToken *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = dictionary;
  }

  return v2;
}

@end