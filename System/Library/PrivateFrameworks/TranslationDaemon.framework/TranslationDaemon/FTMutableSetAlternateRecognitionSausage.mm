@interface FTMutableSetAlternateRecognitionSausage
- (FTMutableSetAlternateRecognitionSausage)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setPositional_tok_phrase_alt:(id)positional_tok_phrase_alt;
@end

@implementation FTMutableSetAlternateRecognitionSausage

- (FTMutableSetAlternateRecognitionSausage)init
{
  v6.receiver = self;
  v6.super_class = FTMutableSetAlternateRecognitionSausage;
  v2 = [(FTMutableSetAlternateRecognitionSausage *)&v6 init];
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

- (void)setPositional_tok_phrase_alt:(id)positional_tok_phrase_alt
{
  v4 = [positional_tok_phrase_alt copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

@end