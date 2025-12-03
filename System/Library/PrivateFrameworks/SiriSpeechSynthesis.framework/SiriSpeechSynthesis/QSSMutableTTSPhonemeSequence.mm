@interface QSSMutableTTSPhonemeSequence
- (QSSMutableTTSPhonemeSequence)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setWord_phonemes:(id)word_phonemes;
@end

@implementation QSSMutableTTSPhonemeSequence

- (void)setWord_phonemes:(id)word_phonemes
{
  v4 = [word_phonemes copy];
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

- (QSSMutableTTSPhonemeSequence)init
{
  v6.receiver = self;
  v6.super_class = QSSMutableTTSPhonemeSequence;
  v2 = [(QSSMutableTTSPhonemeSequence *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = dictionary;
  }

  return v2;
}

@end