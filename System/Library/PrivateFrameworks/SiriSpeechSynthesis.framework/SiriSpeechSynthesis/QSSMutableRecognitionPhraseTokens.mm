@interface QSSMutableRecognitionPhraseTokens
- (QSSMutableRecognitionPhraseTokens)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setTokens:(id)tokens;
@end

@implementation QSSMutableRecognitionPhraseTokens

- (void)setTokens:(id)tokens
{
  v4 = [tokens copy];
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

- (QSSMutableRecognitionPhraseTokens)init
{
  v6.receiver = self;
  v6.super_class = QSSMutableRecognitionPhraseTokens;
  v2 = [(QSSMutableRecognitionPhraseTokens *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = dictionary;
  }

  return v2;
}

@end