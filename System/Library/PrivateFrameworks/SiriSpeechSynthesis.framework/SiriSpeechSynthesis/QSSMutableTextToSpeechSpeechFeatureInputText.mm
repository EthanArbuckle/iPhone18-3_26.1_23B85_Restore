@interface QSSMutableTextToSpeechSpeechFeatureInputText
- (QSSMutableTextToSpeechSpeechFeatureInputText)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setWords:(id)words;
@end

@implementation QSSMutableTextToSpeechSpeechFeatureInputText

- (void)setWords:(id)words
{
  v4 = [words copy];
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

- (QSSMutableTextToSpeechSpeechFeatureInputText)init
{
  v6.receiver = self;
  v6.super_class = QSSMutableTextToSpeechSpeechFeatureInputText;
  v2 = [(QSSMutableTextToSpeechSpeechFeatureInputText *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = dictionary;
  }

  return v2;
}

@end