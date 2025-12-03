@interface QSSMutableTextToSpeechResource
- (QSSMutableTextToSpeechResource)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setLanguage:(id)language;
- (void)setVersion:(id)version;
@end

@implementation QSSMutableTextToSpeechResource

- (void)setVersion:(id)version
{
  v4 = [version copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setLanguage:(id)language
{
  v4 = [language copy];
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

- (QSSMutableTextToSpeechResource)init
{
  v6.receiver = self;
  v6.super_class = QSSMutableTextToSpeechResource;
  v2 = [(QSSMutableTextToSpeechResource *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = dictionary;
  }

  return v2;
}

@end