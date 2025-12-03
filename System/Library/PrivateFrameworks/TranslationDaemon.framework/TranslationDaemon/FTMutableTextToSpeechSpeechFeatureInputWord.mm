@interface FTMutableTextToSpeechSpeechFeatureInputWord
- (FTMutableTextToSpeechSpeechFeatureInputWord)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setPhonemes:(id)phonemes;
- (void)setWord:(id)word;
@end

@implementation FTMutableTextToSpeechSpeechFeatureInputWord

- (FTMutableTextToSpeechSpeechFeatureInputWord)init
{
  v6.receiver = self;
  v6.super_class = FTMutableTextToSpeechSpeechFeatureInputWord;
  v2 = [(FTMutableTextToSpeechSpeechFeatureInputWord *)&v6 init];
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

- (void)setWord:(id)word
{
  v4 = [word copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setPhonemes:(id)phonemes
{
  v4 = [phonemes copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

@end