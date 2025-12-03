@interface FTMutableTextToSpeechFeature
- (FTMutableTextToSpeechFeature)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setNeural_phoneme_sequence:(id)neural_phoneme_sequence;
- (void)setNormalized_text:(id)normalized_text;
- (void)setPhoneme_sequence:(id)phoneme_sequence;
- (void)setPrompts:(id)prompts;
- (void)setReplacement:(id)replacement;
@end

@implementation FTMutableTextToSpeechFeature

- (FTMutableTextToSpeechFeature)init
{
  v6.receiver = self;
  v6.super_class = FTMutableTextToSpeechFeature;
  v2 = [(FTMutableTextToSpeechFeature *)&v6 init];
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

- (void)setNormalized_text:(id)normalized_text
{
  v4 = [normalized_text copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setPhoneme_sequence:(id)phoneme_sequence
{
  v4 = [phoneme_sequence copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setPrompts:(id)prompts
{
  v4 = [prompts copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setReplacement:(id)replacement
{
  v4 = [replacement copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setNeural_phoneme_sequence:(id)neural_phoneme_sequence
{
  v4 = [neural_phoneme_sequence copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

@end