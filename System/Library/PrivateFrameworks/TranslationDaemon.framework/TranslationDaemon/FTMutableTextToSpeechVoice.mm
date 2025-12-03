@interface FTMutableTextToSpeechVoice
- (FTMutableTextToSpeechVoice)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setGender:(id)gender;
- (void)setIdentifier:(id)identifier;
- (void)setLanguage:(id)language;
- (void)setName:(id)name;
- (void)setQuality:(id)quality;
- (void)setType:(id)type;
- (void)setVersion:(id)version;
@end

@implementation FTMutableTextToSpeechVoice

- (FTMutableTextToSpeechVoice)init
{
  v6.receiver = self;
  v6.super_class = FTMutableTextToSpeechVoice;
  v2 = [(FTMutableTextToSpeechVoice *)&v6 init];
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

- (void)setLanguage:(id)language
{
  v4 = [language copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setGender:(id)gender
{
  v4 = [gender copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setName:(id)name
{
  v4 = [name copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setVersion:(id)version
{
  v4 = [version copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setQuality:(id)quality
{
  v4 = [quality copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setType:(id)type
{
  v4 = [type copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setIdentifier:(id)identifier
{
  v4 = [identifier copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

@end