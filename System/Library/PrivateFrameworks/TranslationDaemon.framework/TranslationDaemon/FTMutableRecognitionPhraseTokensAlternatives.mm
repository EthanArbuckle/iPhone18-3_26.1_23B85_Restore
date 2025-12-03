@interface FTMutableRecognitionPhraseTokensAlternatives
- (BOOL)has_unsuggested_alternatives;
- (FTMutableRecognitionPhraseTokensAlternatives)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setTok_phrases:(id)tok_phrases;
@end

@implementation FTMutableRecognitionPhraseTokensAlternatives

- (FTMutableRecognitionPhraseTokensAlternatives)init
{
  v6.receiver = self;
  v6.super_class = FTMutableRecognitionPhraseTokensAlternatives;
  v2 = [(FTMutableRecognitionPhraseTokensAlternatives *)&v6 init];
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

- (void)setTok_phrases:(id)tok_phrases
{
  v4 = [tok_phrases copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (BOOL)has_unsuggested_alternatives
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"has_unsuggested_alternatives"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

@end