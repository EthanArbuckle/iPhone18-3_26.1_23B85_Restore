@interface FTMutableTextToSpeechSpeechFeatureInputText
- (FTMutableTextToSpeechSpeechFeatureInputText)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setWords:(id)words;
@end

@implementation FTMutableTextToSpeechSpeechFeatureInputText

- (FTMutableTextToSpeechSpeechFeatureInputText)init
{
  v6.receiver = self;
  v6.super_class = FTMutableTextToSpeechSpeechFeatureInputText;
  v2 = [(FTMutableTextToSpeechSpeechFeatureInputText *)&v6 init];
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

- (void)setWords:(id)words
{
  v4 = [words copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

@end