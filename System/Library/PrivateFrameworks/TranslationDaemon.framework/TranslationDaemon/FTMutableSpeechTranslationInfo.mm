@interface FTMutableSpeechTranslationInfo
- (FTMutableSpeechTranslationInfo)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setRaw_nbest_choices:(id)raw_nbest_choices;
- (void)setRaw_sausage:(id)raw_sausage;
@end

@implementation FTMutableSpeechTranslationInfo

- (FTMutableSpeechTranslationInfo)init
{
  v6.receiver = self;
  v6.super_class = FTMutableSpeechTranslationInfo;
  v2 = [(FTMutableSpeechTranslationInfo *)&v6 init];
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

- (void)setRaw_sausage:(id)raw_sausage
{
  v4 = [raw_sausage copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setRaw_nbest_choices:(id)raw_nbest_choices
{
  v4 = [raw_nbest_choices copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

@end