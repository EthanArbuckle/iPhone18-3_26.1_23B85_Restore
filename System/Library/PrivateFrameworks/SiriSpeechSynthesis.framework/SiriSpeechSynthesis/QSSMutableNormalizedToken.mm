@interface QSSMutableNormalizedToken
- (QSSMutableNormalizedToken)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setNbest_variants:(id)nbest_variants;
- (void)setOriginal_token:(id)original_token;
@end

@implementation QSSMutableNormalizedToken

- (void)setNbest_variants:(id)nbest_variants
{
  v4 = [nbest_variants copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setOriginal_token:(id)original_token
{
  v4 = [original_token copy];
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

- (QSSMutableNormalizedToken)init
{
  v6.receiver = self;
  v6.super_class = QSSMutableNormalizedToken;
  v2 = [(QSSMutableNormalizedToken *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = dictionary;
  }

  return v2;
}

@end